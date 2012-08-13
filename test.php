<?php
session_start();
/* test.php
 * 一些对API的随便测试
 */
	include_once("config.php");
	include_once("lib/saetv2.ex.class.php");
	include_once("foundation/debug.php");
	$c = new SaeTClientV2( WB_AKEY, WB_SKEY, $_SESSION['stoken']);

	// 根据微博id获取微博内容
	echo '<h2>根据微博id获取微博内容</h2>';
//	$wid = 11142488790;
	$wid = 10101010101;
	$weibo = $c->show_status($wid);
	if_weiboapi_fail($weibo);
	$text = $weibo['text'];
	echo "<p>wid:$wid</p><p>text:$text</p><p><a href=\"action/forward.php?wid=$wid\">转发</a></p>";
	echo '<hr />';

	echo '<h2>我的最新微博</h2>';
	$weibos = $c->user_timeline_by_id($_SESSION['sid']);
	if_weiboapi_fail($weibos);
	echo '<ul>';
	if(isset($weibos['error_code'])) {
		echo '<h3 class="err_msg">error occured: '.$weibos['error'].'</h3>';
	}
	foreach($weibos['statuses'] as $v) {
		echo "<li>{$v['idstr']} {$v['text']}</li>";
	}
	echo '</ul>';
	echo '<hr />';

	$sname = '夏榕_戏说';
	echo '<h2>根据screen_name获取最新微博 name:'.$sname.'</h2>';
	$weibos = $c->user_timeline_by_name($sname); echo '<ul>';
	if_weiboapi_fail($weibos);
	if(isset($weibos['error_code'])) {
		echo '<h3 class="err_msg">error occured: '.$weibos['error'].'</h3>';
	}
	foreach($weibos['statuses'] as $v) {
		echo "<li>{$v['idstr']} {$v['text']}</li>";
	} echo '</ul>'; echo '<hr />';

	$sname = '夏榕_戏说';
	echo '<h2>根据screen_name获取关注列表 name:'.$sname.'</h2>';
	$friends = $c->friends_by_name($sname, 0, 100); echo '<ul>';
	if_weiboapi_fail($friends,__FILE__, __LINE__);
	if(isset($friends['error_code'])) {
		echo '<h3 class="err_msg">error occured: '.$friends['error'].'</h3>';
	}
	echo '<ol>';
	foreach($friends['users'] as $user) {
//		echo '<li>'.$user['idstr'].' --- '.$user['screen_name'].'</li>';
		echo "INSERT INTO `task` values (NULL, 1, 1, 'follow', '{$user['idstr']}', 6, 100, 39);<br />";
	} echo '</ol><hr />';




/*
//	$uid = 1941007953;
	$uid = 2300716454; // 微小说
//	$uid = 2881802930;
	echo '<hr /><h1>show_user_by_id('.$uid.')</h1>';
	$res = $c->show_user_by_id($uid);
	foreach($res as $k => $v) {
		echo "<br />$k -- $v";
	}
	echo '<hr />';

//	$id = 11488058256;
//	$id = 11884058256;
//	$id = 11011011011; // 汗 汗 汗 
	$wid = 12312312312; // 为啥那么多人自杀
	echo '<hr /><h1>show_status('.$wid.')</h1>';
	$res = $c->show_status($wid);
	foreach($res as $k => $v) {
		echo "<br />$k -- $v";
	}


	$uid2 = 1941007953;
//	$uid2 = 2300716454; // 微小说
	echo '<hr /><h1>friends_by_id('.$uid2.')</h1>';
	$res = $c->friends_by_id($_SESSION['sid']);
	echo '<h3>我已经关注的人</h3><ul>';
	foreach($res['users'] as $user) {
		$followed[] = $user['id'];
		echo "<li>{$user['screen_name']}(----------uid:{$user['id']})</li>";
	}
	echo '</ul>';
	$res= $c->friends_by_id($uid2);
	foreach($res['users'] as $user) {
		echo '<h2>user: '.$user['screen_name'].'</h2>';
		if(in_array($user["id"], $followed, true)) {
			echo '<h3><a href="action/unfollow.php?id='.$user['id'].'">取消关注</a></h3>';
		} else {
			echo '<h3><a href="action/follow.php?id='.$user['id'].'">关注ta</a></h3>';
		}
		foreach($user as $k => $v) {
			echo "<br />$k -- $v";
		}
	}
*/

?>
