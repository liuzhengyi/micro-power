	<ul class="block">
		<li><a href="index.php">首页</a></li>
		<?php if (isset($_SESSION['uid'])) {?>
		<li><a href="task.php">任务</a></li>
		<li><a href="my.php">个人中心</a></li>
		<?php }?>
		<li><a href="help.php">帮助</a></li>
	</ul>
