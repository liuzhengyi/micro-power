<?php
session_start();
/* my.php
 * 负责显示用户的个人信息
 * 下有若干标签叶，由$_GET['type']控制
 *	'basic' == $_GET['type'] 
 *		显示用户基本信息
 *	'money' == $_GET['type'] 
 *		显示用户收支相关信息
 *	'change' == $_GET['type'] 
 *		显示用户修改信息页面
 */
include_once("config.php");	// init $authURL
include_once("lib/saetv2.ex.class.php");
include_once($webRoot."foundation/page.php");
include_once($webRoot."foundation/price.php");
include_once($webRoot."foundation/status.php");
// 判断登录状态
if(!isset($_SESSION['uid'])) {
	header("Location:".$siteRoot."index.php");
	exit();
}

$csfile = array("style/main.css", "style/solo.css");
$title = "个人中心";
// 以下两句获得授权地址，为了简化，已经将授权地址硬编码入配置文件
//$o = new SaeTOAuthV2( WB_AKEY, WB_SKEY );
//$code_url = $o->getAuthorizeURL( WB_CALLBACK_URL );
?>
<?php
//if(isset($_SESSION['name']) && isset($_SESSION['uid'])) {	
if(is_login()) {    // 已登录
	require_once("lib/dbo.class.php");
	require_once($dbConfFile);
	$dbo = new dbex($dbServs);

	// get query parameter
	if(isset($_GET['data'])) {
		$data = $_GET['data'];
        if('change' == $data) {
            $data = 'action';
        }
	} else {
		$data = 'action';
	}
	switch($data) {
		case 'change':
		break;
		case 'money':
			$sql = "select task_taken, task_finished, total_income, realtime_income from user where user_id = '{$_SESSION['uid']}'";
			$res = $dbo->getRow($sql);
			$task_taken = $res['task_taken'];
			$task_finished = $res['task_finished'];
			$total_income = to_screen_price($res['total_income']);
			$realtime_income = to_screen_price($res['realtime_income']);
		break;
		case 'basic':	// case 'basic'
			$sql = "select email, pro, con, reg_time from user where user_id = '{$_SESSION['uid']}' limit 1";
			$res = $dbo->getRow($sql);
			$email = $res['email'];
			$pro = $res['pro'];
			$con = $res['con'];
			$reg_time = $res['reg_time'];
        break;
        default:    // case 'action'
            $sql_count = "select count(1) from do_task where user_id = {$_SESSION['uid']} and status='finish'";
            $count = $dbo->getCount($sql_count);
            $per_page = 5;
            $total_page = ceil($count/$per_page);
            if(isset($_GET['page']) && intval($_GET['page']) >= 1 && intval($_GET['page']) <= $total_page) {
                $page = intval($_GET['page']);
            } else {
                $page = 1;
            }
            // 提取当前用户做过的任务的 任务id，任务屏显名称，任务佣金，任务类型 , 完成时间 按照时间倒序
            $sql = "select do_task.task_id, do_task.time, task_screen_name, task_offer, task_type from do_task, task where do_task.user_id={$_SESSION['uid']} and do_task.status = 'finish' and do_task.task_id = task.task_id order by do_id desc ";
            $start = ($page-1)*$per_page;
            $sql_res = $dbo->getPage($sql, $start, $per_page);
        break;
	}
} else {	// 尚未登录
	header("Location:index.php");
    exit();
}
?>

<?php
include("uiparts/docheader.php");
?>
<body>
	<?php include("uiparts/header.php"); ?>
	<div id="func_column">
		<ul>
			<li><a href="my.php?data=action">我的动态</a></li>
			<li><a href="my.php?data=basic">基本信息</a></li>
			<li><a href="my.php?data=money">收支信息</a></li>
<!--			<li><a href="my.php?data=change">修改信息</a></li>  -->
		</ul>
	</div> <!-- end of DIV func_column -->
	<div id="main_content">
	<?php if('money' == $data) { ?>
		<h1>详细收支情况</h1>
		<ul>
			<li>账户当前收益：<?php echo $realtime_income.' 元。'; ?></li>
			<li>账户总收益：<?php echo $total_income.' 元。'; ?></li>
			<li>承接任务数：<?php echo $task_taken; ?> </li>
			<li>完成任务数：<?php echo $task_finished; ?></li>
			<li>微博等级：<?php echo $_SESSION['slevel'];echo '<a href="action/evaluate.php" >申请评级</a>'?></li>
		</ul>
	<?php } else if ('change' == $data){ ?>
		<h1>修改信息</h1>
		<form action="action/change.php" method="post">
		<ul>
			<li>
			<label for="change_email">email:<input type="text" name="email" id="change_email" /></label>
			</li><li>
			<label for="change_name">nick_name:<input type="text" name="name" id="chang_name" /></label>
			</li><li>
			<input type="submit" name="submit" value="save" />
			</li>
		</ul>
		</form>
	<?php } else if('basic' == $data) {?>
		<h1>基本信息</h1>
		<ul>
			<li>登录邮箱：<?php if(empty($email)) { echo '尚未设定 <a href="my.php?data=change">现在设定</a>';} else {echo $email;} ?></li>
			<li>昵称：<?php echo $_SESSION['name']; ?></li>
			<li>新浪微博状态：<?php if(empty($_SESSION['sid'])) {echo '尚未绑定';} else {echo '已绑定';} ?></li>
			<li>新浪微博等级：<?php echo $_SESSION['slevel'].' ';echo '<a href="action/evaluate.php" >申请评级</a>'?></li>
			<li>好评数：<?php echo $pro; ?></li>
			<li>差评数：<?php echo $con; ?></li>
			<li>注册时间：<?php echo $reg_time; ?></li>

		</ul>
	<?php } else { // 我的动态，默认 ?>
    <?php
            foreach($sql_res as $row) {
                $real_price = real_price($row['task_offer'], $_SESSION['slevel']);
                if('follow' == $row['task_type']) {
                    echo '<p class="no_vertical_margin">你关注了 '.$row['task_screen_name'].' 的新浪微博，获得 '.$real_price.' 元。</p>';
                } else if ('forward' == $row['task_type']) {
                    echo '<p class="no_vertical_margin">你转发了 '.$row['task_screen_name'].'的微博，收入 '.$real_price.' 元。</p>';
                }
                echo '<br /><span class="no_vertical_margin">on: '.$row['time'].'</span><hr />';
            }
            ?>
		<div id="page_bar">
		<ul>
		<?php	
		$url = 'http://'.$hostName.$_SERVER['SCRIPT_NAME']."?type=$type&page=";
		page_bar($url, $total_page, $page, TRUE);
		?>
		</ul>
		</div><!-- end of DIV page_bar -->
        <a href="tool/check_forward_draft1.php" target="_blank">检测转发任务方案1(unfinish)</a><br />
        <a href="tool/check_forward_draft2.php" target="_blank">检测转发任务方案2</a><br />
        <a href="tool/check_forward_draft3.php" target="_blank">检测转发任务方案3</a><br />
        <a href="tool/check_forward_draft4.php" target="_blank">检测转发任务方案4</a><br />
        <hr />
        <a href="tool/check_follow_draft1.php" target="_blank">检测关注任务方案1</a><br />
	<?php } ?>

	</div><!-- end of DIV main_content -->
	<?php include("uiparts/messcol.php");?>
	<?php include("uiparts/footer.php");?>
</body>
</html>
