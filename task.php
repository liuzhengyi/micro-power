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
 * 这样处理不完善，有待改进
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
include_once("foundation/price.php");

$title = "欢迎来到微动力";
$csfile = array("style/main.css", "style/solo.css");
// 以下两句获得授权地址，为了简化，已经将授权地址硬编码入配置文件
//$o = new SaeTOAuthV2( WB_AKEY, WB_SKEY );
//$code_url = $o->getAuthorizeURL( WB_CALLBACK_URL );
$c = new SaeTClientV2( WB_AKEY, WB_SKEY, $_SESSION['stoken']);

// 确定请求任务类型
$default_type = 'follow';
if(isset($_GET['type'])) {
	$type = $_GET['type'];
	if($type != 'follow' && $type != 'forward' && $type != 'review' && $type != 'create') {
		$type = $default_type;
	}
} else {
	$type = $default_type;
}

// 读取相关任务数据
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
//$sql = "select task_id, owner_id, publisher_id, task_info, task_icon_url, task_screen_name, task_location, task_offer, task_amount, task_finish_amount from task where task_type = '$type' and task_id not in (select task_id from do_task where user_id = {$_SESSION['uid']} and (status='finish' or status='fail'))";
$sql = "select task_id, owner_id, publisher_id, task_info, task_offer, task_amount, task_finish_amount, task_screen_name, task_location, task_icon_url, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text from task where task_type = '$type' and task_id not in (select task_id from do_task where user_id = {$_SESSION['uid']})";
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
 * $_SESSION[followed_id] --array-- 当前用户已经关注的人的id列表。
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
    <?php if(!$_SESSION['is_bind_weibo']) { ?>
    <p class="hint"> 绑定微博后您就可以做任务赚钱了。<a href="<?php echo $authURL; ?>">现在绑定</a></p>
    <?php } ?>
        <?php switch ($type) { case 'follow': ?>
                <div id="task_show">
                <?php foreach($res as $row) {
                    $real_price = $row['task_offer']*$_SESSION['slevel']/40;
                    $top_price = $row['task_offer']*10/40;
                    $real_price = real_price($row['task_offer'], $_SESSION['slevel']);
                    $top_price = top_price($row['task_offer']);
                ?>
                    <div id="task_block">
                    <img src="<?php echo $row['task_icon_url']; ?>" />
                    <p class="task_describe">
                        <?php echo $row['task_screen_name']; ?><br />
                        <?php echo $row['task_location']; ?><br />
                        关注ta您可获得<?php echo $real_price; ?>元，
                        最高可获得<?php echo $top_price; ?>元<a href="help.php#price"><sup>?</sup></a>。
                        <?php
                        if(isset($_SESSION['is_bind_weibo']) && $_SESSION['is_bind_weibo']) {
                            if(in_array($row['task_info'], $_SESSION['followed_id'], false)) {
                                echo '已关注';
                            } else {
                                echo '<a href="action/follow.php?id='.$row['task_id'].'">关注</a>';
                            }
                        } else {
                               echo '不可用<a href="help.php#task_invalid">?</a>';
                        }
                        ?>
                        。<a href="action/follow.php?id=<?php echo $row['task_id']; ?>&type=hide">屏蔽</a>
                    </p>
                    </div><!-- end of DIV task_block -->
                <?php } ?>
                </div><!-- end of DIV task_show -->
            <?php break; ?>
            <?php case 'forward': ?>
                <div id="task_show">
                    <?php foreach($res as $row) {
                        $real_price = $row['task_offer']*$_SESSION['slevel']/40;
                        $top_price = $row['task_offer']*10/40;
                        $real_price = real_price($row['task_offer'], $_SESSION['slevel']);
                        $top_price = top_price($row['task_offer']);
                    ?>
                    <div class="task_block">
                        <p><?php
                           echo '<p class="forward_task_text">'.$row['task_text'].'</p>';
                           echo '<p class="forward_task_comment">by:'.$row['task_screen_name'].'。<br />转发此微博，您可以获利'.$real_price.'元，最高可获利'.$top_price.'元<sup><a href="help.php#price">?</a></sup>。';
                            if(isset($_SESSION['is_bind_weibo']) && $_SESSION['is_bind_weibo']) {
                                echo '<a href="action/forward.php?id='.$row['task_id'].'">转发</a>';
                            } else {
                                echo '转发(不可用)<a href="help.php#task_invalid"><sup>?</sup></a>';
                            }
                                echo '</p><hr />';
                            ?>
                        </p>
                    </div>
                    <?php } ?>
                </div><!-- end of DIV tash_show -->
            <?php break; ?>

		<?php }?>
        <hr class="clear" />
		<div id="page_bar">
		<ul>
		<?php	
		$url = 'http://'.$hostName.$_SERVER['SCRIPT_NAME']."?type=$type&page=";
		page_bar($url, $total_page, $page, FALSE);
		?>
		</ul>
		</div><!-- end of DIV page_bar -->
	</div><!-- end of DIV main_content -->
	<?php include("uiparts/messcol.php");?>
	<?php include("uiparts/footer.php");?>
</body>
</html>
