<?php
session_start();
/* unfollow.php
 * 测试页面
 */
include_once("../config.php");
include_once($webRoot."lib/saetv2.ex.class.php");
include_once($webRoot."foundation/debug.php");

$c = new SaeTClientV2( WB_AKEY, WB_SKEY, $_SESSION['stoken']);
if(isset($_GET['id'])) {
	$res = $c->unfollow_by_id($_GET['id']);
    if_weiboapi_fail($res);
	header("Location:".$siteRoot."task.php");
	exit();
}
?>
