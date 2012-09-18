<?php
session_start();
/* callback.php
 * 本文件为weibo API授权成功回调地址
 * 负责获取授权者的token和处理所有成功授权的后事
 * 具体包括：
 *	新用户用weibo帐号注册
 *		完成注册
 *	weibo用户用weibo帐号登录
 *		完成登录，写session
 *	常规用户绑定weibo帐号
 *		完善信息
 */
ini_set("error_display", E_ALL&E_STRICT);   // debug

include_once( 'config.php' );
include_once( $webRoot.'lib/saetv2.ex.class.php' );
require_once( $webRoot.'lib/dbo.class.php' );	// init class dbo
require_once( $dbConfFile );		// init $dbServs

require_once( $webRoot.'foundation/debug.php');

// 用授权者的code换取token
$o = new SaeTOAuthV2( WB_AKEY , WB_SKEY );
if (isset($_REQUEST['code'])) {
	$keys = array();
	$keys['code'] = $_REQUEST['code'];
	$keys['redirect_uri'] = WB_CALLBACK_URL;
	try {
		$token = $o->getAccessToken( 'code', $keys ) ;
	} catch (OAuthException $e) {
	}
} else if(isset($_REQUEST['error_code'])) {
    $error_code = intval($_REQUEST['error_code']);
    if(21330 === $error_code) {
        header("Location:".$siteRoot."cancel.php");
        exit();
    } else {
        $msg = '授权出现错误，错误码：'.$error_code;
    }
}

if ($token) {
	// 获取用户身份信息
	$c = new SaeTClientV2( WB_AKEY , WB_SKEY , $token['access_token']);
	$sid_get = $c->get_uid();
	if(isset($sid_get['error_code'])) {
		$msg = "weibo api 使用出错，错误码：{$sid_get['error_code']}，file:".__FILE__.";line:".__LINE__;
		debug($msg);
	}
	$sid = $sid_get['uid'];
	// 判断是否首次授权，首次授权则登记sina uid
	$dbo = new dbex($dbServs);
	if(!$dbo->checkExist($sid, 'sina_uid')) {
        // 首次授权 在绑定微博或用微博帐号注册
		if(isset($_SESSION['uid'])) {	
            //已注册微动力，在绑定微博，完善信息
			$id = $_SESSION['uid'];
			$sql = "update user set sina_uid =$sid, sina_token = '{$token['access_token']}', token_update_at=now(), token_expire_in={$token['expires_in']} where user_id = $id limit 1";
			$num = $dbo->exeUpdate($sql);
			if(1 != $num) {
				$msg = "向数据库插入数据出错。file:".__FILE__.";line:".__LINE__."sql:".$sql;
				debug($msg);
			}
			//写session，跳转
			$_SESSION['sid'] = $sid;
			$_SESSION['stoken'] = $token['access_token'];
			header("Location:task.php");
			// 后台获取用户的已关注用户列表，写入SESSION
			$friends = $c->friends_by_id($_SESSION['sid']);
			if_weiboapi_fail($friends, __FILE__, __LINE__);
			foreach($friends['users'] as $friend) {
				$followed_id[] = $friend['id'];
				$followed_name[] = $friend['name'];
			}
			$_SESSION['followed_id'] = $followed_id;
			$_SESSION['followed_name'] = $followed_name;
            $_SESSION['is_bind_weibo'] = TRUE;
            $_SESSION['slevel'] = $weibo_init_level;
			exit();
		} else {			
            // 尚未注册。在用微博帐号注册
			$user_info = $c->show_user_by_id($sid); // fetch user basic message according to sid
			$name = $user_info['screen_name'].'@sina';
			$sql = "insert into user (nick_name, sina_uid, sina_token, token_update_at, token_expire_in, reg_time) values('$name', $sid, '{$token['access_token']}', now(), {$token['expires_in']}, now())";
			$num = $dbo->exeUpdate($sql);
			if(1 != $num) {
				$msg = "向数据库插入数据出错。file:".__FILE__.";line:".__LINE__."sql:".$sql;
				debug($msg);
			}	// 注册完成，session在后面写。
		}
	} else {	
        // 非首次授权。老用户，在用微博帐号登录 或者刷新sina_token
        /* 此处存在一个问题，但这不是一个bug
           如果用户先用微博登录创建了一个账户，又以常规途径创建了一个微动力账户，
           然后用新注册的微动力账户绑定先前的微博帐号。
           此时，如果授权成功会导致用户以微博帐号的身份登录，向新账户绑定微博的操作无法完成。
           这意味着一个微博帐号只能对应一个微动力帐号。 这不是一个bug。
           */
		$sql = "select nick_name as n, sina_token as st from user where sina_uid = $sid limit 1";
		$row = $dbo->getRow($sql);
		// missing error control
		$name = $row['n'];
        $stoken = $row['st'];
        if($token['access_token'] !== $stoken) {
            // 数据库中该用户的sina_token更新了，写入数据库
            $sql = "update user set sina_token = '{$token['access_token']}', token_update_at=now(), token_expire_in='{$token['expires_in']}' where sina_uid = '$sid' limit 1";
            $sql_res = $dbo->exeUpdate($sql);
            if(1 !== $sql_res) {
                // 此处并不影响微博登录的用户继续操作，因为该类用户使用的token不是数据库中获得
                // 受影响的是使用微动力帐号登录的用户，和我们的检测程序（如果我们的帐号出错的话）
                debug('更新数据库中用户token时，updte操作出错，SQL['.$sql.']。', __FILE__, __LINE__, FALSE, 'fatal');
            }
        }
	}
	// 写session
	$sql = "select user_id, sina_level from user where sina_uid = $sid limit 1";
	$res = $dbo->getRow($sql);
	$_SESSION['uid'] = $res['user_id'];
	$_SESSION['sid'] = $sid;
	$_SESSION['name'] = $name;
	$_SESSION['stoken'] = $token['access_token'];
	$_SESSION['slevel'] = $res['sina_level'];
    $_SESSION['is_bind_weibo'] = TRUE;
	header("Location:my.php");
	// 后台获取用户的已关注用户列表，写入SESSION
	$friends = $c->friends_by_id($_SESSION['sid']);
	if_weiboapi_fail($friends, __FILE__, __LINE__);
	foreach($friends['users'] as $friend) {
	$followed_id[] = $friend['id'];
	$followed_name[] = $friend['name'];
	}
	$_SESSION['followed_id'] = $followed_id;
	$_SESSION['followed_name'] = $followed_name;

} else {
	
	$msg = '授权失败。请稍候重试'.'<a href="index.php">点此</a>返回主页';
	debug($msg, __FILE__, __LINE__);
}
?>
