<?php
/*
 * 本文件是系统的基础配置文件
 * 由于没有整理，这里显得有些凌乱，有些信息并不属于这里
 * 下面的APP KEY 和回调地址也许不应该修改
 * 但是$webRoot等信息一般应该根据自己的环境修改
 *
 * 注意：在不同的服务器上开发时需要更改的信息有
 *	$hostRoot
 *	应设置为真实的本地文件目录
 * 以及
 *	本地的虚拟服务器目录和hosts文件
 *	应设置为和本配置文件中hostName,siteRoot等一致，
 *	并且hosts中将http://vdl.viivtech.com指向本地
 **/

// APP KEY & 回调地址
define( "WB_AKEY" , '1520889573' );
define( "WB_SKEY" , '83c46d912c6eb9e640a861dc903fcb20' );
//define( "WB_CALLBACK_URL" , 'http://localhost/a/vdongli/callback.php' );
define( "WB_CALLBACK_URL" , 'http://vdl.viivtech.com/callback.php' );

// debug or not
define( "DEBUG", TRUE);
//define( "DEBUG", FALSE);
if(DEBUG) {
	ini_set("display_errors", 1);
} else {
	ini_set("display_errors", 0);
}

// 本地主机名称
$hostName = 'vdl.viivtech.com';
// 服务器上的网站根目录
#$webRoot = "/home/evan/vdongli/";
$webRoot = "/var/www/vdongli/";
// 网站的http根目录
$siteRoot = "http://vdl.viivtech.com/";
// 数据库配置文件位置
$dbConfFile = $webRoot."dbConf.php";


// 授权地址，为了简化流程，硬编码在此处，当APP KEY 或/和 回调地址改变时，这里也需要修改。
$authURL = "https://api.weibo.com/oauth2/authorize?client_id=1520889573&redirect_uri=http%3A%2F%2Fvdl.viivtech.com%2Fcallback.php&response_type=code";

// qq群状态，页脚里的一句话，根据实际情况修改
$qqgroup_status = "123456789(满) 234567890(满) 345678901(满) 456789012 （加群时请注明“微动力会员”）";
// 页头的文档类型声明
$doctype = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">';
$task_per_page = 6;     // 任务页面每页条目数
$action_per_page = 6;   // 个人动态页面每页条目数
$weibo_init_level = 3;  /* 此值若更改，请同时更改数据库user_info_sina表中的相应默认值 */
$reg_check = TRUE;

$token_salt = 'catanddog';

// lengths
$sina_weibo_id_length = 16;

// smtp  设置
// 除了文件pre_reg.php外，别的地方好像也用不到扫描图片信息，暂时就先放在pre_reg.php中吧。
// 企业用户向微动力缴纳的佣金的额度，
$ader_normal_rate = 0.1;
?>
