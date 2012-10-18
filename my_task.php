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
        //if  ( 'sina_repost' != $type && 'sina_follow' != $type && 'sina_review' != $type && 'sina_create' != $type ) {
        if  ( 'sina_repost' != $type && 'sina_follow' != $type ) {
            $type = 'sina_repost';
        }
    }

    // 根据用户身份获取不同内容
    if( 'ader' == $_SESSION['role'] ) {
    // 企业用户
        switch($type) {
            case 'sina_repost':
                $sql = "select * from task_info_sina_repost join task using(task_id) where owner_id = {$_SESSION['uid']} and type = 1";
                $res = $dbo->getRs($sql);
            break;
            case 'sina_follow':
                $sql = "select * from task_info_sina_follow join task using(task_id) where owner_id = {$_SESSION['uid']} and type = 2";
                $res = $dbo->getRs($sql);
            break;
            default:
            break;
        }
    } else if( 'user' == $_SESSION['role'] ) {
    // 个人用户
        switch($type) {
            case 'sina_repost':
                $sql = "select time, screen_name, text from task_info_sina_repost join do_task using(task_id) where user_id = {$_SESSION['uid']} and task_type = 1";
                $res = $dbo->getRs($sql);
            break;
            case 'sina_follow':
                $sql = "select time, screen_name from task_info_sina_follow join do_task using(task_id) where user_id = {$_SESSION['uid']} and task_type = 2";
                $res = $dbo->getRs($sql);
            break;
            default:
            break;
        }
    } else if( 'master' == $_SESSION['role'] ) {
    // 管理员
        switch($type) {
            case 'sina_repost':
            break;
            case 'sina_follow':
            break;
            default:
            break;
        }
    } else {
    // 未知类型或暂不支持类型用户
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
			<li><a href="my_task.php?type=sina_review"onclick="return false;" >新浪评论(invalid for now)</a></li>
			<li><a href="my_task.php?type=sina_create"onclick="return false;" >新浪原创(invalid for now)</a></li>
		</ul>
	</div> <!-- end of DIV func_column -->
	<div id="main_content">
    <?php
    // 根据不同的type和role输出相应的信息
    if( 'user' == $_SESSION['role'] ) {
    // 个人用户
        switch ($type) {
            case 'sina_repost':
                echo "<h2>我完成的新浪转发任务</h2>\n";
                foreach( $res as $row ) {
                    echo "<p>{$row['time']} <sub>转发了</sub> {$row['screen_name']} <sub>的微博</sub> {$row['text']}</p>";
                    echo '<hr />';
                }
                break;
            case 'sina_follow':
                echo "<h2>我的新浪关注任务</h2>\n";
                foreach($res as $row) {
                    echo "<p>{$row['time']} <sub>关注了</sub> {$row['screen_name']} <sub>的新浪微博</sub> <p>";
                    echo '<hr />';
                }
                break;
            case 'sina_review':
            case 'sina_create':
            default:
                echo "<h2>暂不支持此类型任务</h2>\n";
        }
    } else if ( 'ader' == $_SESSION['role'] ) {
    // 企业用户
        switch ($type) {
            case 'sina_repost':
                echo "<h2>我发布的新浪转发任务</h2>\n";
                foreach( $res as $row ) {
                    echo "<p><sub>转发</sub> {$row['screen_name']} <sub>的微博</sub> {$row['text']}<br /><sub>创建于：</sub>{$row['create_at']}</p>";
                    echo '<hr />';
                }
                break;
            case 'sina_follow':
                echo "<h2>我发布的新浪关注任务</h2>\n";
                foreach($res as $row) {
                    echo "<sub>关注</sub> {$row['screen_name']} <sub>的新浪微博</sub> <sub>创建于：<sub>{$row['create_at']}</sub><p>";
                    echo '<hr />';
                }
                break;
            case 'sina_review':
            case 'sina_create':
            default:
                echo "<h2>暂不支持此类型任务</h2>\n";
        }
    } else if ( 'master' == $_SESSION['role'] ){
    // 管理员
        switch ($type) {
            case 'sina_repost':
                echo "<h2>新浪转发任务</h2>\n";
                foreach( $res as $row ) {
                    echo '<hr />';
                }
                break;
            case 'sina_follow':
                echo "<h2>新浪关注任务</h2>\n";
                foreach($res as $row) {
                    echo '<hr />';
                }
                break;
            case 'sina_review':
            case 'sina_create':
            default:
                echo "<h2>暂不支持此类型任务</h2>\n";
        }
    } else {
    // 未知类型用户
    }
    ?>

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
