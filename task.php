<?php
session_start();
/* task.php
 * 任务页面
 * 负责从数据库里提取任务，显示
 * 给用户，并提供完成任务的接口
 * 任务有四种类型（暂定）：
 *	关注某个用户
 *	转发某条微博
 *	评论某条微博（接口未完成）
 *	创作一条微博（接口未完成）
 * 这样处理当然很不完善，有待改进
*/
include_once("config.php");	// init $authURL
include_once("lib/saetv2.ex.class.php");
// 判断登录状态
if(!isset($_SESSION['uid'])) {
	header("Location:".$siteRoot."index.php");
	exit();
}
include_once("foundation/debug.php");
include_once("foundation/page.php");

$title = "欢迎来到微动力";
$csfile = array("style/main.css", "style/solo.css");
// 以下两句获得授权地址，为了简化，已经将授权地址硬编码入配置文件
//$o = new SaeTOAuthV2( WB_AKEY, WB_SKEY );
//$code_url = $o->getAuthorizeURL( WB_CALLBACK_URL );
$c = new SaeTClientV2( WB_AKEY, WB_SKEY, $_SESSION['stoken']);

$default_type = 'follow';
if(isset($_GET['type'])) {
	$type = $_GET['type'];
	if($type != 'follow' && $type != 'forward' && $type != 'review' && $type != 'create') {
		$type = $default_type;
	}
} else {
	$type = $default_type;
}

// read database
include_once("lib/dbo.class.php");
include_once($dbConfFile);
$dbo = new dbex($dbServs);
$sql_count = "select count(1) from task where task_type='$type' and task_status='normal'";
$count = $dbo->getCount($sql_count);
global $task_per_page;	// init in config.php
$per_page = $task_per_page;
$total_page = ceil($count/$per_page);
if(isset($_GET['page']) && $_GET['page'] >= 1 && $_GET['page'] <= $total_page) {
	$page = $_GET['page'];
} else {
	$page = 1;
}
$sql = "select task_id, owner_id, publisher_id, task_info, task_offer, task_amount, task_finish_amount from task where task_type = '$type'";
$start = ($page-1)*$per_page;
$res = $dbo->getPage($sql, $start, $per_page);

//$show = array();
?>
<?php
/* 变量说明
 *
 * $type --string-- 请求的任务类型，通过GET方式传递
 * $default --string-- 默认的请求任务类型，url中没有类型值或类型值不正确时使用
 * $res --array array(二维数组)-- 数据库检索结果
 *	第二维内容如下：
 *	['task_id'] --int-- 任务id
 *	['owner_id'] --int-- 任务提供着id，即广告主id
 *	['publisher_id'] --int-- 任务发布者id，一般为管理员
 *	['task_info'] --string or bigint-- 任务的参考信息，与task_type向对应，
 				当type为follow,forward,review时，参考信息为
				相应资源的id，当type为create时，参考信息为一
				段文字，描述任务的具体内容。
 *	['task_offer'] --tinyint-- 任务原始佣金，非用户最终佣金
 *	['task_amount'] --int-- 任务总容量，即该任务最多可以被做多少次
 *	['task_finish_amount'] --int-- 任务完成数，已经完成的数量
 * $task_rest_amount --int-- 任务剩余量
 *
 * $followed[] --array-- 当前用户已经关注的人的id列表。
 */
?>

<?php
require_once("uiparts/docheader.php");
?>
<body>
	<?php include("uiparts/header.php"); ?>
	<div id="func_column">
		<ul >
			<li><a href="task.php?type=follow">关注任务</a></li>
			<li><a href="task.php?type=forward">转发任务</a></li>
			<li><a href="task.php?type=review">评论任务</a></li>
			<li><a href="task.php?type=create">原创任务</a></li>
		</ul>
	</div> <!-- end of DIV func_column -->
	<div id="main_content">
		<table>
		<thead> <tr>
				<th>任务id</th> <th>任务类型</th> <th>任务信息</th> <th>任务总量</th><th>任务余额</th> <th>任务发布者</th><th>单价</th><th>状态</th>
			</tr>
		</thead>
		<tbody> 
		<?php foreach($res as $row) {
			$task_rest_amount = $row['task_amount'] - $row['task_finish_amount'];
		?>
		<tr>
			<td><?php echo $row['task_id'];?></td>
			<td><?php echo $type;?></td>
			<td><?php echo $row['task_info'];?></td>
			<td><?php echo $row['task_amount'];?></td>
			<td><?php echo $task_rest_amount;?></td>
			<td><?php echo $row['publisher_id'];?></td>
			<td><?php echo $row['task_offer'];?></td>
			<?php
			switch($type){
			case 'follow':	// 关注任务
				// 获取已关注列表
				///*
				$friends_id = $c->friends_by_id($_SESSION['sid']);
				if_weiboapi_fail($friends_id, __FILE__, __LINE__);
				foreach($friends_id['users'] as $friend) {
					$followed[] = $friend['id'];
				}
				if(in_array($row['task_info'], $followed, false)) {
					echo '<td>已关注</td>';
				} else {
					echo '<td><a href="action/follow.php?id='.$row['task_id'].'">关注</a></td>';
				}
				//*/
				break;
			case 'forward':
				// 微博可以重复转发，所以不必验证用户之前是否已经转发
				// 但是，是否应该允许用户重复转发呢？转发之后如何验证如何提示用户呢？
				echo '<td><a href="action/forward.php?id='.$row['task_info'].'">转发</a></td>';
				break;
			}
			?>
		</tr>
		<?php }?>
		</tbody>
		</table>
		<div id="page_bar">
		<ul>
		<?php	
		$url = 'http://'.$hostName.$_SERVER['SCRIPT_NAME']."?type=$type&page=";
		page_bar($url, $total_page, $page, FALSE);
		?>
		</ul>
		</div>
	</div><!-- end of DIV main_content -->
	<?php include("uiparts/messcol.php");?>
	<?php include("uiparts/footer.php");?>
</body>
</html>
