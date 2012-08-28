<?php
session_start();
/* get_task_avatar.php */
include_once('../config.php');
include_once($webRoot.'lib/saetv2.ex.class.php');
include_once($webRoot.'lib/dbo.class.php');
include_once($dbConfFile);
include_once($webRoot.'foundation/debug.php');

$c = new SaeTClientV2(WB_AKEY, WB_SKEY, $_SESSION['stoken']);
$dbo = new dbex($dbServs);
/* 获取关注任务的图标url */
$sql = "select task_id, task_sina_uid from task where task_type='follow' and (task_icon_url IS NULL OR task_screen_name IS NULL OR task_location IS NULL) limit 2";
$sql_res =  $dbo->getRs($sql);
foreach($sql_res as $user) {
    $user_info = $c->show_user_by_id($user['task_sina_uid']);
    if_weiboapi_fail($user_info);
    $icon_url = $user_info['avatar_large'];
    $screen_name = $user_info['screen_name'];
    $location = $user_info['location'];
//    echo '<p><img src="'.$icon_url.'" />'.$location.$screen_name.'</p>';
    $sql = "update task set task_icon_url='$icon_url', task_screen_name='$screen_name', task_location='$location' where task_id = {$user['task_id']} limit 1";
    echo '<p>'.$sql.'</p>';
    $dbo->query($sql);
}

/* 获取转发任务的小图标，微博内容，微博图片大url和小url */
$sql = "select task_id, task_sina_wid from task where task_type='forward' and (task_icon_url IS NULL OR task_thumbnail_pic_url IS NULL OR task_bmiddle_pic_url IS NULL OR task_text IS NULL) limit 50";
$sql_res = $dbo->getRs($sql);
foreach($sql_res as $user) {
    $weibo = $c->show_status($user['task_sina_wid']);
    if_weiboapi_fail($weibo);
    $task_icon_url = $weibo['user']['profile_image_url'];
    $task_thumbnail_pic_url = $weibo['thumbnail_pic_url'];
    $task_bmiddle_pic_url = $weibo['bmiddle_pic_url'];
    $task_text = $weibo['text'];
    echo '<img src="'.$task_icon_url.'">'."<p>$task_text</p>".'<a href="'.$task_bmiddle_pic_url.'"><img src="'.$task_thumbnail_pic_url.'"></a>';
}

$dbo->close();
?>
