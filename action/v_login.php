<?php
session_start();
/* v_login.php
 * 负责处理微动力原生用户的登录请求
 * 一些检测函数尚未完善
 */
include_once("../config.php");
include_once($webRoot."foundation/check.func.php");
include_once($webRoot."foundation/switch.php");
include_once($webRoot."foundation/price.php");
	if(isset($_SEEEION['uid']) && isset($_SEISSION['name'])) { // 已经登录，跳转
		header('Location:'.$siteRoot.'my.php');
		exit();
	}	// 尚未登录，进行登录
	if(isset($_POST['submitted']) && isset($_POST['email']) && isset($_POST['pass'])) {
		$e = trim($_POST['email']);
		$p = trim($_POST['pass']);
		if(check_email_fail($e) || check_password_fail($p)) {	// 邮箱或密码格式不对
			header('Location:'.$siteRoot.'index.php?login_error=wrong_format');
			exit();
		}

		include_once($webRoot."lib/dbo.class.php");
		include_once($dbConfFile);
		$dbo = new dbex($dbServs);
        $e = $dbo->real_escape_string($e);
        $ency_p = md5($p);
		$sql = "select user_id, nick_name, role, level, realtime_money from user where email = '$e' and pass = sha1('$ency_p') limit 1";
		$res = $dbo->query($sql);
		if(1 != $res->num_rows) {	// 邮箱与密码不匹配
			header('Location:'.$siteRoot.'index.php?login_error=mismatch');
			exit();
		}	
        // 登录成功
		$row = $res->fetch_array();
		$_SESSION['uid'] = $row['user_id'];
		$_SESSION['name'] = $row['nick_name'];
        $_SESSION['role'] = user_role_switch($row['role'], false);  // from num to string
		$_SESSION['level']  = $row['level'];
		$_SESSION['user_realtime_money']  = price_db_to_user($row['realtime_money']);
        $sql = "select sina_uid, sina_level, sina_token from user_info_sina where user_id = '{$_SESSION['uid']}' limit 1";
        $row = $dbo->getRow($sql);
		$_SESSION['sid']  = empty($row['sina_uid'])? NULL : $row['sina_uid'];
		$_SESSION['slevel']  = empty($row['sina_level'])? NULL : $row['sina_level'];
		$_SESSION['stoken']  = empty($row['sina_token'])? NULL : $row['sina_token'];
		$dbo->close();
		header('Location:'.$siteRoot.'my.php');
		// 后台继续运行，获取用户的已关注用户列表，写入SESSION
		if(!isset($_SESSION['sid'])){	// 尚未绑定微博
            $_SESSION['is_bind_weibo'] = FALSE;
			exit();
		}
        $_SESSION['is_bind_weibo'] = TRUE;
		include_once($siteRoot.'lib/saetv2.ex.class.php');
		include_once($siteRoot.'foundation/debug.php');
		$c = new SaeTClientV2(WB_AKEY, WB_SKEY, $_SESSION['stoken']);
		$friends = $c->friends_by_id($_SESSION['sid']);
		if_weiboapi_fail($friends, __FILE__, __LINE__);
		foreach($friends['users'] as $friend) {
			$followed_id[] = $friend['id'];
		}
		$_SESSION['followed_id'] = $followed_id;
	}
?>
