<?php
session_start();
/* reg.php
 * 负责显示和处理注册微动力的页面和请求
 * 其中涉及一些检测函数，还需要进一步完善
 */
require_once($webRoot."config.php");
require_once($webRoot."foundation/check.func.php");
require_once($webRoot."lib/dbo.class.php");	// init $dbo
require_once($webRoot."foundation/status.php");
// 判断是否登录，这个功能应该用一个函数来完成
if(is_login()) {
    header('Location:'.$siteRoot.'my.php');
    exit();
}
require_once("$dbConfFile"); // init $dbServs
	if(isset($_POST['submitted'])) {    // 处理用户提交的数据
		$dbo = new dbex($dbServs);
		$err_msg = array();

        $code = trim($_POST['vericode']);
        if($code != $_SESSION['verifyCode']) {
            $err_msg[] = '验证码错误，请重新输入';
        }

		$e = trim($_POST['email']);
		if(check_email_fail($e)) {
			$err_msg[] = "请填写正确的邮箱地址";
		} else if ($dbo->checkExist($e)) {
			$err_msg[] = "对不起，该邮箱已经被使用了";
		}

		if(empty($err_msg)) {
            global $token_salt; // initial in config.php
            $token = generate_token($e, $token_salt);  // func in check.php

            include_once($webRoot.'mail/class-phpmailer.php');
            include_once($webRoot.'mail/class-smtp.php');

            $mail = new PHPMailer();
            $mail->IsSmtp();
            $mail->CharSet = 'UTF-8';
            $mail->AddAddress("$e");

            $body_message = "Hi，欢迎注册微动力。\n 请点击下面的链接完成微动力帐号的注册，24小时内有效。 \n 如果您并未申请微动力，请忽视此邮件。\n ".$siteRoot."reg.php?token=".$token.'&email='.$e." \n\n\n 微动力团队 ";
            $mail->Body = $body_message;
//            $alt_message = ""; // 对于不支持HTML的客户端显示的纯文本邮件内容
//            $mail->AltBody = $alt_message;
            $mail->From = 'v_dong_li@163.com';
            $mail->FromName = '微动力';
            $mail->Subject = '微动力注册链接';
            $mail->Host = 'smtp.163.com';
            $mail->SMTPAuth = TRUE;

            $mail->Username = 'v_dong_li@163.com';
            $mail->Password = 'v#dong#li$163';

            $mail->Send();
				echo "邮件已发送到 $e ，请通过邮件中的注册链接完成注册...";
//				header("Location:my.php");
				exit;
		}
	}
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
	<form action="#" method="post">
	<ul class="nodec">
		<li><label for="user_email">常用邮箱：<input type="text" name="email" id="user_email" value="<?php if(isset($e)) {echo $e;}?>" /></label><span class="hint">请输入常用邮箱作为登录名称，还可用来找回密码</span></li>
		<li><label for="veri_code">验证文字：<input type="text" name="vericode" id="veri_code" /></label><span class="hint">请输入下面图片中的字母，不区分大小写</span></li>
		<li>验证图片：<img src="tool/veriCode.php" /><span class="hint"><a href="pre_reg.php?id=<?php echo rand(3011,4011);?>" onclick="return true;" >看不清？点我换一张</a></span></li>
		<li><input type="submit" name="submit" value="发送注册链接" ></li>
		<li><input type="hidden" name="submitted" value="true" /></li>
	</ul>
	</form>
	</div><!-- end of DIV wrapper -->
</body>
</html>
