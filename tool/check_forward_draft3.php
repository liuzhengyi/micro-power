<?php
session_start();
/*
检查转发任务
check_forward_draft 3
            从数据库中获取用户做过的转发任务产生的id/mid，
            使用api user_timeline或user_timeline/ids获取用户通过本应用发布的微博。
            note:
                user_timeline可以通过指定base_app来指定只返回通过本应用发布的微博；
                user_timeline中since_id和max_id的用法尚待测试；

注意：
    目前测试版，让用户自己点击检测接口来检测。
*/
require_once('../config.php');
require_once($webRoot.'lib/saetv2.ex.class.php');
require_once($webRoot.'lib/dbo.class.php');
require_once($webRoot."foundation/status.php");
require_once( $dbConfFile );		// init $dbServs
require_once( $webRoot.'foundation/debug.php');

if(!is_login()) {
    header($siteRoot."index.php");
    exit();
}
// 按照用户检查转发任务，测试版
// 从数据库中取出当前用户做过的转发任务的mid（同id）
$uid = $_SESSION['uid'];
$dbo = new dbex($dbServs);
echo '<h3>我做转发任务产生的mid</h3>';
$sql = "select task_id, repost_mid, task_text from do_task JOIN task using(task_id) where user_id = $uid and status = 'finish' and type = 'forward' limit 10";
$sql_res = $dbo->getRs($sql);
$task_weibo_mids = array();
if(0 != count($sql_res)) {
    foreach($sql_res as $weibo) {
        echo 'mid -- '.$weibo['repost_mid'].'-- '.$weibo['task_text'].'<br />';
        $task_weibo_mids[$weibo['task_id']] = $weibo['repost_mid'];
    }
} else {
    echo '<p>我最近没有在微动力上做任务</p>';
}
// 通过api查询当前用户最近转发的微博id
//var_dump($sql_res);
echo '<hr />';
$c = new SaeTClientV2( WB_AKEY, WB_SKEY, $_SESSION['stoken'] );
echo '<h3>我最近通过微动力发布的微博id</h3>';
$repost_weibos = $c->user_timeline_by_id($_SESSION['sid'], 1, 200, 0, 0, 0, 0, 1);  // base_app == 1
//var_dump($repost_weibos);
if(!$repost_weibos || 0 == $repost_weibos['total_number']) {
    // 通过微动力转发的微博全都不在了
    echo '<p>我最近通过微动力发布的微博全都不在了</p>';
    $fail_tasks = $task_weibo_mids;
} else {
    foreach($repost_weibos['statuses'] as $weibo ) {
    echo $weibo['mid'].' -- '.$weibo['text'].' <sub>on: '.$weibo['created_at'].'</sub><br />';
        $real_weibo_mids[] = $weibo['mid'];
    }
    $fail_tasks = array();
    $fail_tasks = array_diff($task_weibo_mids, $real_weibo_mids);
}
echo '<hr />';
echo '<h3>出问题的任务</h3>';
if(0 == count($fail_tasks)) {
    echo '<p>NONE</p>';
} else {
    foreach($fail_tasks as $k => $v) {
        $sql = "select task_text from task where task_id = $k limit 1";
        $sql_res = $dbo->getRow($sql);
        echo 'task_id:'.$k.' weibo_mid: '.$v.'<br /> text:'.$sql_res['task_text'].'</p>';
    }
}

?>
