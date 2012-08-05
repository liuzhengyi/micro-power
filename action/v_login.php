<?php
session_start();
/* v_login.php
 * 负责处理微动力原生用户的登录请求
 * 一些检测函数尚未完善
 */
include_once("../config.php");
include_once($webRoot."foundation/check.func.php");
	if(isset($_SEEEION['uid']) && isset($_SEISSION['name'])) {
		header('Location:'.$siteRoot.'my.php');
		exit();
	}
	if(isset($_POST['submitted']) && isset($_POST['email']) && isset($_POST['pass'])) {
		$e = trim($_POST['email']);
		$p = trim($_POST['pass']);
		if(check_email_fail($e) || check_password_fail($p)) {
			// 邮箱或密码格式不对
			header('Location:'.$siteRoot.'index.php?login_error=wrong_format');
			exit();
		}

		include_once($webRoot."lib/dbo.class.php");
		include_once($dbConfFile);
		$dbo = new dbex($dbServs);
		$sql = "select user_id, nick_name, sina_uid, sina_level from user where email = '$e' and pass = sha1('$p') limit 1";
		$res = $dbo->query($sql);
		echo $sql;
		if(1 != $res->num_rows) {
			// 邮箱与密码不匹配
			header('Location:'.$siteRoot.'index.php?login_error=mismatch');
			exit();
		}
		$row = $res->fetch_array();
		$_SESSION['uid'] = $row['user_id'];
		$_SESSION['name'] = $row['nick_name'];
		$_SESSION['sid']  = empty($row['sina_uid'])? NULL : $row['sina_uid'];
		$_SESSION['slevel']  = $row['slevel'];
		$dbo->close();
		header('Location:'.$siteRoot.'my.php');
		exit();
	}
?>
