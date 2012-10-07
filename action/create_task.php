<?php
session_start();
/* action/create_task.php
 */
ini_set("deplay_errors", 1);
include_once("../config.php");	// init $authURL
include_once($webRoot."foundation/status.php");
need_login();
need_be_ader_or_master();
include_once($webRoot."foundation/debug.php");
include_once($webRoot."foundation/price.php");
include_once($webRoot."foundation/switch.php");
$title = "欢迎来到微动力-创建任务";

// 确定请求任务类型
if(isset($_POST['type'])) {
	$type = $_POST['type'];
	if($type != 'sina_follow' && $type != 'sina_forward' && $type != 'sina_review' && $type != 'sina_create') {
        $msg = '赞不支持此类型的任务';
        $to_url = $siteRoot.'create_task.php';
        delay_jump(2, $msg, $to_url, '创建任务页面');
	}
} else {
        $msg = '赞不支持此类型的任务';
        $to_url = $siteRoot.'create_task.php';
        delay_jump(2, $msg, $to_url, '创建任务页面');
}
$type_db = task_type_switch($type, TRUE);
include_once($webRoot."lib/saetv2.ex.class.php");
$c = new SaeTClientV2( WB_AKEY, WB_SKEY, $_SESSION['stoken']);
include_once($webRoot."lib/dbo.class.php");
include_once($dbConfFile);
$dbo = new dbex($dbServs);
$sql = "select realtime_money from user where user_id = '{$_SESSION['uid']}'";
$sql_res = $dbo->getRow($sql);
//if_mysql_fail($dbo, $sql_res, $sql, __FILE__, __LINE__);
$db_realtime_money = $sql_res['realtime_money'];
$config_base_price = intval($_POST['base_price']);
// verify $config_base_price
if( 1 > $config_base_price || 100 < $config_base_price) {
    $msg = 'improper configuration: base_price should between 1 and 100.';
    $to_url = $siteRoot.'create_task.php';
    $to_name = 'create task page';
    delay_jump(3, $msg, $to_url, $to_name);
}
$db_base_price = price_config_to_db($config_base_price);
$amount = intval($_POST['amount']);
if(1 > $amount || 1000 < $amount ) {
    $msg = 'improper configuration: task amount should between 1 and 1000.';
    $to_url = $siteRoot.'create_task.php';
    $to_name = 'create task page';
    delay_jump(3, $msg, $to_url, $to_name);
}
$expire_in = intval($_POST['expire_in']);
if(1 > $expire_in || 300 < $expire_in ) {
    $msg = 'improper configuration: expire_in should between 0 and 300.';
    $to_url = $siteRoot.'create_task.php';
    $to_name = 'create task page';
    delay_jump(3, $msg, $to_url, $to_name);
}
$config_total_price = $config_base_price*$amount*(1+$ader_normal_rate);
$db_total_price = price_config_to_db($config_total_price);
if($db_realtime_money < $db_total_price) {
    $msg = '余额不足，请重新配置任务。';
    $to_url = $siteRoot.'create_task.php';
    $to_name = 'create task page';
    delay_jump(3, $msg, $to_url, $to_name);
}

/*
1. 检查id是否原创/是否合法，否则跳转
2. 获得该微博/用户信息，失败则跳转
3. 扣钱，写入任务数据表，失败则跳转
*/

