<?php
session_start();
include_once("../config.php");	// init $authURL
include_once($webRoot."foundation/status.php");
if(!is_login()) { header('Location:'.$siteRoot.'index.php'); }
require_once($webRoot.'foundation/debug.php');
require_once($webRoot.'foundation/page.php');
require_once($webRoot.'foundation/price.php');
require_once($webRoot.'lib/saetv2.ex.class.php');
/*
1. 从发布者的微博列表中选取一条；
2. 编写一条，写入任务列表的同时发布到微博上；
两者都要求发布任务的用户授权微动力使用api
*/

// 验证用户身份，略
// ...

// 选择发布任务方式
echo "<p><a href=\"choose_weibo.php\">从自己的微博上选择一条微博。</a><br /><a href=\"create_weibo\">编写一条微博作为任务并发布到微博上。</a></p>";
?>
