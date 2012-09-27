	<ul class="block">
		<li><a href="index.php">首页</a></li>
		<?php if (isset($_SESSION['uid'])) {?>
		<li><a href="task.php">浏览任务</a></li>
        <?php if('ader' == user_role_switch($_SESSION['role'], false)) {?>
        <li><a href="create_task.php">新建任务</a></li>
        <?php }?>
		<li><a href="my.php">个人中心</a></li>
		<?php }?>
		<li><a href="help.php">帮助</a></li>
	</ul>
