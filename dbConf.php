<?php
/* dbConf.php
 * 数据库配置文件
 * 在我的环境中是放在网站根目录之外的
 * 不管在何处，它的未知应该在系统配置
 * 文件config.php中用$dbConfFile指明。
 */
	$host = '127.0.0.1';
	$db = 'db_name';
	$user = 'db_user_name';
	$pwd = 'db_password';

	global $dbServs;
	$dbServs = array($host, $db, $user, $pwd);
?>
