<?php
session_start();
// 广告主已经选定一条微博作为任务，并配置好该任务
// 此action页面负责发布任务
include_once("../config.php");	// init $authURL
include_once($webRoot."foundation/status.php");
if(!is_login()) { header('Location:'.$siteRoot.'index.php?login_error=not_login'); }
require_once($webRoot.'foundation/debug.php');
require_once($webRoot.'foundation/page.php');
require_once($webRoot.'foundation/price.php');
require_once($webRoot.'lib/saetv2.ex.class.php');
require_once($webRoot.'lib/dbo.class.php');
require_once($dbConfFile);

global $sina_weibo_id_length;   // init in config.php
if(isset($_POST['weibo_id']) && is_numeric($_POST['weibo_id']) && $sina_weibo_id_length === strlen($_POST['weibo_id'])) {
    $real_wid = $_POST['weibo_id'];
    $stoken = $_SESSION['stoken'];
    $c = new SaeTClientV2(WB_AKEY, WB_SKEY, $stoken);
    $api_res = $c->user_timeline_by_id(NULL, 1, 50, 0, 0, 1, 0, 0); // 倒数第二个0是trim_user选项
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
    // 获取任务相关数据
    $task_sina_uid = $_SESSION['sid'];
    $task_screen_name = $api_res['statuses'][0]['user']['screen_name'];
    $task_offer = $_POST['base_price']; // task_offer字段应该改为task_base_price较为合适
    $task_offer = config_to_db_price($_POST['base_price']);
    $task_amount = $_POST['task_amount'];
    $task_icon_url = $api_res['statuses'][0]['user']['profile_image_url'];
    $task_sina_wid = $real_wid;
    $task_thumbnail_pic_url = NULL; // user_timeline 接口 不提供微博配图的url，暂时定为NULL
    $task_bmiddle_pic_url = NULL;
    $task_text = $text;

    // owner_id 应该对应与ader_id，目前暂且用直接填数字，后面应该写入到ader的session里面。
    $sql = "insert into task (owner_id, publisher_id, task_type, task_sina_uid, task_screen_name, task_offer, task_amount, task_icon_url, task_sina_wid, task_thumbnail_pic_url, task_bmiddle_pic_url, task_text) values(1, 1, 'forward', '$task_sina_uid', '$task_screen_name', '$task_offer', '$task_amount', '$task_icon_url', '$task_sina_wid', '$task_thumbnail_pic_url', '$task_bmiddle_pic_url', '$task_text')";
    $dbo = new dbex($dbServs);
    $num = $dbo->exeUpdate($sql);
    if(1 != $num) {
        $debug_msg = '向task表插入数据失败，SQL：['.$sql.']';
        debug($debug_msg, __FILE__, __LINE__, TRUE, 'error');
    } else {
        $seconds = 3;
        $msg = '任务发布成功';
        $to_url = $siteRoot.'task.php';
        $to_name = '任务页面';
        delay_jump($seconds, $msg, $to_url, $to_name);
    }
} else {
    echo "对不起，您想要作为任务的微博并不存在，请返回查证。若您已查证，请联系管理员。";
}
?>
