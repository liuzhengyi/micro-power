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
if(isset($_SESSION['name']) && isset($_SESSION['uid'])) {	// 已登录
	$is_login = true;

	require_once("lib/dbo.class.php");
	require_once($dbConfFile);
	$dbo = new dbex($dbServs);

	// get query parameter
	if(isset($_GET['data'])) {
		$data = $_GET['data'];
	} else {
		$data = 'basic';
	}
	switch($data) {
		case 'change':
		break;
		case 'money':
			$sql = "select task_taken, task_finished, total_income, realtime_income from user where user_id = '{$_SESSION['uid']}'";
			$res = $dbo->getRow($sql);
			$task_taken = $res['task_taken'];
			$task_finished = $res['task_finished'];
			$total_income = $res['total_income'];
			$realtime_income = $res['realtime_income'];
		break;
		default:	// case 'basic'
			$sql = "select email, pro, con, reg_time from user where user_id = '{$_SESSION['uid']}' limit 1";
			$res = $dbo->getRow($sql);
			$email = $res['email'];
			$pro = $res['pro'];
			$con = $res['con'];
			$reg_time = $res['reg_time'];
	}
} else {	// 尚未登录
	$is_login = false;
	header("Location:index.php");
}
?>

<?php
include("uiparts/docheader.php");
?>
<body>
	<?php include("uiparts/header.php"); ?>
	<div id="func_column">
		<ul>
			<li><a href="my.php?data=basic">基本信息</a></li>
			<li><a href="my.php?data=money">收支信息</a></li>
			<li><a href="my.php?data=change">修改信息</a></li>
		</ul>
	</div> <!-- end of DIV func_column -->
	<div id="main_content">
	<?php if('money' == $data) { ?>
		<h1>详细收支情况</h1>
		<ul>
			<li>账户当前收益：<?php echo $realtime_income; ?></li>
			<li>账户总收益：<?php echo $total_income; ?></li>
			<li>承接任务数：<?php echo $task_taken; ?> </li>
			<li>完成任务数：<?php echo $task_finished; ?></li>
			<li>微博等级：<?php echo $_SESSION['slevel'];echo '<a href="action/evaluate.php">申请评级</a>'?></li>
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
	<?php } else {?>
		<h1>基本信息</h1>
		<ul>
			<li>注册邮箱：<?php echo $email; ?></li>
			<li>好评数：<?php echo $pro; ?></li>
			<li>差评数：<?php echo $con; ?></li>
			<li>注册时间：<?php echo $reg_time; ?></li>

		</ul>
	<?php } ?>

	</div><!-- end of DIV main_content -->
	<?php include("uiparts/messcol.php");?>
	<?php include("uiparts/footer.php");?>
</body>
</html>