switch ($type_db) {
    case 1: // sina_forward
        $wid = strval(intval($_POST['id']));
        $uid = $_SESSION['sid']; $page=1; $count=50; $since_id=0; $max_id=0; $base_app=0; $trime_user = 0;
        $feature = 1;   // 0-全部，1-原创，2-图片，3-视频，4-音乐
        $statuses = $c->user_timeline_by_id($uid, $page, $count, $since_id, $max_id, $feature, $trim_user, $baes_app);
        if_weiboapi_fail($statuses);
        foreach($statuses['statuses'] as $status) {
            if("$wid" == $status['id']) {
            // wid 是当前用户的原创微博
                // 扣钱先
                $sql = "update user set realtime_money = realtime_money - $db_total_price where user_id = '{$_SESSION['uid']}' limit 1";
                $num = $dbo->exeUpdate($sql);
                if(1 != $num) {$msg="扣钱失败，跳转。SQL:".$sql; debug($msg, __FILE__, __LINE__);}
                // 扣钱成功，写task表
                $sql = "insert into task (owner_id, publisher_id, type, base_price, amount, status, create_at, expire_in) values('{$_SESSION['uid']}', '{$_SESSION['uid']}', 1, '$db_base_price', '$amount', 1, now(), '$expire_in')";
                $num = $dbo->exeUpdate($sql);
                if(1 != $num) {
                    // 写数据表失败，回滚金钱数据
                    $sql2 = "update user set realtime_money=realtime_money + $db_total_price where user_id = '{$_SESSION['uid']}' limit 1";
                    $num2 = $dbo->exeUpdate($sql2);
                    if(1 != $num2) {
                        $msg = "回滚金钱数据失败，这个比较糟糕。SQL:".$sql2;
                        debug($msg, __FILE__, __LINE__);
                    }
                    $msg = '数据库task表插入出错,SQL:'.$sql;
                    debug($msg, __FILE__, __LINE__);
                }
                $last_task_id = $dbo->lastInsertId();
                $text = $dbo->real_escape_string($status['text']);
                $screen_name = $dbo->real_escape_string($status['user']['screen_name']);
                $location = $dbo->real_escape_string($status['user']['location']);
                $description = $dbo->real_escape_string($status['user']['description']);
                $sql = "insert into task_info_sina_forward values(NULL, '$last_task_id', '{$_SESSION['sid']}', '$wid', '$text', '$screen_name', '$location', '$description', '{$status['user']['profile_image_url']}', '{$status['thumbnail_pic_url']}', '{$status['bmiddle_pic_url']}', '{$status['original_pic_url']}')";
                $num = $dbo->exeUpdate($sql);
                if(1 != $num) {
                    $msg='数据库插入数据出错。SQL:'.$sql;
                    debug($msg, __FILE__, __LINE__);
                    // 回滚金钱数据和task表数据
                    $sql1 = "delete from task where task_id = '$last_task_id' limit 1";
                    $num1 = $dbo->exeUpdate($sql1);
                    $sql2 = "update user set realtime_money = realtime_money + $db_total_price where user_id = '{$_SESSION['uid']}' limit 1";
                    $num2 = $dbo->exeUpdate($sql2);
                    if(1 != $num1 ) {$msg="回滚金钱数据失败，这个比较糟糕。SQL:".$sql1; debug($msg, __FILE__, __LINE__);}
                    if(1 != $num2 ) {$msg="回滚task数据失败，SQL:".$sql2; debug($msg, __FILE__, __LINE__);}
                }
                // 任务插入完毕
                $msg = "恭喜，任务创建成功";
                $to_url = $siteRoot.'task.php'; // 如何跳到指定的任务？设立‘我的任务页面’？
                delay_jump(3, $msg, $to_url, '任务列表');
            }
        }
        // $wid is not 当前用户的原创微博
        $msg = 'improper status: need YuanCHuangWeiBo';
        $to_url = $siteRoot.'create_task.php';
        $to_name = 'create task page';
        delay_jump(3, $msg, $to_url, $to_name);
        break;
    case 2: // sina_follow
        if(!empty($_GET['comment']) && 'by_name' == $_GET['comment']) {
            $name = strval($_POST['screen_name']);  // 任务中要关注的人的新浪屏显名称
            $name_len = strlen($name);
            if($name_len > 45) {
                $msg = '用户名不符合规定';
                $to_url = $siteRoot.'create_task.php';
                $to_name = '任务创建页面';
                delay_jump(3, $msg, $to_url, $to_name);
            }
            $person = $c->show_user_by_name($name);
        } else {
            $pid = strval(intval($_POST['id']));    // person_id 任务中要关注的人的新浪uid
            $pid_len = strlen($pid);
            if( 10 > $pid_len || 12 < $pid_len ) {
                $msg = 'improper user_id: perhaps you did choose correct person.';
                $to_url = $siteRoot.'create_task.php';
                $to_name = '任务创建页面';
                delay_jump(3, $msg, $ot_url, $to_name);
            }
            $person = $c->show_user_by_id($pid);
        }
        if('20003' == $person['error_code']) {
            $msg = '您指定的用户不存在！';
            $to_url = $siteRoot.'task.php';
            $to_name = '任务列表';
            delay_jump(3, $msg, $to_url, $to_name);
        }
        if_weiboapi_fail($person);
        // 欲关注的用户存在，扣钱先
        $sql = "update user set realtime_money = realtime_money - $db_total_price where user_id = '{$_SESSION['uid']}' limit 1";
        $num = $dbo->exeUpdate($sql);
        if(1 != $num) {$msg="扣钱失败，跳转。SQL:".$sql; debug($msg, __FILE__, __LINE__);}
        // 扣钱成功，写task表
        $sql = "insert into task (owner_id, publisher_id, type, base_price, amount, status, create_at, expire_in) values('{$_SESSION['uid']}', '{$_SESSION['uid']}', 2, '$db_base_price', '$amount', 1, now(), '$expire_in')";
        $num = $dbo->exeUpdate($sql);
        if(1 != $num) {
            // 写数据表失败，回滚金钱数据
            $sql2 = "update user set realtime_money = realtime_money + $db_total_price where user_id = '{$_SESSION['uid']}' limit 1";
            $num2 = $dbo->exeUpdate($sql2);
            if(1 != $num2) {
                $msg = "回滚金钱数据失败，这个比较糟糕。SQL:".$sql2;
                debug($msg, __FILE__, __LINE__);
            }
            $msg = '数据库task表插入出错,SQL:'.$sql;
            debug($msg, __FILE__, __LINE__);
        }
        $last_task_id = $dbo->lastInsertId();
        $screen_name = $dbo->real_escape_string($person['screen_name']);
        $location = $dbo->real_escape_string($person['location']);
        $description = $dbo->real_escape_string($person['description']);
        $sql = "insert into task_info_sina_follow values(NULL, '$last_task_id', '$pid', '$screen_name', '{$person['friends_count']}', '{$person['followers_count']}', '{$person['statuses_count']}', '{$person['profile_image_url']}', '{$person['avatar_large']}', '$location', '$description')";
        $num = $dbo->exeUpdate($sql);
        if(1 != $num) {
            $msg='数据库插入数据出错。SQL:'.$sql;
            debug($msg, __FILE__, __LINE__);
            // 回滚金钱数据和task表数据
            $sql1 = "delete from task where task_id = '$last_task_id' limit 1";
            $num1 = $dbo->exeUpdate($sql1);
            $sql2 = "update user set realtime_money = realtime_money + $db_total_price where user_id = '{$_SESSION['uid']}' limit 1";
            $num2 = $dbo->exeUpdate($sql2);
            if(1 != $num1 ) {$msg="回滚金钱数据失败，这个比较糟糕。SQL:".$sql1; debug($msg, __FILE__, __LINE__);}
            if(1 != $num2 ) {$msg="回滚task数据失败，SQL:".$sql2; debug($msg, __FILE__, __LINE__);}
        }
        // 任务插入完毕
        $_SESSION['user_realtime_money'] -= price_db_to_user($db_total_price);
        $msg = "恭喜，任务创建成功";
        $to_url = $siteRoot.'task.php'; // 如何跳到指定的任务？设立‘我的任务页面’？
        delay_jump(3, $msg, $to_url, '任务列表');


        break;
    default:
        $msg = '暂不支持该类型';
}
?>
