<?php
session_start();
ini_set("display_errors", 1);
/* test.php
 * 对API的一些包装测试
 */
	include_once("config.php");
	include_once("lib/saetv2.ex.class.php");
	include_once("foundation/debug.php");
    include_once($webRoot."lib/dbo.class.php");
    include_once($dbConfFile);
    $dbo = new dbex($dbServs);
    $stoken = $dbo->getRow('select sina_token as st from user_info_sina where user_id = 8 limit 1');
	$c = new SaeTClientV2( WB_AKEY, WB_SKEY, $stoken['st']);

    // 发布一条微博
    function post_message($c, $msg)
    {
        $res = $c->update($msg);
        var_dump($res);
    }

    // 查询当前用户最新转发的微博列表
    function get_repost_by_me($c)
    {
//        $repost_weibos = $c->repost_by_me(1,50,3482583004513831,3482583004642586);
        $repost_weibos = $c->repost_by_me(1,200);
        var_dump($repost_weibos);
        foreach($repost_weibos['reposts'] as $weibo ) {
//        foreach($repost_weibos as $weibo ) {
            var_dump($weibo['retweeted_status']['id']);
            var_dump($weibo['retweeted_status']['text']);
            echo '<hr />';
        }

    }

    // 根据uid获得所发微博的ids
    // 好像没有在saelib中找到对应这个api的封装啊 难道要直接使用api？
    function get_user_timeline_ids($uid, $c)
    {
        echo '<h2>根据uid获取所发微博的id uid: '.$uid.'</h2>';
        $params = array();
        $params['uid'] = $uid;
        $params['base_app'] = 0;
        $ids = $c->oauth->get('statuses/user_timeline/ids', $params);
        print_r($ids['statuses']);
    }

    // 根据uid获得用户最新发布的微博
    // 可以限定原创，或通过本应用发布等条件
    function get_user_timeline($sid, $c, $dbo)
    {
        echo '<h2>获取用户最新微博</h2>';
        //$weibos = $c->user_timeline_by_id($sid);      // 无限制
	    $weibos = $c->user_timeline_by_id($sid, 1, 50, 0, 0, 1, 0, 0);  // 限定原创
        if_weiboapi_fail($weibos);
        echo '<ul>';
        if(isset($weibos['error_code'])) {
            echo '<h3 class="err_msg">error occured: '.$weibos['error'].'</h3>';
        }
        foreach($weibos['statuses'] as $v) {
            // 输出适合阅读的微博数据
            // echo "<li>{$v['idstr']} {$v['text']} by: {$v['user']['screen_name']}</li>";
            // 输出适合输入数据库do_task表的SQL数据
            $screen_name = $dbo->real_escape_string($v['user']['screen_name']);
            $profile_image = $dbo->real_escape_string($v['user']['profile_image_url']);
            $wid = $v['id'];
            $thumb_pic = $dbo->real_escape_string($v['thumbnail_pic']);
            $middle_pic = $dbo->real_escape_string($v['bmiddle_pic']);
            $original_pic = $dbo->real_escape_string($v['original_pic']);
            $text = $dbo->real_escape_string($v['text']);
            echo "insert into task (owner_id, publisher_id, task_type, task_offer, task_amount, task_finish_amount, task_status) values (2, 3, 1, 500, 300, 10, 1);<br />";
            echo "insert into task_info_sina_forward (task_id, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url) values(last_insert_id(), '$sid', '$wid', '$text','$screen_name', NULL, NULL, '$profile_image', '$thumb_pic', '$middle_pic', '$original_pic');<br />";
            echo '</p>';
        }
        echo '</ul>'; echo '<hr />';
    }

    // 批量获取多个用户的最新微博，sae中封装有此接口，但api文档中没有
    // sae 接口 timeline_batch_by_id($uid, $page=1, $count=50, $feature=0, $base_app=0)
    function get_user_timeline_batch_by_id($sids, $c)
    {
        $timeline_batch = $c->timeline_batch_by_id($sids, 1, 50, 0, 1);
//        $timeline_batch = $c->timeline_batch_by_id();
        var_dump($timeline_batch);
    }

    // 返回一条原创微博的最新转发微博的id
    // sae中没有这个接口，自己写吧
    function get_repost_timeline_ids($wid, $c, $since_id = 0, $max_id = 0, $count = 200, $page = 1, $filter_by_author = 0)
    {
//        $c->id_format($wid);

        $params = array();
        $params['id'] = $wid;
        if($since_id) {
//            $c->id_format($since_id);
            $params['since_id'] = $since_id;
        }
        if($max_id) {
//            $c->id_format($max_id);
            $params['max_id'] = $max_id;
        }
        $params['count'] = $count;
        $params['page'] = $page;
        $params['filter_by_author'] = intval($filter_by_author);
//        $ids = $c->request_with_pager('statuses/repost_timeline/ids', $page, $count, $params);
        $ids = $c->oauth->get('statuses/repost_timeline/ids', $params);
        var_dump($ids);
    }

    // 获取用户的粉丝uid列表
    // api friendships/followers/ids
    // sae 接口 followers_ids_by_id($uid, $cursor=0, $count=50);
    // $count 一次返回的数据条数，最多为5000 总的返回数据最多也是5000，最近五千，越晚越靠前
    function get_followers_ids_by_id($sid, $c)
    {
        $ids = $c->followers_ids_by_id($sid, 0, 50);
        var_dump($ids);
    }

    /*
     *  查询当前登录用户的API访问频率限制情况
    */
    function my_api_limit($c)
    {
        $status = $c->rate_limit_status();
        if_weiboapi_fail($status);
        var_dump($status);
    }

    // 返回最新的公共微博
    /*
    echo '<h2>最新的公共微博</h2>';
    $api_res = $c->public_timeline();
    if_weiboapi_fail($api_res);
//    print_r($api_res);
    foreach($api_res['statuses'] as $weibo) {
//        echo "<p>id:{$weibo['idstr']}. text:{$weibo['text']}. by:{$weibo['user']['screen_name']}</p>";
        $weibo_user_screen_name = $dbo->real_escape_string($weibo['user']['screen_name']);
        $weibo_user_id = $dbo->real_escape_string($weibo['user']['id']);
        $weibo_user_profile_image_url = $dbo->real_escape_string($weibo['user']['profile_image_url']);
        $weibo_id = $dbo->real_escape_string($weibo['id']);
        $weibo_thumbnail_pic = $dbo->real_escape_string($weibo['thumbnail_pic']);
        $weibo_bmiddle_pic_url = $dbo->real_escape_string($weibo['bmiddle_pic_url']);
        $weibo_text = $dbo->real_escape_string($weibo['text']);
        // 输出相应sql语句
        //$sql = "<p>INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_sina_wid, task_offer, task_amount, task_finish_amount, task_screen_name, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(NULL, 1, 1, 'forward', $weibo_user_id, $weibo_id, 60, 123, 121, '$weibo_user_screen_name', '$weibo_user_profile_image_url', '$weibo_thumbnail_pic', '$weibo_bmiddle_pic_url', '$weibo_text');</p>";
        //echo $sql;
        // 输出简单信息
        $line = $weibo_text.' by: '.$weibo_user_screen_name;
        echo $line.'</p>';
        // 填充weiboid
        $ids .= $weibo_id.',';

    }
    */
    // end of 返回最新的公共微博
    

    /*
	// 根据微博id获取微博内容
	echo '<h2>根据微博id获取微博内容</h2>';
//	$wid = 11142488790;
	$wid = 10101010101;
	$weibo = $c->show_status($wid);
	if_weiboapi_fail($weibo);
	$text = $weibo['text'];
	echo "<p>wid:$wid</p><p>text:$text</p><p><a href=\"action/forward.php?wid=$wid\">转发</a></p>";
	echo '<hr />';
	// end of 根据微博id获取微博内容
    */


    // 根据screen——name 或 sina——uid获得最新微博和微博的转发评论情况
    function print_latest_weibo_by_id($sid, $c)
    {
//	echo '<h2>根据sina_uid获取最新微博 及转发评论情况 sina_uid:'.$sid.'</h2>';
        unset($weibos);
        unset($weibo_shows);
	    $weibos = $c->user_timeline_by_id($sid);
	    if_weiboapi_fail($weibos);
        $weibo_amount = count($weibos['statuses']);
//        echo 'weibo_amount: '.$weibo_amount.'</p>';
        unset($ids);
        $weibo_shows = array();
        foreach($weibos['statuses'] as $v) {
            $weibo_show['idstr'] = $v['idstr'];
            $weibo_show['text'] = $v['text'];
            $ids .= $v['idstr'].',';
            $weibo_shows[] = $weibo_show;
        };
        $params = array();
        $params['ids'] = $ids;
        $weibo_counts = $c->oauth->get('statuses/count', $params);
        if_weiboapi_fail($weibo_counts);
        unset($total_reposts);
        unset($total_comments);
        $weibo_count_shows = array();
        foreach($weibo_counts as $weibo_count) {
            $weibo_count_show['comments'] = $weibo_count['comments'];
            $weibo_count_show['reposts'] = $weibo_count['reposts'];
            $weibo_count_shows[] = $weibo_count_show;
            $total_reposts += $weibo_count['reposts'];
            $total_comments += $weibo_count['comments'];
        }
        $aver_reposts = $total_reposts/$weibo_amount;
        $aver_comments = $total_comments/$weibo_amount;
//        echo '<h3>average reposts: '.$aver_reposts.'</h3>';
//        echo '<h3>average comments: '.$aver_comments.'</h3>';
        // 输出格式化数据：
        echo "<tr><td> $sid </td><td> $weibo_amount </td><td> $aver_reposts </td><td> $aver_comments </td></tr>";
        /*
        echo '<ol>';
        for($i=0; $i<$weibo_amount; $i++) {
            echo '<li>wid:'.$weibo_shows[$i]['idstr'].'<br />text:'.$weibo_shows[$i]['text'].'<br />comments:'.$weibo_count_shows[$i]['comments'].' reposts:'.$weibo_count_shows[$i]['reposts'].'</li>';
        } echo '</ol>';
        */
    }

