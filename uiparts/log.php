	<?php
	if(isset($_SESSION['id'])) {
		echo "<p>{$_SESSION['name']}，您好，您已登录。</p>";
		if(isset($_SESSION['uid'])) {
			echo "<p>您已绑定新浪微博。</p>";
		} else {
			echo "<p>您需要绑定新浪微博才能做任务赚钱</p><a href=\"$authURL\">现在就绑定</a>";
		}
		echo "<p><a href=\"logout.php\">退出</a></p>";
	} else {
	?>
	<ul class="block">
		<li><a href="login_v.php">用微动力帐号登录</a></li>
		<li><a href="<?php echo $authURL; ?>">用新浪帐号登录</a></li>
		<li><a href="reg.php">注册微动力帐号</a></li>
	</ul>
	<?php } ?>
