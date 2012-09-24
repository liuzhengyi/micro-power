<?php
/*	$webRoot/tool/get_data_sina_user_info.php
 * 本文件抓取用户信息 备用
 * 本文件测试期间使用，每个时间单位（目前是十五分钟）只给每个用户留10个api使用额，反正都是测试用户嘛
 */
include_once("/home/evan/vdongli/config.php");
include_once($webRoot.'lib/saetv2.ex.class.php');
include_once($webRoot.'lib/dbo.class.php');
include_once($dbConfFile);  // init $dbServs
include_once($webRoot.'foundation/debug.php');

$dbo = new dbex($dbServs);
$nick_name = 'micro-power01@sina';
$nick_name = 'gipsa@sina';
$nick_name = '王利洁营养师@sina';
$token = get_token_by_name($dbo, $nick_name);
$c = new SaeTClientV2( WB_AKEY, WB_SKEY, $token);
    $api_left = api_left($c);
    if($api_left['user'] < 3) {
        $c = change_token($c, $dbo, 3, false, false);
    }
// $sid = 1193111400;  //源用户 周国平 后面抓取的用户都是他的粉丝 这么做有弊端
//  种子用户
//  ELLE中文网主编Helen  104091 1681200380
//  ELLE中文网Mok   98286       1649105911
//  摩羯Sherry      59290       1663465950
//  ELLE网站小f姐姐 56312       1497515352
$source_sid = array('1497515352', '1663465950', '1649105911', '1681200380');
foreach($source_sid as $sid) {
    $ids = get_followers_list($c, $sid);
    if(!$ids) {
        $msg = "当前token耗尽api，无法获取粉丝id列表\n";
    //    echo $msg;
        write_line($msg);
    }
    foreach($ids as $id_num=>$id_val) {
        if($dbo->checkExist($id_val, 'sid', 'data_sina_user_info')) {
            continue;
        }
            //测试当前token剩余api，ip剩余api，若ipapi不足，睡眠至下一个小时
            //    若充足，抓取一个用户的数据，然后循环
            //    若不足更换token，同时查看token过期时间，若少于2小时，邮件提醒我
            //        更换token后，循环
        // 检测当前ip剩余api hits
        $api_left = api_left($c);
        $msg = "api_left[{$api_left['user']}, {$api_left['ip']}].\tid_num: $id_num\t";    // debug
    //    echo $msg;
        write_line($msg);
        if($api_left['ip'] < 50) { // 此处应该使用10*user_count
            $time = date('H:i:s M j');
            $msg = "ip remain hits lower than 50({$api_left['ip']}), exit.( at $time )\n";
    //        echo $msg;
            write_line($msg);
            exit();
        }
        // 检测当前user剩余api hits
        $api_left = api_left($c);
        if($api_left['user'] < 10) {
            $c = change_token($c, $dbo, 10, true, true);
        }
        // 抓取用户信息
        $user_info = get_user_info($c, $id_val, $sid); // 以数组的形式返回数据
        write_info($user_info, $dbo); // 写数据库，或者别的
        sleep(1);   // 假定token充足，一个ip一小时抓333个用户信息，每小时前10min后10min均睡眠。
        // 目前的情况是这样的：
        // 每十五分钟运行一次本文件，每次运行三五分钟（视token数量而定）
        // 在这之间，api限制就已经重置了。
    }
}
$sub = '微动力爬虫提示';
$msg = '种子用户的粉丝抓完了，请换一批种子用户，或者从cron中清除我';
mail_to_master($msg, $sub);

/*
 *  发一封邮件给网站管理员，可以自定义主题和正文
 */
function mail_to_master($body_msg, $subject = '提示')
{
    include_once($webRoot.'mail/class-phpmailer.php');
    include_once($webRoot.'mail/class-smtp.php');

    $web_master = 'gipsaliu@gmail.com';

    $mail = new PHPMailer();
    $mail->IsSmtp();
    $mail->CharSet = 'UTF-8';
    $mail->AddAddress("$web_master");
    $mail->Body = $body_msg;
    $mail->From = 'v_dong_li@163.com';
    $mail->FromName = '微动力';
    $mail->Subject = $subject;
    $mail->Host = 'smtp.163.com';
    $mail->SMTPAuth = TRUE;

    $mail->Username = 'v_dong_li@163.com';
    $mail->Password = 'v#dong#li$163';

    $mail->Send();
}

/*
 *  负责写数据库，尚未完成
 *  以输出数据模拟
 */