//	$weibos = $c->user_timeline_by_name($sname); echo '<ol>';
    // 获取weibo转发/评论数

    /*
    // 根据screen name获取关注列表
    */
function get_user_friends_by_name($name, $c, $dbo)
{
	echo '<h2>根据sina_uid获取关注列表 uid:'.$sid.'</h2>';
    $friends = $c->friends_by_name($name, 0, 200);
    if_weiboapi_fail($friends, __FILE__, __LINE__);
	foreach($friends['users'] as $user) {
        $idstr = $dbo->real_escape_string($user['idstr']);
        $screen_name = $dbo->real_escape_string($user['screen_name']);
        $friends_count = $dbo->real_escape_string($user['friends_count']);
        $followers_count = $dbo->real_escape_string($user['followers_count']);
        $weibo_count = $dbo->real_escape_string($user['statuses_count']);
        $profile_image_url = $dbo->real_escape_string($user['profile_image_url']);
        $avatar_large_url = $dbo->real_escape_string($user['avatar_large']);
        $location = $dbo->real_escape_string($user['location']);
        $description = $dbo->real_escape_string($user['description']);
		$sql_basic = "INSERT INTO `task` (owner_id, publisher_id, task_type, task_offer, task_amount, task_finish_amount, task_status )VALUES (1, 1, 2, 700, 100, 39, 1);";
        $sql_advance = "insert into `task_info_sina_follow` (task_id, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description) values (last_insert_id(), '$idstr', '$screen_name', '$friends_count', '$followers_count', '$weibo_count', '$profile_image_url', '$avatar_large_url', '$location', '$description');";
        echo "<p>$sql_basic<br />$sql_advance</p>";
	}
}


