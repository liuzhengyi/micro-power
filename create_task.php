<?php
session_start();
/* create_task.php
 * 创建任务接口页面，仅对ader和master开放
 * 负责提供创建任务的接口，
 *
 * 拥有权限的用户可以本页面上配置一个想要创建的任务，
 * 包括：从自己的粉丝&关注者中选择一个用户作为关注任务的目标用户
 *       填写一个新浪昵称，作为关注用户的目标用户
 *       从自己的原创微博中选择一条，作为转发任务的目标微博
 * 本页面将信息提交给create_task_confirm.php
 *
 * 目前可以创建的任务类型有：
 *      新浪转发 sina_repost (type:1)
 *      新浪关注 sina_follow (type:2)
 */
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
$default_type = 'sina_repost';
if(isset($_GET['type'])) {
	$type = $_GET['type'];
	if($type != 'sina_repost' && $type != 'sina_follow' && $type != 'sina_review' && $type != 'sina_create') {
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
    case 1: // sina_repost
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
			<li><a href="create_task.php?type=sina_repost">创建新浪转发任务</a></li>
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
                    <form action="create_task_confirm.php" method="post">
<?php
    foreach($friends['users'] as $friend) {
        $input_id = 'friend_'.$friend['id'];
        $screen_name = $friend['screen_name'];
        $input_value = $friend['id'].'-'.$screen_name;    // 中间的短横线是为了方便取出id和name
        echo '<label for="'.$input_id.'"><input type="radio" id="'.$input_id.'" name="person_id-name" value="'.$input_value.'" />'.$screen_name.'</label><br />';
    }
?>
                        <label for="base_price1">基础出价<input type="text" name="base_price" id="base_price1" /></label>角(请填入100以内的正整数)<br />
                        <label for="amount1">任务数量<input type="text" name="amount" id="amount1" /></label>次（请填入正整数 lt 1000）<br />
                        <label for="expire_in1">有效时间<input type="text" name="expire_in" id="expire_in1" /></label>天（请填入100以内的正整数）<br />
                        <input type="hidden" name="type" value="sina_follow" />
                        <p><input type="submit" name="submit" value="就ta了" /></p>
                    </form>
                    </div><!-- end of DIV choose_friend -->
                    <div id="choose_follower"><!-- 从粉丝中选择 -->
                    <h3>从粉丝中选择</h3>
                    <form action="create_task_confirm.php" method="post">
<?php
    foreach($followers['users'] as $follower) {
        $input_id = 'follower_'.$follower['id'];
        $screen_name = $follower['screen_name'];
        $input_value = $follower['id'].'-'.$screen_name;    // 中间的短横线是为了方便取出id和name
        echo '<label for="'.$input_id.'"><input type="radio" id="'.$input_id.'" name="person_id-name" value="'.$input_value.'" />'.$screen_name.'</label><br />';
    }
?>
                        <label for="base_price2">基础出价<input type="text" name="base_price" id="base_price2" /></label>角(请填入100以内的正整数)<br />
                        <label for="amount2">任务数量<input type="text" name="amount" id="amount2" /></label>(请填入正整数)<br />
                        <label for="expire_in2">有效时间<input type="text" name="expire_in" id="expire_in2" /></label>天（请填入100以内的正整数）<br />
                        <input type="hidden" name="type" value="sina_follow" />
                        <p><input type="submit" name="submit" value="就ta了" /></p>
                    </form>
                    </div><!-- end of DIV choose_friend -->
                    <div id="fill_name"><!-- 填写昵称 -->
                    <h3>直接填写昵称</h3>
                    <form action="create_task_confirm.php?comment=by_name" method="post">
                        <label for="sina_screen_name">新浪昵称<input type="text" name="sina_screen_name" id="sina_screen_name" /></label><br />
                        <label for="base_price3">基础出价<input type="text" name="base_price" id="base_price3" /></label>角(请填入100以内的正整数)<br />
                        <label for="amount3">任务数量<input type="text" name="amount" id="amount3" /></label>次（请填入正整数）<br />
                        <label for="expire_in3">有效时间<input type="text" name="expire_in" id="expire_in3" /></label>天（请填入100以内的正整数）<br />
                        <input type="hidden" name="type" value="sina_follow" />
                        <p><input type="submit" name="submit" value="确定"></p>
                    </form>
                    </div><!-- end of DIV fill_name -->
                </div><!-- end of DIV create_task -->
            <?php break; ?>
            <?php case 'sina_repost': ?> 
                <div id="create_task">
                    <div id="choose_weibo">
                    <h3>选择一条微博</h3>
                    <form action="create_task_confirm.php" method="post">
<?php
    foreach($statuses['statuses'] as $status) {
        $input_id = 'status_'.$status['idstr'];
        $text = $status['text'];
        $input_value = $status['idstr'].'-'.$text;  // 中间的短横线是为了方便分割字符串，取出id和text
        echo '<label for="'.$input_id.'"><input type="radio" id="'.$input_id.'" name="status_id-text" value="'.$input_value.'" />'.$text."</label><br />\n";
    }
?>
                    <label for="base_price4">基础出价<input type="text" name="base_price" id="base_price4" /></label>角(请填入100以内的正整数)<br />
                    <label for="amount4">任务数量<input type="text" name="amount" id="amount4" /></label>次（请填入正整数）<br />
                    <label for="expire_in4">有效时间<input type="text" name="expire_in" id="expire_in4" /></label>天（请填入100以内的正整数）<br />
                    <input type="hidden" name="type" value="sina_repost" />
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
