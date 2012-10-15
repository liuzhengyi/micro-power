<?php
session_start();
/* my_task.php
 * 负责显示和管理用户的个人任务信息 包括个人用户和企业用户
 * 下有若干标签页，由$_GET['type']控制  (新浪转发任务，新浪关注任务……)(按时间等排序)
 *	'sina_repost' == $_GET['type'] 
 *		显示新浪转发任务信息
 *	'fins_follow' == $_GET['type'] 
 *		显示关信息
 *	'change' == $_GET['type'] 
 *		显示用户修改信息页面
 */
include_once("config.php");	// init $authURL
include_once("lib/saetv2.ex.class.php");
include_once($webRoot."foundation/page.php");
include_once($webRoot."foundation/price.php");
include_once($webRoot."foundation/status.php");
$csfile = array("style/main.css", "style/solo.css");
$title = "我的任务";
// 以下两句获得授权地址，为了简化，已经将授权地址硬编码入配置文件
// $o = new SaeTOAuthV2( WB_AKEY, WB_SKEY );
// $code_url = $o->getAuthorizeURL( WB_CALLBACK_URL );
?>
<?php
if(is_login()) {    // 已登录
	require_once("lib/dbo.class.php");
	require_once($dbConfFile);
	$dbo = new dbex($dbServs);

	// 确定参数type的值
    if(!isset($_GET['type'])) {
        $type = 'sina_repost';
    } else {
        $type = $_GET['type'];
        if  ( 'sina_repost' != $type && 'sina_follow' != $type && 'sina_review' != $type && 'sina_create' != $type ) {
            $type = 'sina_repost';
        }
    }

    if( 'ader' == $_SESSION['role'] ) {
        switch($type) {
            case 'sina_repost':
                $sql = "select * from task_info_sina_repost";
                $res = $dbo->getRow($sql);
            break;
            case 'sina_follow':
                $sql = "select task_taken, task_finished, total_money, realtime_money from user where user_id = '{$_SESSION['uid']}'";
                $res = $dbo->getRow($sql);
            break;
            case 'sina_review':
                $sql = "select email, pro, con, reg_time from user where user_id = '{$_SESSION['uid']}' limit 1";
                $res = $dbo->getRow($sql);
            break;
            default:
            break;
        }
    } else if( 'user' == $_SESSION['role'] ) {
        switch($type) {
            case 'sina_repost':
                $sql = "select * from task_info_sina_repost";
                $res = $dbo->getRow($sql);
            break;
            case 'sina_follow':
                $sql = "select task_taken, task_finished, total_money, realtime_money from user where user_id = '{$_SESSION['uid']}'";
                $res = $dbo->getRow($sql);
            break;
            case 'sina_review':
                $sql = "select email, pro, con, reg_time from user where user_id = '{$_SESSION['uid']}' limit 1";
                $res = $dbo->getRow($sql);
            break;
            default:
            break;
        }
    }
    else if( 'master' == $_SESSION['role'] ) {
        switch($type) {
            case 'sina_repost':
            break;
            case 'sina_follow':
                $sql = "select task_taken, task_finished, total_money, realtime_money from user where user_id = '{$_SESSION['uid']}'";
                $res = $dbo->getRow($sql);
            break;
            case 'sina_review':
                $sql = "select email, pro, con, reg_time from user where user_id = '{$_SESSION['uid']}' limit 1";
                $res = $dbo->getRow($sql);
            break;
            default:
            break;
        }
    } else {
    // not master && not ader && not user
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
			<li><a href="my_task.php?type=sina_repost">新浪转发</a></li>
			<li><a href="my_task.php?type=sina_follow">新浪关注</a></li>
			<li><a href="my_task.php?type=sina_review">新浪评论</a></li>
			<li><a href="my_task.php?type=sina_create">新浪原创</a></li>
		</ul>
	</div> <!-- end of DIV func_column -->
	<div id="main_content">
    <?php switch ($type) { case 'hello': ?>
    <?php   case 'sina_repost': ?>
    <h2>我的新浪转发任务</h2>
    <?php       break; ?>
    <?php   case 'sina_follow': ?>
    <h2>我的新浪关注任务</h2>
    <?php       break; ?>
    <?php   case 'sina_review': ?>
    <h2>我的新浪评论任务</h2>
    <?php       break; ?>
    <?php   case 'sina_create': ?>
    <h2>我的新浪原创任务</h2>
    <?php       break; ?>
    <?php   default: ?>
    <h2>暂不支持此类型任务</h2>
    <?php } ?>

    <?php var_dump($res); ?>
    <?php if( isset($total_page) && 0 < $total_page ) { ?>
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
	<?php include("uiparts/messcol.php"); ?>
	<?php include("uiparts/footer.php"); ?>
</body>
</html>