function write_info($info, $dbo)
{
//    var_dump($info);
    if($dbo->checkExist($info['sid'], 'sid', 'data_sina_user_info')) {
        return ;
    }    
    $info['screen_name'] = $dbo->real_escape_string($info['screen_name']);
    $info['location'] = $dbo->real_escape_string($info['location']);
    $info['description'] = $dbo->real_escape_string($info['description']);
    $info['verified_reason'] = $dbo->real_escape_string($info['verified_reason']);
    $sql = "insert into data_sina_user_info (sid, screen_name, location, description, gender, followers_count, friends_count, statuses_count, favourites_count, verified, verified_reason, created_at, max_reposts, max_comments, aver_reposts, aver_comments, from_sid, get_time) values('{$info['sid']}', '{$info['screen_name']}', '{$info['location']}', '{$info['description']}', '{$info['gender']}', '{$info['followers_count']}', '{$info['friends_count']}', '{$info['statuses_count']}', '{$info['favourites_count']}', '{$info['verified']}', '{$info['verified_reason']}', '{$info['created_at']}', '{$info['max_reposts']}', '{$info['max_comments']}', '{$info['aver_reposts']}', '{$info['aver_comments']}', '{$info['from_sid']}', '{$info['get_time']}')";
    $num = $dbo->exeUpdate($sql);
    $time = date('H:i:s M j');
    if(1 != $num) {
        $msg = 'one record faild. at:'."$time\n \$sql: $sql. \n";
//        echo $msg;
        write_line($msg);
    } else {
        $msg = 'one record in. at:'."$time\n";
//        echo $msg;
        write_line($msg);
    }

}
/*
 *  负责找到一个有充足api剩余的token，若没有则等待，同时负责通知快到期的token
 *  目前模拟，直接返回原$c
 *  尚未完成。
 */
function change_token($c, $dbo, $bottom=10, $mail=true, $write=true)
{
    $sql = "select sina_token as st, unix_timestamp(token_update_at) as tua, token_expire_in as tei, user_id as uid from user_info_sina where sina_token IS NOT NULL limit 10";
    $sql_res = $dbo->getRs($sql);
    while(1) {
        foreach($sql_res as $res) {
            $token = $res['st'];
            $uid = $res['uid'];
            $tua = $res['tua'];
            $tei = $res['tei'];
            $now = time();
            $left_time = $tua + $tei - $now;
            if($left_time < 3600 && $left_time > 2650) {
                $msg = "user $uid 's token will expire in an hour.";
                $sub = "微动力提醒";
                if($mail) {
                    mail_to_master($msg, $sub);
                } else {
                    $write_msg = "$sub: $msg \n";
                    write_line($write_msg);
                }
            }
//            var_dump($token);   // debug
            $c = new SaeTClientV2( WB_AKEY, WB_SKEY, $token);
            $api_left = api_left($c);
//            var_dump($api_left);    // debug
            if($api_left['user'] > $bottom) {
                $msg = 'token changed, user_id:'."$uid\n";
//                echo $msg;
                if($write) {
                    write_line($msg);
                }
                return $c;
            }
        }
        // 当前没有可用token了
        $time = date('H:i:s M j');
        $msg = "no avilable token, exit.(at $time )\n";
//        echo $msg;
        write_line($msg);
        exit();
    }
}
/*
 * 获取一个用户的信息
 * 获取以下信息：
 * 用户所在地，用户描述，性别，粉丝数，关注数，微博数，收藏数，是否认证，认证原因，注册时间
 * 最近微博中被转发最多的次数，被评论最多的次数，平均被转发次数，平均被评论次数，
 * 抓取时间
 * 以数组形式返回
 */
