<?php
session_start();
/*	$webRoot/action/evaluate.php
 * 本文件负责对当前登录用户的微博进行评级，
 * 评级公式应该能够反应出用户微博帐号的号召力和影响力
 * 
 * 目前先用最简单的公式计算，即计算用户的粉丝数量。
 *
 * 用户的微博评级结果应该在4到10之间，默认等级为3，这意味着
 * 如果用户的等级为3，则该用户尚未进行过评级。
 *
 */

include_once("../config.php");
include_once($webRoot.'lib/saetv2.ex.class.php');

$c = new SaeTClientV2( WB_AKEY, WB_SKEY, $_SESSION['stoken']);
// to do
// 经过一系列计算……
$slevel = 4;

include_once($webRoot.'lib/dbo.class.php');
include_once($dbConfFile);
$dbo = new dbex($dbServs);
$sql = "update user set sina_level = $slevel where user_id = {$_SESSION['uid']} limit 1";
$res = $dbo->exeUpdate($sql);
$_SESSION['slevel'] = $slevel;
header("Location:".$_SERVER['HTTP_REFERER']);
exit();
?>
