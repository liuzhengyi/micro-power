<?php
session_start();
/*	$webRoot/action/evaluate.php
 * 本文件负责对当前登录用户的微博进行评级，
 * 评级公式应该能够反应出用户微博帐号的号召力和影响力
 * 
 * 目前先用最简单的公式计算，即计算用户的粉丝数量。
 *
 * 用户的微博评级结果应该在4到10之间，默认等级为3，这意味着
 * 如果用户的等级为3，则该用户尚未进行过评级。
 *
 */

include_once("../config.php");
include_once($webRoot.'lib/saetv2.ex.class.php');
include_once($webRoot.'foundation/debug.php');

$c = new SaeTClientV2( WB_AKEY, WB_SKEY, $_SESSION['stoken']);
// to do
// 获取以下信息：

// 用户所在地，用户描述，性别，粉丝数，关注数，微博数，收藏数，是否认证，认证原因，注册时间
$user_info = $c->show_user_by_id($_SESSION['sid']);
$user['location'] = $user_info['location'];
$user['description'] = $user_info['description'];
$user['gender'] = $user_info['gender'];
$user['followers_count'] = $user_info['followers_count'];
$user['friends_count'] = $user_info['friends_count'];
$user['statuses_count'] = $user_info['statuses_count'];
$user['favourites_count'] = $user_info['favourites_count'];
$user['verified'] = $user_info['verified'];
$user['verified_reason'] = $user_info['verified_reason'];
$user['create_at'] = $user_info['created_at'];
// 原创微博数，优质粉丝列表，优质粉丝数，有效粉丝数

// 最新微博平均被转发次数/平均被评论次数 和 最高转发次数/评论次数
$weibos = $c->user_timeline_by_id($_SESSION['sid']);
if_weiboapi_fail($weibos);
$weibo_amount = count($weibos['statuses']);
unset($ids);
foreach($weibos['statuses'] as $weibo) {
    $ids .= $weibo['id'].',';   // 注意，如果系统字长不够，此处有可能无法处理这个数字型的id
    echo $weibo['id'].'<br />';
}
$params = array();
$params['ids'] = $ids;
$weibo_counts = $c->oauth->get('statuses/count', $params);
if_weiboapi_fail($weibo_counts);
if(0 != $weibo_amount) {    // 发过微博
    $max_reposts = 0;
    $max_comments = 0;
    foreach($weibo_counts as $weibo_count) {
        $max_reposts = $weibo_count['reposts']>$max_reposts ? $weibo_count['reposts'] : $max_reposts;
        $max_comments = $weibo_count['comments']>$max_comments ? $weibo_count['comments'] : $max_comments;
        $total_reposts += $weibo_count['reposts'];
        $total_comments += $weibo_count['comments'];
    }
    $user['max_reposts'] = $max_reposts;
    $user['max_comments'] = $max_comments;
    $user['aver_reposts'] = 0 == $total_reposts ? 0 : ($total_reposts / $weibo_amount);
    $user['aver_comments'] = 0 == $total_comments ? 0 : ($total_comments / $weibo_amount);
 //   echo 'total reposts: '.$total_reposts.'</p>';
  //  echo 'total comments: '.$total_comments.'</p>';
    /*  
    用php -l 选项检查本文件没有语法错误。
    用浏览器访问此页面，报错如下：
    Fatal error: Unsupported operand types in /home/evan/vdongli/action/evaluate.php on line 59
    line 59 and line 60 就是本注释上面的两行。
    */
} else {                    // 没有微博
    $user['max_reposts'] = 0;
    $user['max_comments'] = 0;
    $user['aver_reposts'] = 0;
    $user['aver_comments'] = 0;
}


foreach($user as $k => $v) {
    echo $k.' -- '.$v.'</p>';
}
exit(); // debug

// 经过一系列计算……
$slevel = 4;

include_once($webRoot.'lib/dbo.class.php');
include_once($dbConfFile);
$dbo = new dbex($dbServs);
$sql = "update user set sina_level = $slevel where user_id = {$_SESSION['uid']} limit 1";
$res = $dbo->exeUpdate($sql);
$_SESSION['slevel'] = $slevel;
header("Location:".$_SERVER['HTTP_REFERER']);
exit();
?>
