<?php
session_start();
include_once("../config.php");	// init $authURL
include_once($webRoot."foundation/status.php");
if(!is_login()) { header('Location:'.$siteRoot.'index.php'); }
require_once($webRoot.'foundation/debug.php');
require_once($webRoot.'foundation/page.php');
require_once($webRoot.'foundation/price.php');
require_once($webRoot.'lib/saetv2.ex.class.php');
/*
    从当前用户的当前原创微博中选择一条作为转发任务
*/
if(!is_bound_sina()) {delay_jump(3, "对不起，您尚未绑定新浪微博，绑定后才能发布任务。", "主页" );}
$stoken = $_SESSION['stoken'];
$c = new SaeTClientV2(WB_AKEY, WB_SKEY, $stoken);
$api_res = $c->user_timeline_by_id(NULL, 1, 50, 0, 0, 1, 1, 0);
//var_dump($api_res);
$weibos = $api_res['statuses'];
$i = 0;
$count = count($weibos);
echo '<form action="config_task.php" method="post"><fieldset><legend>请从下列微博中选取一条作为任务</legend>';
for($i = 0; $i < $count; $i++) {
    $tmp_id = ''; $tmp_id = 'weibo_'.$i;
    echo '<label for="'.$tmp_id.'"><input type="radio" name="weibo_id" value="'.$weibos[$i]['id'].'" id= "'.$tmp_id.'" />'.$weibos[$i]['text']."at (<sub>{$weibos[$i]['created_at']}</sub>)".'</label><br /><hr />';
}
echo '<input type="submit" name="submit" value="下一步（配置任务）" />';
echo '</fieldset></form>';

?>
