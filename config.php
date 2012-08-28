<?php
/*
 * 本文件是系统的基础配置文件
 * 由于没有整理，这里显得有些凌乱，有些信息并不属于这里
 * 下面的APP KEY 和回调地址也许不应该修改
 * 但是$webRoot等信息一般应该根据自己的环境修改
 **/

// APP KEY & 回调地址
define( "WB_AKEY" , '1520889573' );
define( "WB_SKEY" , '38cbaa622f1968a162e2042dc21e4a64' );
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
$webRoot = "/home/evan/vdongli/";
// 网站的http根目录
$siteRoot = "http://vdl.viivtech.com/";
// 数据库配置文件位置
$dbConfFile = $webRoot."dbConf.php";


// 授权地址，为了简化流程，硬编码在此处，当APP KEY 和 回调地址改变时，这里也需要修改。
$authURL = "https://api.weibo.com/oauth2/authorize?client_id=1520889573&redirect_uri=http%3A%2F%2Fvdl.viivtech.com%2Fcallback.php&response_type=code";

// qq群状态，页脚里的一句话，根据实际情况修改
$qqgroup_status = "123456789(满) 234567890(满) 345678901(满) 456789012 （加群时请注明“微动力会员”）";
// 页头的文档类型声明
$doctype = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">';
$task_per_page = 6;
$weibo_init_level = 3;
$reg_check = TRUE;

$token_salt = 'catanddog';
?>