/*
	$uid2 = 1941007953;
//	$uid2 = 2300716454; // 微小说
	echo '<hr /><h1>friends_by_id('.$uid2.')</h1>';
	$res = $c->friends_by_id($_SESSION['sid']);
	echo '<h3>我已经关注的人</h3><ul>';
	foreach($res['users'] as $user) {
		$followed[] = $user['id'];
		echo "<li>{$user['screen_name']}(----------uid:{$user['id']})</li>";
	}
	echo '</ul>';
	$res= $c->friends_by_id($uid2);
	foreach($res['users'] as $user) {
		echo '<h2>user: '.$user['screen_name'].'</h2>';
		if(in_array($user["id"], $followed, true)) {
			echo '<h3><a href="action/unfollow.php?id='.$user['id'].'">取消关注</a></h3>';
		} else {
			echo '<h3><a href="action/follow.php?id='.$user['id'].'">关注ta</a></h3>';
		}
		foreach($user as $k => $v) {
			echo "<br />$k -- $v";
		}
	}
*/

// 测试50个用户的最新50条微博的平均转发/评论数
// 好费API啊！！！
/*
$sql = 'select task_sina_uid from task where task_type="follow" limit 50';
$uids = $dbo->getRs($sql);
echo '<table><tr><th>微博id</th><th>最新微博数量</th><th>每条微博平均被转发数</th><th>每条微博平均被评论数</th></tr>';
foreach($uids as $uid) {
    print_latest_weibo_by_id($uid['task_sina_uid'], $c);
}
echo '</table>';
*/

