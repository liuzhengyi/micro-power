<?php
include("../config.php");
/* logout.php
 * 负责处理用户登出请求
 * */
	session_start();
	$_SESSION = array();
	header("Location:index.php");
	header('Location:'.$siteRoot.'index.php');
?>
