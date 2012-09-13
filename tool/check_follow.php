<?php
session_start();
/*
检查关注任务
批量检查：（按任务检查）
draft 1:
            获取任务用户的followers列表 http://open.weibo.com/wiki/2/friendships/followers
            然后比对数据库中存储的数据。
            note:
                一次检查一个任务（包括所有做了该任务的人）

注意：
    目前测试版，让用户自己点击检测接口来检测。
*/
require_once('../config.php');
require_once($webRoot.'lib/saetv2.ex.class.php');
require_once($webRoot.'lib/dbo.class.php');
require_once($webRoot."foundation/status.php");
require_once( $dbConfFile );		// init $dbServs
require_once( $webRoot.'foundation/debug.php');

/*
if(!is_login()) {
    header($siteRoot.'index.php');
    exit();
}
*/
if(isset($_GET['id'])) {
    $task_id = intval($_GET['id']);
    if(empty($task_id)) {
        header($siteRoot.'index.php');
        exit();
    }
} else {
    $task_id = 51;
}
// 按照任务检查关注任务，测试版

// 从数据库中取出task_id标识的关注任务的uid
$dbo = new dbex($dbServs);
echo 'task id: '.$task_id."\n";
$sql = "select task_sina_uid, task_screen_name from task where task_id = $task_id and task_type = 'follow' limit 1";
$sql_res = $dbo->getRow($sql);
if(!$sql_res || 0 === count($sql_res)) {
    echo "error: 不存在该任务或该任务不是关注任务，对于非关注任务，请使用其专用接口。\n";
    exit();
}
// 任务中需要被关注的用户新浪uid
$task_uid = $sql_res['task_sina_uid'];
$task_screen_name = $sql_res['task_screen_name'];
echo 'task_uid: '.$task_uid."\n";
echo 'task_screen_name: '.$task_screen_name."\n";

// 从数据库do_task表中检索出 **一定时间之内** 做过该任务的人的sid和uid
echo "data in db.do_task\n";
$sql = "select user_id, sina_uid, nick_name from do_task JOIN user using(user_id) where task_id = $task_id";  // and time ... // attention!!!
$sql_res = $dbo->getRs($sql);
if(!$sql_res || 0 === count($sql_res)) {
    echo "nobody\n";
} else {
    foreach($sql_res as $k) {
        $do_tasks[$k['user_id']] = $k['sina_uid'];
        echo "{$k['nick_name']} sina_uid: {$k['sina_uid']}\n";
    }
}
// 此时 $do_task 中存放的是 user_id 和 sina_uid 的键值对。

// 使用api查询任务微博的转发微博 statuses/repost_timeline/ids
$sql = 'select sina_token from user where user_id = 8 limit 1';
$sql_res = $dbo->getRow($sql);
$c = new SaeTClientV2( WB_AKEY, WB_SKEY, $sql_res['sina_token'] );
//echo "data from sina api, uid:\n";
$followers_ids = $c->followers_ids_by_id($task_uid, 0, 5);
if_weiboapi_fail($followers_ids, __FILE__, __LINE__);
if(!$followers_ids || 0 === count($followers_ids)) {
    echo "nobody or nodata received from sina api";
} else {
    foreach($followers_ids['ids'] as $id ) {
//        echo $id."\n";
    }
}

echo "failed by draft1\n";
echo "----------------------\n";
if(0 === count($do_tasks)) {
    echo "nobody did the task\n";
    exit();
}
if(0 === count($followers_ids)) {
    $unpass_tasks = $do_tasks;
} else {
    $unpass_tasks = array_diff($do_tasks, $followers_ids['ids']);
}
if(0 != count($unpass_tasks)) {
    foreach($unpass_tasks as $k => $v) {  // $k -- user_id, $v -- uid
        $sql = "select nick_name from user where user_id = $k limit 1";
        $sql_res = $dbo->getRow($sql);
        echo 'user_id:'.$k.';  weibo_mid: '.$v.'; 用户名:'.$sql_res['nick_name']."\n";
    }
    // 对未通过draft1验证的用户进行精确验证
    foreach($unpass_tasks as $k => $v) {
        $result = $c->is_followed_by_id($v, $task_uid);
        if_weiboapi_fail($result);
        if(!$result['target']['following']) {
            $failed[$k] = $v;
        }
    }
    echo "failed by draft2\n";
echo "----------------------\n";
    if(0 === count($failed)) {
        echo "NONE\n";
    } else {
        foreach($failed as $k => $v) {  // $k -- user_id, $v -- mid
            $sql = "select nick_name from user where user_id = $k limit 1";
            $sql_res = $dbo->getRow($sql);
            echo 'user_id:'.$k.';  sina_uid: '.$v.'; 用户名:'.$sql_res['nick_name']."\n";
        }
    }
} else {
    echo 'NONE';
}

?>