// ========================================
// 从这里开始调用上面封装的函数
// ========================================

// 获取当前用户最新转发的微博
//get_repost_by_me($c);

// 根据uid获得用户最新发布的微博的ids
$uid = 1941007953;  // me
//get_user_timeline_ids($uid, $c);

// 根据uid获得用户最新发布的微博
$uid = 1193111400;  // 周国平
$uid = 1974204995;  // 如洗
//get_user_timeline($uid, $c, $dbo);

// 获取一条原创微博的最新转发微博的id
$wid = 3485497084616798;    // by 周国平
$wid = 3483238506588417;    // by ruxi
//get_repost_timeline_ids($wid, $c);

// 根据screen_name 或 sina_uid获得最新微博和微博的转发评论情况
$sname = '夏榕_戏说';
$sid = 2172508334;
//print_latest_weibo_by_id($sid, $c);

// 批量获取多个用户的最新微博，sae中封装有此接口，但api文档中没有
//  注意：这是一个高级接口，需要申请才能使用
//function get_user_timeline_batch_by_id($sids, $c) {}
//$sids = '1941007953,2878046960';
//get_user_timeline_batch_by_id($sids, $c);

// 获取用户的粉丝列表uid
// api friendships/followers/ids
// sae 接口 followers_ids_by_id($uid, $cursor=0, $count=50);
$sid = 2172508334;
//get_followers_ids_by_id($sid, $c);

// 查询当前登录用户的API访问频率限制情况
//my_api_limit($c);

// 发布一条微博
//$msg = '风真大！';
//post_message($c, $msg);


// 根据user sid 获取用户关注列表
$sid = 318879995;
$name = 'ELLE中文网Mok';
//get_user_friends_by_name($name, $c, $dbo);
?>
<?php
// 一些数据：
//  gipsa   --  1941007953;
//  lisa    --  2878046960;
/// 鲁国平先生 -- 1142648704
//  周国平  --  1193111400
//  如洗ruxi    --  1974204995
//  森女风    --  2172508334
//  孙燕姿  --  1937439635
//  ELLE中文网Mok   --  318879995
?>
