	<?php
    include_once('config.php');
//    include($webRoot.'lib/saetv2.ex.class.php');
//    $o = new SaeTOAuthV2( WB_AKEY, WB_SKEY);
//    $code_url = $o->getAuthorizeURL( WB_CALLBACK_URL );
	if(isset($_SESSION['uid'])) {	// 已经登录
		echo "<p>{$_SESSION['name']}，您好，您已登录。</p>";
		if(isset($_SESSION['sid'])) {
			echo "<p>您已绑定新浪微博。</p>";
		} else {
			echo "<p>您需要绑定新浪微博才能做任务赚钱</p><a href=\"$authURL\">现在就绑定</a>";
//			echo "<p>您需要绑定新浪微博才能做任务赚钱</p><a href=\"$code_url\">现在就绑定</a>";
		}
        if(isset($_SESSION['is_bind_weibo']) && $_SESSION['is_bind_weibo']) {
		    echo '<p>您的微博等级为'.$_SESSION['slevel'].'</p>';
            if($_SESSION['slevel'] < 4) {
			echo '<p>建议您对微博进行评级，评级能够增加您的佣金</p>';
			echo '<a href="'.$siteRoot.'action/evaluate.php">现在评级</a>';
            }
		}
		echo "<p><a href=\"action/logout.php\">退出</a></p>";
	} else {			// 尚未登录或登录失败
		if(isset($_GET['login_error']) && 'wrong_format' == $_GET['login_error']) {
			echo '<p class="err_msg">邮箱或密码的格式不对</p>'; 
		} else if(isset($_GET['login_error']) && 'mismatch' == $_GET['login_error']){
			echo '<p class="err_msg">邮箱或密码不对</p>'; 
		}
	?>
	<form action="action/v_login.php" method="post">
		<label for="user_email">注册邮箱：<input type="text" name="email" id="user_email" size="10"/></label>
		<label for="user_pass"><br />登录密码：<input type="password" name="pass" id="user_email" size="10"/></label><br />
		<input type="submit" name="submit" value="用微动力帐号登录" />
		<input type="hidden" name="submitted" value="true">
	</form>
	<ul >
		<li><a href="<?php echo $authURL; ?>">用新浪帐号登录</a></li>
		<li><a href="reg.php">注册微动力帐号</a></li>
	</ul>
	<?php } ?>
