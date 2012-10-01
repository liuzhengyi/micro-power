<?php
/*
    注意！！
    此文件不应该放在用户可以访问的web目录下。
    应该有服务器自动定时运行。
*/
/*
检查转发任务
draft 4:
            选取一个任务，将检验所有做过该任务的人的情况。
            从数据库do_task中获取做过该任务的用户做该任务时产生的id/mid和用户id，
            使用repost_timeline/ids获取该任务中原创微博的最新转发微博的mid，
            比对两者，不在后者中的前者被认为是删除了。
            note:
                repost_timeline/ids只能获取原创微博的转发id，
                这意味着我们需要保证我们提供的转发任务中的微博都是原创微博（这个按说并不难）。
                还有一个问题，如果这条原创微博在我们平台之外就被转发了很多次，也会给我们的检测
                带来困难，不过这种情况发生的概率很小。

注意：
    目前测试版，让用户自己点击检测接口来检测。
*/
require_once('../config.php');
require_once($webRoot.'lib/saetv2.ex.class.php');
require_once($webRoot.'lib/dbo.class.php');
require_once($webRoot."foundation/status.php");
require_once( $dbConfFile );		// init $dbServs
require_once( $webRoot.'foundation/debug.php');

if(isset($_GET['id'])) {
    $task_id = intval($_GET['id']);
    if(empty($task_id)) {
        header($siteRoot.'index.php');
        exit();
    }
} else {
    $task_id = 1;
}
// 按照任务检查转发任务，测试版
// 从数据库中取出task_id标识的转发任务的mid（同id）
$dbo = new dbex($dbServs);
echo 'task_id: '.$task_id.'(forward)';
//$sql = "select task_sina_wid, task_text from task where task_id = $task_id and type = 'forward' limit 1";
$sql = "select sina_wid, text from task_info_sina_forward where task_id = '$task_id' limit 1";
$sql_res = $dbo->getRow($sql);
if(!$sql_res || 0 === count($sql_res)) {
    echo "不存在该任务或该任务不是转发任务，对于非转发任务，请使用其专用接口。\n";
    exit();
}
$task_wid = $sql_res['sina_wid'];
$task_text = $sql_res['text'];
echo '任务mid： '.$task_wid."\n";
echo '任务text： '.$task_text."\n";

// 从数据库do_task表中检索出一定时间之内做过该任务的人和他们做任务时产生的mid
$sql = "select user_id, repost_mid from do_task where task_id = '$task_id' and task_type = 1";  // and time ... // attention
$sql_res = $dbo->getRs($sql);
foreach($sql_res as $k) {
    $do_tasks[$k['user_id']] = $k['repost_mid'];
}
// 此时 $do_task 中存放的是 user_id 和 repost_mid 的键值对。

// 使用api查询任务微博的转发微博 statuses/repost_timeline/ids
$sql_res = $dbo->getRow('select sina_token from user_info_sina where sina_token is not null and unix_timestamp(now()) < unix_timestamp(token_update_at)+token_expires_in limit 1');
//$c = new SaeTClientV2( WB_AKEY, WB_SKEY, $_SESSION['stoken'] );
$c = new SaeTClientV2( WB_AKEY, WB_SKEY, $sql_res['sina_token'] );
/*
echo "\n该任务微博目前的转发微博的mid:\n";
echo "--------------------------\n";
*/
$repost_statuses = $c->repost_timeline($task_wid);
if_weiboapi_fail($repost_statuses, __FILE__, __LINE__);
foreach($repost_statuses['reposts'] as $status ) {
//echo $status['mid'].' -- '.$status['text'].' ('.$status['retweeted_status']['text'].")\n";
    $real_status_mids[] = $status['mid'];
}
echo "\n".'在该任务上出问题的用户'."\n";
echo "--------------------------\n";
if(0 === count($do_tasks)) {
    echo 'no body did the task'."\n";
    exit();
}
if(0 === count($real_status_mids)) {
    $fail_tasks = $do_tasks;
} else {
    $fail_tasks = array_diff($do_tasks, $real_status_mids);
}
if(0 != count($fail_tasks)) {
    foreach($fail_tasks as $k => $v) {  // $k -- user_id, $v -- mid
        $sql = "select nick_name from user where user_id = $k limit 1";
        $sql_res = $dbo->getRow($sql);
        echo 'user_id:'.$k.';  status_mid: '.$v.'; 用户名:'.$sql_res['nick_name']."\n";
    }
} else {
    echo "NONE\n";
}

?>
