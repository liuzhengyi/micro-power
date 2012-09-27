<?php
session_start();
/* create_task.php
 * 创建任务页面，仅对ader和master开放
 */
?>
<?php
/*
创建任务者的role应该是ader或master。<br />

通过通过参数确定要创建何种任务，然后结合task_info_xxx表，确定创建任务所需数据。<br />

创建一个新浪转发任务，<br />
1.检测创建者是否绑定新浪微博，否则退出。<br />
2.列出创建者的原创微博列表以供创建者选择。<br />
3.设定任务单价，数量。<br />
4.算账，扣钱，钱不够则返回3，重新设定。<br />
5.发布。<br />

创建一个新浪关注任务，<br />
1.检测创建这是否绑定新浪微博，否则退出；<br />
2.让创建者选择从（自己，粉丝，关注，输入昵称）；<br />
3.设定任务单价，数量；<br />
4.算账，扣钱，余额不够则返回3，重新设定；<br />
5.发布。<br />

创建一个新浪微博原创任务：<br />
1.检测创建者是否绑定新浪，否则退出；<br />
2.创建者描述原创任务；<br />
3.设定单价，数量；<br />
4.算账，扣钱，余额不足则返回3，重新设定；<br />
5.发布。<br />
*/
?>
<?php
include_once("config.php");	// init $authURL
include_once($webRoot."foundation/status.php");
need_login();
need_be_ader_or_master();
include_once($webRoot."foundation/debug.php");
include_once($webRoot."foundation/page.php");
include_once($webRoot."foundation/price.php");
include_once($webRoot."foundation/switch.php");
$title = "欢迎来到微动力-创建任务";
$csfile = array("style/main.css", "style/solo.css");

// 确定请求任务类型
$default_type = 'sina_follow';
if(isset($_GET['type'])) {
	$type = $_GET['type'];
	if($type != 'sina_follow' && $type != 'sina_forward' && $type != 'sina_review' && $type != 'sina_create') {
		$type = $default_type;
	}
} else {
	$type = $default_type;
}
$type_db = task_type_switch($type, TRUE);
include_once($webRoot."lib/saetv2.ex.class.php");
$c = new SaeTClientV2( WB_AKEY, WB_SKEY, $_SESSION['stoken']);
include_once("lib/dbo.class.php");
include_once($dbConfFile);
$dbo = new dbex($dbServs);
switch ($type_db) {
    case 1: // sina_forward
        $uid = $_SESSION['sid']; $page=1; $count=200; $since_id=0; $max_id=0;
        $feature = 1;   // 0:全部，1：原创，2图片，3视频，4音乐
        $trim_user = 1; // 0:返回完整user信息，1：user字段仅返回uid
        $base_app = 0;  // 0:无限制，1：仅返回通过本应用发布的微博
        $statuses = $c->user_timeline_by_id($uid, $page, $count, $since_id, $max_id, $feature, $trim_user, $base_app);
        if_weiboapi_fail($statuses);
        break;
    case 2: // sina_follow
        $uid = $_SESSION['sid']; $cursor = 0; $count = 50;
        $followers = $c->followers_by_id($uid, $cursor, $count);
        if_weiboapi_fail($followers);
        $friends = $c->friends_by_id($uid, $cursor, $count);
        if_weiboapi_fail($friends);
        break;
    default:
        $msg = '暂不支持该类型';
}

?>
<?php
require_once("uiparts/docheader.php");
?>
<body>
	<?php include("uiparts/header.php"); ?>
	<div id="func_column">
		<ul >
			<li><a href="create_task.php?type=sina_follow">创建新浪关注任务</a></li>
			<li><a href="create_task.php?type=sina_forward">创建新浪转发任务</a></li>
			<li><a alt="create_task.php?type=sina_review">创建新浪评论任务(暂不可用)</a></li>
			<li><a alt="create_task.php?type=sina_create">创建新浪原创任务(暂不可用)</a></li>
		</ul>
	</div> <!-- end of DIV func_column -->
	<div id="main_content">
    <?php if(!$_SESSION['is_bind_weibo']) { ?>
    <p class="hint"> 绑定微博后您才可以创建任务。<a href="<?php echo $authURL; ?>">现在绑定</a></p>
    <?php } ?>
        <?php switch ($type) { case 'sina_follow': ?>
                <div id="create_task">
                    <div id="choose_friend"><!-- 从关注者中选择 -->
                    <h3>从关注者中选择</h3>
                    <form action="action/create_task.php" method="post">
<?php
    foreach($friends['users'] as $friend) {
        echo "<label for=\"friend_{$friend['id']}\"><input type=\"radio\" id=\"friend_{$friend['id']}\" name=\"friend_id\" value=\"{$friend['id']}\" />".$friend['screen_name']."</label><br />\n";
    }
?>
                    <input type="submit" name="submit" value="就ta了" />
                    </form>
                    </div><!-- end of DIV choose_friend -->
                    <div id="choose_follower"><!-- 从粉丝中选择 -->
                    <h3>从粉丝中选择</h3>
                    <form action="action/create_task.php" method="post">
<?php
    foreach($followers['users'] as $follower) {
        echo '<label for="follower_'.$follower['id'].'"><input type="radio" id="follower_'.$follower['id'].'" name="follower_id" value="'.$follower['id'].'" />'.$follower['screen_name'].'</label><br />';
    }
?>
                    <input type="submit" name="submit" value="就ta了" />
                    </form>
                    </div><!-- end of DIV choose_friend -->
                    <div id="fill_name"><!-- 填写昵称 -->
                    <h3>直接填写昵称</h3>
                    <form action="action/create_task.php" method="post">
                    <p>新浪昵称：<input type="text" name="sina_screen_name" /></p>
                    <p><input type="submit" name="submit" value="确定"></p>
                    </form>
                    </div><!-- end of DIV fill_name -->
                </div><!-- end of DIV create_task -->
            <?php break; ?>
            <?php case 'sina_forward': ?> 
                <div id="create_task">
                    <div id="choose_weibo">
                    <h3>选择一条微博</h3>
                    <form action="action/create_task.php" method="post">
<?php
    foreach($statuses['statuses'] as $status) {
        echo '<label for="status_'.$status['idstr'].'"><input type="radio" id="status_'.$status['idstr'].'" name="status_id" value="'.$status['idstr'].'" />'.$status['text']."</label><br />\n";
    }
?>
                    <input type="submit" name="submit" value="就ta了" />
                    </form>
                    </div><!-- end of DIV choose_weibo -->
                </div><!-- end of DIV create_task -->
            <?php break; ?>

		<?php }?>
        <hr class="clear" />
	</div><!-- end of DIV main_content -->
	<?php include("uiparts/messcol.php");?>
	<?php include("uiparts/footer.php");?>
</body>
</html>
