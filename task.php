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
include_once($webRoot."foundation/status.php");
if(!is_login()) {
    header('Location:'.$siteRoot.'index.php');
}
include_once($webRoot."foundation/debug.php");
include_once($webRoot."foundation/page.php");
include_once($webRoot."foundation/price.php");
include_once($webRoot."foundation/switch.php");
include_once($webRoot."lib/saetv2.ex.class.php");

$title = "欢迎来到微动力";
$csfile = array("style/main.css", "style/solo.css");
// 以下两句获得授权地址，为了简化，已经将授权地址硬编码入配置文件
//$o = new SaeTOAuthV2( WB_AKEY, WB_SKEY );
//$code_url = $o->getAuthorizeURL( WB_CALLBACK_URL );
$c = new SaeTClientV2( WB_AKEY, WB_SKEY, $_SESSION['stoken']);

// 确定请求任务类型
$default_type = 'sina_follow';
if(isset($_GET['type'])) {
	$type = $_GET['type'];
	if($type != 'sina_follow' && $type != 'sina_repost' && $type != 'sina_review' && $type != 'sina_create') {
		$type = $default_type;
	}
} else {
	$type = $default_type;
}
$type_db = task_type_switch($type, TRUE);

// 读取相关任务数据
include_once("lib/dbo.class.php");
include_once($dbConfFile);
$dbo = new dbex($dbServs);
$sql_count = "select count(1) from task where type='$type_db' and status=1";
$count = $dbo->getCount($sql_count);
global $task_per_page;	// init in config.php
$per_page = $task_per_page;
$total_page = ceil($count/$per_page);
if(isset($_GET['page']) && $_GET['page'] >= 1 && $_GET['page'] <= $total_page) {
	$page = intval($_GET['page']);
} else {
	$page = 1;
}
switch($type) {
    case 'sina_repost': // sina_repost , type == 1
        $sql = "select task_id, owner_id, publisher_id,base_price, amount, finish_amount, sina_uid, sina_wid, text, screen_name, location, user_description, profile_image_url, thumbnail_pic_url, bmiddle_pic_url, original_pic_url from task join task_info_sina_repost using(task_id) where type = 1 and  status=1 and task_id not in (select task_id from do_task where user_id = {$_SESSION['uid']})";
        break;
    default: // sina_follow , type == 2
        $sql = "select task_id, owner_id, publisher_id, base_price, amount, finish_amount, sina_uid, screen_name, friends_count, followers_count, weibo_count, profile_image_url, avatar_large_url, location, user_description from task join task_info_sina_follow using(task_id) where type=2 and status=1 and task_id not in (select task_id from do_task where user_id = {$_SESSION['uid']})";
}
$start = ($page-1)*$per_page;
$res = $dbo->getPage($sql, $start, $per_page);

//$show = array();
?>
<?php
/* 变量说明 未完待续
 * $type --string-- 请求的任务类型，通过GET方式传递
 * $default --string-- 默认的请求任务类型，url中没有类型值或类型值不正确时使用
 * $res --array array(二维数组)-- 数据库检索结果
 *	第二维内容如下：
 */
?>

<?php
require_once("uiparts/docheader.php");
?>
<body>
	<?php include("uiparts/header.php"); ?>
	<div id="func_column">
		<ul >
			<li><a href="task.php?type=sina_follow">关注任务</a></li>
			<li><a href="task.php?type=sina_repost">转发任务</a></li>
			<li><a alt="task.php?type=sina_review">评论任务(暂不可用)</a></li>
			<li><a alt="task.php?type=sina_create">原创任务(暂不可用)</a></li>
		</ul>
	</div> <!-- end of DIV func_column -->
	<div id="main_content">
    <?php if(!$_SESSION['is_bind_weibo']) { ?>
    <p class="hint"> 绑定微博后您就可以做任务赚钱了。<a href="<?php echo $authURL; ?>">现在绑定</a></p>
    <?php } ?>
        <?php switch ($type) { case 'sina_follow': ?>
                <div id="task_show">
                <?php foreach($res as $row) {
                    $user_level_price = price_db_to_user(price_base_to_level($row['base_price'], $_SESSION['slevel']));
                    $user_top_price = price_db_to_user(price_base_to_top($row['base_price']));
                ?>
                    <div id="task_block">
                    <img src="<?php echo $row['avatar_large_url']; ?>" />
                    <p class="task_describe">
                        <a href="http://weibo.com/u/<?php echo $row['sina_uid']?>" target="_blank"><?php echo $row['screen_name']; ?></a><br />
                        来自：<?php echo $row['location']; ?><br />
                        关注ta您可获得<?php echo $user_level_price; ?>元，
                        最高可获得<?php echo $user_top_price; ?>元<a href="help.php#price"><sup>?</sup></a>。
                        <?php
                        if(isset($_SESSION['is_bind_weibo']) && $_SESSION['is_bind_weibo']) {
                            if(in_array($row['sina_uid'], $_SESSION['followed_id'], false)) {
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
            <?php case 'sina_repost': ?>
                <div id="task_show">
                    <?php foreach($res as $row) {
                        $user_level_price = price_db_to_user(price_base_to_level($row['base_price'], $_SESSION['slevel']));
                        $user_top_price = price_db_to_user(price_base_to_top($row['base_price']));
                    ?>
                    <div class="task_block">
                        <p><?php
                           echo '<p class="repost_task_text">'.$row['text'].'</p>';
                           echo '<p class="repost_task_comment">by:<a href="http://weibo.com/u/'.$row['sina_uid'].'" target="_blank">'.$row['screen_name'].'</a>。<br />转发此微博，您可以获利'.$user_level_price.'元，最高可获利'.$user_top_price.'元<sup><a href="help.php#price">?</a></sup>。';
                            if(isset($_SESSION['is_bind_weibo']) && $_SESSION['is_bind_weibo']) {
                                echo '<a href="action/repost.php?id='.$row['task_id'].'">转发</a>';
                            } else {
                                echo '转发(不可用)<a href="help.php#task_invalid"><sup>?</sup></a>';
                            }
                            ?>
                        。<a href="action/repost.php?id=<?php echo $row['task_id']; ?>&type=hide">屏蔽</a></p><hr />
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
		page_bar($url, $total_page, $page, TRUE);	// 测试时用 上线时将TRUE改为FALSE
		?>
		</ul>
		</div><!-- end of DIV page_bar -->
	</div><!-- end of DIV main_content -->
	<?php include("uiparts/messcol.php");?>
	<?php include("uiparts/footer.php");?>
</body>
</html>
