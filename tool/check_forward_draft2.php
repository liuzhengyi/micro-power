<?php
session_start();
/*
检查转发任务
draft 2:
            从数据库中获取用户做过的转发任务产生的id/mid，
            然后使用api repost_by_me获取用户当前的真正转发列表，进行比对。
            note:
                repost_by_me只能由当前用户调用；
                repost_by_me只返回最新的转发微博，“最新”的定义尚不明确，since_id和max_id的用法亦不明确。
                repost_by_me方法没有base_app参数。

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
echo '<p><sup>说明：<br />通过调用api  <a href="http://open.weibo.com/wiki/2/statuses/repost_by_me">repost_by_me</a> 来获取当前用户最新转发微博列表.<br />然后比对数据库中当前用户的任务记录.<br />问题：<br />1. repost_by_me 只能用户登录时自己调用；<br />2. repost_by_me获取所谓‘最新转发’，但是具体时间并没有说明，测试结果也比较诡异。包括since_id和max_id，都有待进一步测试。</p>';
echo '<hr />';
// 按照用户检查转发任务，测试版
// 从数据库中取出当前用户做过的转发任务的mid（同id）
$uid = $_SESSION['uid'];
$dbo = new dbex($dbServs);
echo '<h3>我在微动力做转发任务产生的mid</h3>';
$sql = "select task_id, repost_mid, task_text from do_task JOIN task using(task_id) where user_id = $uid and status = 'finish' and type = 'forward' limit 10";
$sql_res = $dbo->getRs($sql);
$task_weibo_mids = array();
if(0 != count($sql_res)) {
    foreach($sql_res as $weibo) {
        echo '任务微博 -- '.$weibo['task_text'].'。<br />转发产生的mid --  '.$weibo['repost_mid'].'</p>';
        $task_weibo_mids[$weibo['task_id']] = $weibo['repost_mid'];
    }
} else {
    echo '<p>我最近没有在微动力上做任务</p>';
}
// 通过api查询当前用户最近转发的微博id
//var_dump($sql_res);
echo '<hr />';
$c = new SaeTClientV2( WB_AKEY, WB_SKEY, $_SESSION['stoken'] );
echo '<h3>用新浪api获取我最近转发的微博mid</h3>';
$repost_weibos = $c->repost_by_me(1, 9, 3430446513991533);
if(!$repost_weibos || 0 === $repost_weibos['total_number']) {
    // 我最近转发的微博都不存在了
    echo '<p>我最近转发的微博全都不在了<sub>或者repost_by_me没有获取到</sub></p>';
    $fail_tasks = $task_weibo_mids;
} else {
    $real_weibo_mids = array();
    foreach($repost_weibos['reposts'] as $weibo ) {
    //echo $weibo['retweeted_status']['mid'].'<br />';
    echo $weibo['mid'].' -- '.$weibo['text'].' on <sub>'.$weibo['created_at'].'</sub><br />';
        $real_weibo_mids[] = $weibo['mid'];
    }
    $fail_tasks = array_diff($task_weibo_mids, $real_weibo_mids);
}

echo '<hr />';
echo '<h3>出问题的任务(可能是我删除了这条微博)</h3>';
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
