<?php
session_start();
/* forward.php
 * 负责处理用户--做转发任务--的请求
 * 同时可以处理用户--屏蔽转发任务--的请求
 */
include_once("../config.php");
include_once($webRoot.'lib/saetv2.ex.class.php');
include_once($webRoot."lib/dbo.class.php");
include_once($dbConfFile);
include_once($webRoot."foundation/debug.php");
include_once($webRoot."foundation/price.php");
include_once($webRoot."foundation/status.php");
need_login();
need_be_user();

if(!isset($_GET['id'])) {   // 非正常访问
    header("Location:$siteRoot");
    exit();
} else {
	$task_id = intval($_GET['id']);
    if(empty($task_id)) {   // 必须参数不符合要求
        header("Location:".$siteRoot."index.php");
        exit();
    }
    
    $c = new SaeTClientV2(WB_AKEY, WB_SKEY, $_SESSION['stoken']);
    // 先尝试更新task表中task_finish_amount值，若更新成功则做任务，若任务失败，再回滚数据。未使用事务。
	$dbo = new dbex($dbServs);
    if(isset($_GET['type']) && 'hide'==$_GET['type']) {
        // 屏蔽此任务   对应status-21
        $sql = "insert into do_task (task_id, user_id, status, time) values ($task_id, {$_SESSION['uid']}, 21, now())";
        $sql_res = $dbo->exeUpdate($sql);
        $dbo->close();
        if(1 !== $sql_res) {
            $msg = '屏蔽失败，sql:['.$sql.']</p>';
        } else {
            $msg = '屏蔽成功';
        }
        $to_url = $_SERVER['HTTP_REFERER'];
        $to_name = '任务列表';
        delay_jump(3, $msg, $to_url, $to_name);
    }
    // 尝试更新task_finish_amount 
	$sql = "update task set task_finish_amount=task_finish_amount+1 where task_id=$task_id and task_finish_amount < task_amount limit 1";
	$sql_num = $dbo->exeUpdate($sql);
    // 若更新task表中task_finish_amount失败，跳回任务页面
	if(1 != $sql_num) {
		$dbo->close();
		$msg = "对不起，此任务已经被做完了请选择其他任务。";
        $to_url = $_SERVER['HTTP_REFERER'];
        $to_name = '任务列表';
        delay_jump(3, $msg, $to_url, $to_name);
	}
    // 已经更新了task中的数据，现在做任务
    // 先获取任务信息
	$sql = "select sina_wid, task_offer, screen_name from task join task_info_sina_forward using(task_id) where task_id = $task_id";
	$sql_res = $dbo->getRow($sql);
    // error control need upgrade
	if(!$sql_res) {
		$dbo->close();
        $err_msg = '读数据库出错，FILE: '.__FILE__.'; LINE: '.__LINE__.';SQL: '.$sql;
        debug($err_msg, __FILE__, __LINE__, TRUE, 'fatal');
	}
	$sina_wid = $sql_res['sina_wid'];
	$task_offer = $sql_res['task_offer'];
    $task_owner_name = $sql_res['screen_name'];
	$task_res = $c->repost($sina_wid);
//	if_weiboapi_fail($task_res, __FILE__, __LINE__);
// 没做成功，回滚task表中task_finish_amount数据
	if(isset($task_res['error_code'])) {
		echo	'某处出了错误：'.$task_res['error']
			."。您未能完成任务，请<a href=\"{$_SERVER['HTTP_REFERER']}\">点此返回</a>";
		$sql = "update task set task_finish_amount = task_finish_amount - 1 where task_id = $task_id limit 1";
		$dbo->exeUpdate($sql);
		$dbo->close();
		exit();
	}
// 做成功了，写数据库，写SESSION
// 写do_task表
    $db_level_money = price_base_to_level($task_offer, $_SESSION['slevel']);
//	$sql = "insert do_task (task_id, user_id, status, repost_mid, time)values($task_id, {$_SESSION['uid']}, '11', {$task_res['retweeted_status']['mid']}, now())";
//  此处应注意，retweeted_status['mid']是原微博的mid，而非转发产生的mid
	$sql = "insert do_task (task_id, user_id, status, task_type, owner_name, income, repost_mid, time)values($task_id, {$_SESSION['uid']}, 11, 1, '$task_owner_name', '$db_level_money', '{$task_res['mid']}', now())";
	$sql_num = $dbo->exeUpdate($sql);
	if(1 != $sql_num) {
		echo 'debug. 写数据库失败。file: '.__FILE__.'; line: '.__LINE__;
		$dbo->close();
		exit();
	}
	$sql =	"update user set task_taken=task_taken+1, task_finished=task_finished+1,"
		." total_income=total_income+$db_level_money, realtime_income=realtime_income+$db_level_money"
		." where user_id = {$_SESSION['uid']} limit 1";
	// 写user表
	$sql_num = $dbo->exeUpdate($sql);
	if(1 != $sql_num) {
		echo 'debug. 写数据库出现错误。file: '.__FILE__.'; line: '.__LINE__.'. sql:'.$sql;
		$dbo->close();
		exit();
	}
	// 写数据成功，释放数据库连接
	$dbo->close();
    $sec=3;$msg='转发成功！';$to_url=$_SERVER['HTTP_REFERER'];$to_name='任务页面';
    delay_jump($sec,$msg,$to_url,$to_name);
}
?>
