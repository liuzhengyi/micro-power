<?php
session_start();
/* forward.php
 * 负责处理用户做转发任务的请求
 * 尚缺少写数据库的部分
 */
include_once("../config.php");
include_once($webRoot.'lib/saetv2.ex.class.php');

$c = new SaeTClientV2(WB_AKEY, WB_SKEY, $_SESSION['stoken']);
if(isset($_GET['id'])) {
	$res = $c->repost($_GET['id']);
	if(isset($res['error_code'])) {	// failed
		echo $res['error'];
		exit();
	} else {
		// to do
		// 写数据库 , 包括任务的完成数 , 用户积分，事务记录等
	}
}
header("Location:".$_SERVER['HTTP_REFERER']);
?>
