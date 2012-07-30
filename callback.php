<?php
session_start();

include_once( 'config.php' );
include_once( 'lib/saetv2.ex.class.php' );
require_once( 'lib/dbo.class.php' );	// init class dbo
require_once( "$dbConfFile" );		// init $dbServs

$o = new SaeTOAuthV2( WB_AKEY , WB_SKEY );

if (isset($_REQUEST['code'])) {
	$keys = array();
	$keys['code'] = $_REQUEST['code'];
	$keys['redirect_uri'] = WB_CALLBACK_URL;
	try {
		$token = $o->getAccessToken( 'code', $keys ) ;
	} catch (OAuthException $e) {
	}
}

if ($token) {
	// 获取用户身份信息
	$c = new SaeTClientV2( WB_AKEY , WB_SKEY , $token['access_token']);
	$uid_get = $c->get_uid();
	// err_control
	if(isset($uid_get['error_code'])) {
		if(DEBUG) {
			echo "debug: __FILE__ , __LINE__, api使用出错。";
		} else {
			echo "出了一些错误，请稍候";
		}
	}
	$uid = $uid_get['uid'];
	// 判断是否首次授权，首次授权则登记sina uid
	$dbo = new dbex($dbServs);
	if(!$dbo->checkExist($uid, 'sina_uid')) {	// 首次授权
		if(isset($_SESSION['id'])) {	// 已经注册了微动力帐号
//		echo "<script language=\"javascript\">alert('debug:首次授权，已经注册');</script>";
			//完善信息
			$sql = "update user set sina_uid ='$uid', sina_token = '{$token['access_token']}' where user_id = {$_SESSION['id']} limit 1";
			$num = $dbo->exeUpdate($sql);
			// error control missing
			//跳回授权前页面，算了，还是跳到任务页面吧。
			$_SESSION['uid'] = $uid;
			$_SESSION['token'] = $token['access_token'];
			header("Location:task.php");
			exit();
		} else {			// 尚未注册
//		echo "<script language=\"javascript\">alert('debug:首次授权，尚未注册');</script>";
			//注册
			$user_message = $c->show_user_by_id($uid); // fetch user basic message according to uid
			$name = $user_message['screen_name'].'@sina';
			$sql = "insert into user (nick_name, sina_uid, sina_token, reg_time) values('$name', '$uid', '{$token['access_token']}', now())";
//echo "debug: 首次授权，尚未注册";
//echo "\n$sql";
//die();
			$dbo->exeUpdate($sql);
		}
	} else {					// 老用户，非首次授权
//		echo "<script language=\"javascript\">alert('debug:已经注册，非首次授权');</script>";
//echo "debug: 非首次授权，已经注册";
//die();
		$sql = "select nick_name as n from user where sina_uid = '$uid' limit 1";
		$row = $dbo->getRow($sql);
		// missing error control
		$name = $row['n'];
	}
		$sql = "select user_id from user where sina_uid = '$uid' limit 1";
		$res = $dbo->getRow($sql);
		$_SESSION['id'] = $res['user_id'];
		$_SESSION['uid'] = $uid;
		$_SESSION['name'] = $name;
		$_SESSION['token'] = $token['access_token'];
		header("Location:my.php");

} else {
	echo '授权失败。请稍候重试';
	echo '<a href="index.php">点此</a>返回主页';
}
?>
