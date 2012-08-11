<?php
session_start();
/* follow.php
 * 负责处理用户做关注任务的请求
 * 尚缺少写数据库的部分
 */
include_once("../config.php");
include_once($webRoot."lib/saetv2.ex.class.php");
include_once($webRoot."lib/dbo.class.php");
include_once($dbConfFile);
global $is_login;	// init in uiparts/log.php
if(!$is_login) {
// ...
}

$c = new SaeTClientV2( WB_AKEY, WB_SKEY, $_SESSION['stoken']);
if(isset($_GET['id'])) {
	$task_id = $_GET['id'];
	// 此处缺少安全检查，不应直接将$task_id 用于sql语句。
	// 先判断用户是否可以做该任务，再做任务，然后写数据库
	$dbo = new dbex($dbServs);
	$dbo->lockWrite('task write, do_task write, user'); // 锁表,this is a trick, lockWrite shoud be improved.
	$sql = "select task_type, task_info, task_offer, task_amount, task_finish_amount from task where task_id = $task_id and task_status='normal'";
	$sql_res = $dbo->getRow($sql);
	if($sql_res) {
		$task_remain = $sql_res['task_amount'] - $sql_res['task_finish_amount'];
		if($task_remain <= 0) {
			echo '此任务已经被做完，请<a href="'.$_SERVER['HTTP_REFERER'].'">点此返回</a>选择其他任务';
			$dbo->unlockTable();
			exit();
		}
		$task_info = $sql_res['task_info'];
		$task_offer = $sql_res['task_offer'];
	} else {
		echo "数据库检索出错，in: ".__FILE__ .'; at: '. __LINE__ ;
		$dbo->unlockTable();
		exit();
	}
	$sql = "select task_id from do_task where user_id = {$_SESSION['uid']}";
	$sql_res = $dbo->getRs($sql);
	if($sql_res) {
		if(in_array($task_id, $sql_res)) { // 关注类任务不能重复做
			echo '此任务您已经做过了，请<a href="'.$_SERVER['HTTP_REFERER'].'">点此返回</a>选择其他任务';
			$dbo->unlockTable();
			exit();
		}
		// 可以做，
		$task_res = $c->follow_by_id($task_info);
		if(isset($task_res['error_code'])) {
			echo	'某处出了错误，'.$task_res['error'].
				"。您未能完成任务，请<a href=\"{$_SERVER['HTTP_REFERER']}\">点此返回</a>";
			$dbo->unlockTable();
			exit();
		}
		// 做成功了，写数据库
		// 写do_task表
		$money = $_SESSION['slevel']*$task_offer;
		$sql = "insert do_task values(NULL, $task_id, {$_SESSION['uid']}, 'finish')";
		$sql_num = $dbo->exeUpdate($sql);
		if(1 != $sql_num) {
			echo 'debug. 写数据库失败。file: '.__FILE__.'; line: '.__LINE__;
			$dbo->unlockTable();
			exit();
		}
		// 写user表
		$sql =	"update user set task_taken=task_taken+1, task_finished=task_finished+1,"
			." total_income=total_income+$money, realtime_income=realtime_income+$money"
			." where user_id = {$_SESSION['uid']} limit 1";
		$sql_num = $dbo->exeUpdate($sql);
		if(1 != $sql_num) {
			echo 'debug. 写数据库出现错误。file: '.__FILE__.'; line: '.__LINE__.'. sql:'.$sql;
			$dbo->unlockTable();
			exit();
		}
		// 写数据成功，释放表锁，释放数据库连接
		$dbo->unlockTable();
		$dbo->close();
	}


	// to do
	// 写数据库 , 包括任务的完成数 , 用户积分，事务记录等
	//跳转
	header("Location:".$siteRoot."task.php");
	exit();
}
?>