function get_user_info($c, $sid, $from_sid)
{
    $user = array();
    $user_info = $c->show_user_by_id($sid); // 获取用户基本信息
    if_weiboapi_fail_cmd($user_info,  __LINE__, true);
    $user['sid'] = $sid;
    $user['screen_name'] = $user_info['screen_name'];
    $user['location'] = $user_info['location'];
    $user['description'] = $user_info['description'];
    $user['gender'] = $user_info['gender'];
    $user['followers_count'] = $user_info['followers_count'];
    $user['friends_count'] = $user_info['friends_count'];
    $user['statuses_count'] = $user_info['statuses_count'];
    $user['favourites_count'] = $user_info['favourites_count'];
    $user['verified'] = $user_info['verified'];
    $user['verified_reason'] = $user_info['verified_reason'];
    $user['created_at'] = $user_info['created_at'];
    // 原创微博数，优质粉丝列表，优质粉丝数，有效粉丝数
    // 这些数据无法准备获取

    // 最新微博平均被转发次数/平均被评论次数 和 最高转发次数/评论次数
    $weibos = $c->user_timeline_by_id($sid);    // 获取用户的最新微博
    if_weiboapi_fail_cmd($weibos,  __LINE__);
    $weibo_amount = count($weibos['statuses']);
    unset($ids);
    foreach($weibos['statuses'] as $weibo) {
        $ids .= $weibo['id'].',';   // 注意，如果系统字长不够，此处有可能无法处理这个数字型的id
    }
    $params = array();
    $params['ids'] = $ids;
    $weibo_counts = $c->oauth->get('statuses/count', $params);  // 批量获取指定微博的转发/评论数
    if_weiboapi_fail_cmd($weibo_counts,  __LINE__);
    if(0 != $weibo_amount) {    // 发过微博
        $max_reposts = 0;
        $max_comments = 0;
        foreach($weibo_counts as $weibo_count) {
            $max_reposts = $weibo_count['reposts']>$max_reposts ? $weibo_count['reposts'] : $max_reposts;
            $max_comments = $weibo_count['comments']>$max_comments ? $weibo_count['comments'] : $max_comments;
            $total_reposts += $weibo_count['reposts'];
            $total_comments += $weibo_count['comments'];
        }
        $user['max_reposts'] = $max_reposts;
        $user['max_comments'] = $max_comments;
        $user['aver_reposts'] = 0 == $total_reposts ? 0 : ($total_reposts / $weibo_amount);
        $user['aver_comments'] = 0 == $total_comments ? 0 : ($total_comments / $weibo_amount);
    } else {                    // 没有微博
        $user['max_reposts'] = 0;
        $user['max_comments'] = 0;
        $user['aver_reposts'] = 0;
        $user['aver_comments'] = 0;
    }
    $user['from_sid'] = $from_sid;
    $user['get_time'] = date('Y-m-d H:i:s');
    return $user;
}
/*
 * 处理api调用出错，命令行版
 */
function if_weiboapi_fail_cmd($api_res, $line=null, $out_put=FALSE)
{
    if(isset($api_res['error_code'])) {
        if($out_put) {
            $msg = "id:$sid\terror_code:{$api_res['error_code']}\terror:{$api_res['error']}\t$line\n";
//            echo $msg;
            write_line($msg);
        }
    }
    if(!$api_res && $out_put) {
        $msg = "weibo api returns nothing.\n";
//        echo $msg;
        write_line($msg);
    }
}
/*
 * 获取当前所用token剩余api量
 */
function api_left($c)
{
    $api_left = $c->rate_limit_status();
//    echo "update:{$api_left['api_rate_limits'][0]['remaining_hits']}/{$api_left['api_rate_limits'][0]['limit']}\tcomments:{$api_left['api_rate_limits'][1]['remaining_hits']}/{$api_left['api_rate_limits'][1]['limit']}\tcreate:{$api_left['api_rate_limits'][3]['remaining_hits']}/{$api_left['api_rate_limits'][3]['limit']}\tip:{$api_left['api_rate_limits'][4]['remaining_hits']}/{$api_left['api_rate_limits'][4]['limit']}\t";
//    echo "ip:{$api_left['remaining_ip_hits']}/{$api_left['ip_limit']}\tuser:{$api_left['remaining_user_hits']}/{$api_left['user_limit']}\n";
    $left = array();
    $left['ip'] = $api_left['remaining_ip_hits'];
    $left['user'] = $api_left['remaining_user_hits'];
    return $left;
}
/*
 *  从数据库中取出一个token
 */
function get_token_by_name($dbo, $nick_name)
{
    $sql = "select sina_token as st from user join user_info_sina using(user_id) where nick_name = '$nick_name' limit 1";
    $token = $dbo->getRow($sql);
    return $token['st'];
}
/*
 *  写一行数据到文件
 */
function write_line($line, $file='/home/evan/vdongli/tool/get_data_sina_user_info.log')
{
    $fp = fopen($file, 'a+');
    fwrite($fp, $line);
    fclose($fp);
}
/*
 * 获取给定sina_uid的粉丝列表，5000个
 */
function get_followers_list($c, $sid)
{
    $ids = $c->followers_ids_by_id($sid, 0, 5000);
    if_weiboapi_fail_cmd($ids, __LINE__, true);
    return $ids['ids'];
}

// 一些数据
//  gipsa   --  1941007953;
//  lisa    --  2878046960;
/// 鲁国平先生 -- 1142648704
//  周国平  --  1193111400
//  如洗ruxi    --  1974204995
//  森女风    --  2172508334
/*
 测试帐号1
 登录名 n280062@rtrtr.com
 身份证 21032319880108407x
 昵称 micro-power01
 pass asmicro-power01
 
 微传播邮箱验证链接
 http://www.weichuanbo.com/User/Auth/check/vc/MDEyMzQ1Njc4OV8xODA4NTJfYWJjZGVmZ2hpZw==
 */
?>
