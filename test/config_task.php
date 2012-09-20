<?php
session_start();
// 广告主已经选定一条微博作为任务，
// 次页面配置该任务
include_once("../config.php");	// init $authURL
include_once($webRoot."foundation/status.php");
if(!is_login()) { header('Location:'.$siteRoot.'index.php?login_error=not_login'); }
require_once($webRoot.'foundation/debug.php');
require_once($webRoot.'foundation/page.php');
require_once($webRoot.'foundation/price.php');
require_once($webRoot.'lib/saetv2.ex.class.php');

global $sina_weibo_id_length;   // init in config.php
if(isset($_POST['weibo_id']) && is_numeric($_POST['weibo_id']) && $sina_weibo_id_length === strlen($_POST['weibo_id'])) {
    $real_wid = $_POST['weibo_id'];
    $stoken = $_SESSION['stoken'];
    $c = new SaeTClientV2(WB_AKEY, WB_SKEY, $stoken);
    $api_res = $c->user_timeline_by_id(NULL, 1, 50, 0, 0, 1, 1, 0);
    if_weiboapi_fail($api_res);
    $wids = $api_res['statuses'];
    $text = ""; // 微博文本
    foreach($wids as $wid) {
        if($real_wid == $wid['id']) {
            $text = $wid['text'];
        }
    }
    if(empty($text)) {  // 验证微博id未通过，说明post过来的id无效。
        echo '对不起，该条微博不是您的原创微博，请查证，若您。。';
        exit();
    }
?>
<form action="<?php echo $siteRoot?>action/post_task.php" method="post" ><legend>第二步：请设置要发布的任务数量和任务原始佣金。</legend>
<!-- 数量， 原始佣金，-->
<p>任务微博</p>
<h3><?php echo $text;?></h3>
<hr />
<label for="task_amount">任务数量：<input type="text" name="task_amount" id="task_amount"></label><br />
<label for="base_price">任务基本价：<input type="text" name="base_price" id="base_price"></label><br />
<input type="hidden" name="weibo_id" id="weibo_id" value="<?php echo $real_wid;?>" />
<input type="submit" name="submit" value="发布任务" />
</form>
<?php
} else {
    echo "对不起，您想要作为任务的微博并不存在，请返回查证。若您已查证，请联系管理员。";
}
?>
