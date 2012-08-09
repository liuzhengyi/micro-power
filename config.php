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
define( "WB_CALLBACK_URL" , 'http://localhost/a/vdongli/callback.php' );

// debug or not
define( "DEBUG", TRUE);
//define( "DEBUG", FALSE);
if(DEBUG) {
	ini_set("display_errors", 1);
} else {
	ini_set("display_errors", 0);
}

// 本地主机名称
$hostName = 'localhost';
// 服务器上的网站根目录
$webRoot = "/var/www/a/vdongli/";
// 网站的http根目录
$siteRoot = "http://localhost/a/vdongli/";
// 数据库配置文件位置
$dbConfFile = "/var/wwwi/dbconf/vdl.conf";


// 授权地址，为了简化流程，硬编码在此处，当APP KEY 和 回调地址改变时，这里也需要修改。
$authURL = "https://api.weibo.com/oauth2/authorize?client_id=1520889573&redirect_uri=http%3A%2F%2Flocalhost%2Fa%2Fvdongli%2Fcallback.php&response_type=code";

// qq群状态，页脚里的一句话，根据实际情况修改
$qqgroup_status = "122705365(满) 271037854(满) 260535300(满) 325451832 （加群时请注明“微动力会员”）";
// 页头的文档类型声明
$doctype = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">';
$task_per_page = 6;
?>
