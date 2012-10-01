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
include_once($webRoot."foundation/debug.php");
include_once($webRoot."foundation/price.php");
include_once($webRoot."foundation/status.php");
need_login();
need_be_user();

if(!isset($_GET['id'])) {   // 非正常访问
    header("Location:".$siteRoot."index.php");
    exit();
} else {
	$task_id = intval($_GET['id']);
    if(empty($task_id)) {
        header("Location:".$siteRoot."index.php");
        exit();
    }

    $c = new SaeTClientV2( WB_AKEY, WB_SKEY, $_SESSION['stoken']);
	// 先尝试更新task表中finish_amount值，若更新成功则做任务，若任务失败，再回滚数据。未使用事务。
	$dbo = new dbex($dbServs);
    if(isset($_GET['type']) && 'hide'==$_GET['type']) { // 屏蔽此任务 status-21
        $sql = "insert into do_task(task_id, user_id, status, time) values($task_id, {$_SESSION['uid']}, '21', now())";
        $sql_res = $dbo->exeUpdate($sql);
        if(1 !== $sql_res) {
            $msg = '屏蔽失败，sql:['.$sql.']</p>';
        } else {
            $msg = '屏蔽成功';
        }
        $to_url = $_SERVER['HTTP_REFERER']; $to_name = '任务列表';
        delay_jump(3, $msg, $to_url, $to_name);
        /*  这样好像不管用. but why?
        sleep(1);
        echo 'already hide it. return to task page in 2 sec.';
        sleep(1);
        echo 'already hide it. return to task page in 1 sec.';
        sleep(1);
        echo 'already hide it. return to task page in 0 sec.';
        */
    }
    // 尝试完成此任务
	$sql = "update task set finish_amount=finish_amount+1 where task_id=$task_id and finish_amount < amount limit 1";
	$sql_num = $dbo->exeUpdate($sql);
	if(1 != $sql_num) {	// 更新task表中finish_amount失败，尝试其他任务
		$dbo->close();
		$msg = "对不起，此任务已经被做完了请选择其他任务。";
        $to_url = $_SERVER['HTTP_REFERER'];
        $to_name = '任务列表';
        delay_jump(3, $msg, $to_url, $to_name);
	}
	// 已经更新了task中的数据，现在做任务
	// 先获取任务信息
	$sql = "select sina_uid, base_price, screen_name from task join task_info_sina_follow using(task_id) where task_id = $task_id";
	$sql_res = $dbo->getRow($sql);
	if(!$sql_res) {
		echo '读数据库出错，FILE: '.__FILE__.'; LINE: '.__LINE__.';SQL: '.$sql;
		$dbo->close();
		exit();
	}
	$sina_uid = $sql_res['sina_uid'];
	$base_price = $sql_res['base_price'];
    $task_owner_name = $sql_res['screen_name'];
	$task_res = $c->follow_by_id($sina_uid);
//	if_weiboapi_fail($task_res, __FILE__, __LINE__);
//  此处不应使用if_weiboapi_fail(),因为它对调用失败的处理只是简单的输出提示，不满足此处处理的需要。
	if(isset($task_res['error_code'])) { // 没做成功，回滚task表中finish_amount数据
		$sql = "update task set finish_amount = finish_amount - 1 where task_id = $task_id limit 1";
		$dbo->exeUpdate($sql);
		$dbo->close();
        if(21327 === $task_res['error_code']) {
            if_weiboapi_fail($task_res);  // token expired
        } else {
            $msg = 'api调用某处出了错误：'.$task_res['error']
                ."。您未能完成任务。";
            $to_url = $_SERVER['HTTP_REFERER'];
            $to_name = '任务列表';
            delay_jump(3, $msg, $to_url, $to_name);
        }
	}
	// 做成功了，写数据库，写SESSION    对应do_task status 11 正常完成
	// 写do_task表
    $db_level_money = price_base_to_level($base_price, $_SESSION['slevel']);
	$sql = "insert do_task (task_id, user_id, status, task_type, owner_name, income, repost_mid, time)values($task_id, {$_SESSION['uid']}, 11, 2, '$task_owner_name', '$db_level_money', NULL, now())";
	$sql_num = $dbo->exeUpdate($sql);
	if(1 != $sql_num) {
		$dbo->close();
		$debug_msg = '写数据库失败。SQL statement: '.$sql;
        debug($debug_msg, __FILE__, __LINE__, TRUE, 'error');
		exit();
	}
	// 写user表
	$sql =	"update user set task_taken=task_taken+1, task_finished=task_finished+1,"
		." total_money=total_money+$db_level_money, realtime_money=realtime_money+$db_level_money"
		." where user_id = {$_SESSION['uid']} limit 1";
	$sql_num = $dbo->exeUpdate($sql);
	if(1 != $sql_num) {
		$dbo->close();
		$debug_msg = '写数据库失败。SQL statement: '.$sql;
        debug($debug_msg, __FILE__, __LINE__, TRUE, 'error');
		exit();
	}
	// 写数据成功，释放数据库连接
	$dbo->close();
    $_SESSION['user_realtime_money'] = $_SESSION['user_realtime_money'] + price_db_to_user($db_level_price);
	$_SESSION['followed_id'][] = $sina_uid;
    $msg = '恭喜！您成功完成了XX任务，获利XX元。';
    $to_url = $_SERVER['HTTP_REFERER'];
    $to_name = '任务列表';
    delay_jump(3, $msg, $to_url, $to_name);
}
?>
