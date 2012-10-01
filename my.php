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

	// 确定参数data的值
    if(!isset($_GET['data'])) {
        $data = 'action';
    } else {
        $data = $_GET['data'];
        if  ( 'change' != $data && 'basic' != $data && 'money' != $data && 'action' != $data ) {
            $data = 'action';
        }
    }

	switch($data) {
		case 'change':
		break;
		case 'money':
			$sql = "select task_taken, task_finished, total_money, realtime_money from user where user_id = '{$_SESSION['uid']}'";
			$res = $dbo->getRow($sql);
			$task_taken = $res['task_taken'];
			$task_finished = $res['task_finished'];
			$total_user_money = price_db_to_user($res['total_money']);
			$realtime_user_money = price_db_to_user($res['realtime_money']);
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
            if('user' == $_SESSION['role']) {
                $sql_count = "select count(1) from do_task where user_id = {$_SESSION['uid']} and status=11";
                $count = $dbo->getCount($sql_count);
                $per_page = 5;
                $total_page = ceil($count/$per_page);
                if(isset($_GET['page']) && intval($_GET['page']) >= 1 && intval($_GET['page']) <= $total_page) {
                    $page = intval($_GET['page']);
                } else {
                    $page = 1;
                }
                // 提取当前用户做过的任务的 任务id，任务屏显名称，任务佣金，任务类型 , 完成时间 按照时间倒序
                $sql = "select task_id, task_type, owner_name, income, time from do_task where user_id = {$_SESSION['uid']} and do_task.status = 11 order by do_id desc";
                $start = ($page-1)*$per_page;
                $sql_res = $dbo->getPage($sql, $start, $per_page);
            } else if('ader' == $_SESSION['role']) {
                $sql_count = "select count(1) from task where owner_id = {$_SESSION['uid']}";
                $count = $dbo->getCount($sql_count);
                $per_page = 5;
                $total_page = ceil($count/$per_page);
                if(isset($_GET['page']) && intval($_GET['page']) >= 1 && intval($_GET['page']) <= $total_page) {
                    $page = intval($_GET['page']);
                } else {
                    $page = 1;
                }
                // 提取当前用户发布过的任务的 任务id，任务类型 任务基本佣金，任务期望数量，目前完成数量
                $sql = "select task_id, type, base_price, amount, finish_amount, create_at, expire_in from task where owner_id = {$_SESSION['uid']} order by task_id desc";
                $start = ($page-1)*$per_page;
                $sql_res = $dbo->getPage($sql, $start, $per_page);
            }
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
			<li><a href="my.php?data=change">修改信息</a></li>
		</ul>
	</div> <!-- end of DIV func_column -->
	<div id="main_content">
	<?php if('money' == $data) { ?>
		<h1>详细收支情况</h1>
		<ul>
            <?php $role_db = user_role_switch($_SESSION['role'], true);?>
			<li>账户当前<?php if(1 == $role_db){echo '收益';}else{echo '余额';}?>：<?php echo $realtime_user_money.' 元。'; ?></li>
			<li>账户总<?php if(1 == $role_db){echo '收益';}else{echo '投入';}?>：<?php echo $total_user_money.' 元。'; ?></li>
			<li><?php if(1 == $role_db){echo '承接';}else{echo '发布';}?>任务数：<?php echo $task_taken; ?> </li>
			<li><?php if(1 == $role_db){echo '完成';}else{echo '完结';}?>任务数：<?php echo $task_finished; ?></li>
			<li>微动力等级：<?php echo $_SESSION['level']; ?></li>
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
            if('user' == $_SESSION['role']) {
            // 普通用户
                foreach($sql_res as $row) {
                    $user_income = price_db_to_user($row['income']);
                    if(2 == $row['task_type']) {
                        echo '<p class="no_vertical_margin">您关注了 '.$row['owner_name'].' 的新浪微博，获得 '.$user_income.' 元。</p>';
                    } else if (1 == $row['task_type']) {
                        echo '<p class="no_vertical_margin">您转发了 '.$row['owner_name'].'的微博，收入 '.$user_income.' 元。</p>';
                    }
                    echo '<br /><span class="no_vertical_margin">on: '.$row['time'].'</span><hr />';
                }
            } else if('ader' == $_SESSION['role']) {
            // 企业用户
                foreach($sql_res as $row) {
                    $user_base_price = price_db_to_user($row['base_price']);
                    $db_total_price = $row['base_price']*$row['amount'];
                    $user_total_price = price_db_to_user($db_total_price);
                    if(2 == $row['type']) {
                        $type_name = '新浪关注任务';
                    } else if (1 == $row['type']) {
                        $type_name = '新浪转发任务';
                    }
                        echo '<p class="no_vertical_margin">您发布了'.$type_name.'，基本佣金'.$user_base_price.'。预期点击量：'.$row['amount'].'。预期总支出：'.$user_total_price.' 元。</p>';
                    echo '<br /><span class="no_vertical_margin">on: '.$row['create_at'].'</span>';
                    echo '<br /><span class="no_vertical_margin">expire in '.$row['expire_in'].' days</span><hr />';
                }
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
	<?php } ?>

	</div><!-- end of DIV main_content -->
	<?php include("uiparts/messcol.php");?>
	<?php include("uiparts/footer.php");?>
</body>
</html>
