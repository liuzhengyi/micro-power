<?php
session_start();
ini_set("display_errors", 1);
/* test.php
 * 一些对API的随便测试
 */
	include_once("config.php");
	include_once("lib/saetv2.ex.class.php");
	include_once("foundation/debug.php");
    include_once($webRoot."lib/dbo.class.php");
    include_once($dbConfFile);
    $dbo = new dbex($dbServs);
	$c = new SaeTClientV2( WB_AKEY, WB_SKEY, $_SESSION['stoken']);


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
    // 根据uid获得所发微博的id
    // 好像没有在saelib中找到对应这个api的封装啊 难道要直接使用api？
    $uid = 1941007953;
    echo '<h2>根据uid获取所发微博的id uid: '.$uid.'</h2>';
    $params = array();
    $params['uid'] = $uid;
    $ids = $c->oauth->get('statuses/user_timeline/ids', $params);
    print_r($ids['statuses']);
    // end of 根据uid获得所发微博的id
    */

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

    /*
    // 我的最新微博
	echo '<h2>我的最新微博</h2>';
	$weibos = $c->user_timeline_by_id($_SESSION['sid']);
	if_weiboapi_fail($weibos);
	echo '<ul>';
	if(isset($weibos['error_code'])) {
		echo '<h3 class="err_msg">error occured: '.$weibos['error'].'</h3>';
	}
	foreach($weibos['statuses'] as $v) {
		echo "<li>{$v['idstr']} {$v['text']}</li>";
	}
	echo '</ul>';
	echo '<hr />';
    // 我的最新微博
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
	$sname = '夏榕_戏说';
    $sid = 2172508334;
	echo '<h2>根据screen_name获取关注列表 name:'.$sname.'</h2>';
//	$friends = $c->friends_by_name($sname, 0, 50); echo '<ul>';
	$friends = $c->friends_by_id($sid, 0, 200); echo '<ul>';
	if_weiboapi_fail($friends,__FILE__, __LINE__);
	if(isset($friends['error_code'])) {
		echo '<h3 class="err_msg">error occured: '.$friends['error'].'</h3>';
	}
	echo '<ol>';
	foreach($friends['users'] as $user) {
//		echo '<li>'.$user['idstr'].' --- '.$user['screen_name'].'</li>';
        $user_idstr = $dbo->real_escape_string($user['idstr']);
        $user_screen_name = $dbo->real_escape_string($user['screen_name']);
        $user_location = $dbo->real_escape_string($user['location']);
        $user_icon_url = $dbo->real_escape_string($user['avatar_large']);
		$sql = "INSERT INTO `task` (task_id, owner_id, publisher_id, task_type, task_sina_uid, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url)VALUES (NULL, 1, 1, 'follow', '$user_idstr', 70, 100, 39, '$user_screen_name', '$user_location', '$user_icon_url');";
        echo "<p>$sql</p>";
	} echo '</ol><hr />';
    // 根据screen name获取关注列表
    */








/*
//	$uid = 1941007953;
	$uid = 2300716454; // 微小说
//	$uid = 2881802930;
	echo '<hr /><h1>show_user_by_id('.$uid.')</h1>';
	$res = $c->show_user_by_id($uid);
	foreach($res as $k => $v) {
		echo "<br />$k -- $v";
	}
	echo '<hr />';

//	$id = 11488058256;
//	$id = 11884058256;
//	$id = 11011011011; // 汗 汗 汗 
	$wid = 12312312312; // 为啥那么多人自杀
	echo '<hr /><h1>show_status('.$wid.')</h1>';
	$res = $c->show_status($wid);
	foreach($res as $k => $v) {
		echo "<br />$k -- $v";
	}


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

	$sname = '夏榕_戏说';
    $sid = 2172508334;
    // 根据screen——name 或 sina——uid获得最新微博和微博的转发评论情况
    print_latest_weibo_by_id($sid, $c);

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


?>
