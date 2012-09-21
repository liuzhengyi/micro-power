<?php
session_start();
/* reg.php
 * 负责显示和处理注册微动力的页面和请求
 * 其中涉及一些检测函数，都还没有具体完成
 * 还缺少验证码和发送验证邮件等功能
 */
require_once($webRoot."config.php");
require_once($webRoot."foundation/check.func.php");
require_once($webRoot."lib/dbo.class.php");	// init $dbo
require_once($webRoot."foundation/status.php");
require_once($dbConfFile); // init $dbServs
// 判断是否登录
if(is_login()) {
    header('Location:'.$siteRoot.'my.php');
    exit();
}
// 判断是否带着token和email来的
if(isset($_GET['token']) && isset($_GET['email'])) {    // 带了token和email
    $token = $_GET['token'];
    $email = $_GET['email'];
    global $token_salt;
    $salt = $token_salt;   // initial in config.php
	$dbo = new dbex($dbServs);
    if(check_token_fail($token, $email, $salt) || $dbo->checkExist($email)) {   // token失效
        echo '对不起，该注册链接已经失效。<a href="'.$siteRoot.'pre_reg.php">点此重新获取</a>注册链接，或<a href="'.$siteRoot.'index.php">点此登录</a>。';
        $dbo->close();
        exit();
    }
} else {    // 没有带token和email
    header('Location:'.$siteRoot.'pre_reg.php');
    $dbo->close();
    exit();
}
// token和email有效

if(isset($_POST['submitted'])) {    // 当前页面已提交，现在处理提交的数据
	$dbo = new dbex($dbServs);
	$err_msg = array();

    $e = $dbo->real_escape_string($email);

	$n = trim($_POST['name']);
	if(check_nickname_fail($n)) {
		$err_msg[] = "请填写符合规定的用户昵称";
	} else if ($dbo->checkExist($n, 'nick_name')) {
		$err_msg[] = "这个昵称太热门，已经被使用了，您换一个试试";
	}
    $n = $dbo->real_escape_string($n);

	$p1 = trim($_POST['pass1']);
	$p2 = trim($_POST['pass2']);
	if(check_password_fail($p1)) {
		$err_msg[] = "请设置符合规定的密码";
	} else if($p1 !== $p2) {
		$err_msg[] = "两次密码输入不一致";
	} else {
        $ency_p = md5($p1);
    }

    if(empty($_POST['type'])) {
        $err_msg[] = '请选择账户类型';
    } else {
        $t = ('ader' === $_POST['type'])? 'ader' : 'user';
    }

	if(empty($err_msg)) {   // 提交的数据没有问题，下面注册并登录
		$sql = "insert into user (email, nick_name, pass, role, reg_time) values('$e', '$n', sha1('$ency_p'), '$t', now())";
		$num = $dbo->exeUpdate($sql);
		if(1 != $num) {
			if(DEBUG) {
				echo "debug, reg.php, 用户注册数据插入失败, sql=[$sql]";
			} else {
				die('<script language="javascript">alert("对不起，出现了一些错误，请稍候");</script>');
			}
		} else {
			$sql = "select user_id from user where email = '$e' limit 1";
			$res = $dbo->getRow($sql);
			$_SESSION['uid'] = $res['user_id'];
			$_SESSION['name'] = $n;
            $_SESSION['role'] = $t;
			echo "注册成功...";
			header("Location:my.php");
			exit;
		}
	}
}
// 页面尚未提交，现在给出注册页面
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmls="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title>注册微动力帐号</title>
	<link rel="stylesheet" href="style/main.css" type="text/css" />
</head>

<body>
	<div id="wrapper">
	<h1>欢迎注册微动力帐号</h1>
	<hr />
	<ul>
<?php
	if(!empty($err_msg)) {
		foreach($err_msg as $msg) {
			echo "\t\t<li class=\"err_msg\">$msg</li>\n";
		}
	}
?>
	</ul>
    <div id="user_reg">
	<form action="#" method="post">
	<ul class="nodec">
		<li><label for="nick_name">您的昵称：<input type="text" name="name" id="nick_name" value="<?php if(isset($n)) {echo $n;}?>" /></label><span class="hint">给自己起个名字吧，用于在页面上显示，2-5个汉字或6到15个字母</span></li>
		<li><label for="password1">登录密码：<input type="password" name="pass1" id="password1" value="<?php if(isset($p1)){echo $p1;} ?>" /></label><span class="hint">6到16位，要有一定强度哦</span></li>
		<li><label for="password2">确认密码：<input type="password" name="pass2" id="password2"/></label></li>
		<li>帐号类型：<label for="type_user"><input type="radio" name="type" id="type_user" value="user" selected="selected" />个人用户</label><label for="type_ader"><input type="radio" name="type" id="type_ader" value="ader">企业用户</label></li>
		<li><input type="submit" name="submit" value="注册帐号" ></li>
		<li><input type="hidden" name="submitted" value="true" /></li>
	</ul>
    <p>已有帐号？<a href="<?php echo $siteRoot?>index.php">点此</a>登录。</p>
	</form>
    </div><!-- end of DIV user_reg -->
	</div><!-- end of DIV wrapper -->
</body>
</html>
