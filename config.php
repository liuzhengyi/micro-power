<?php
// basic config file
define( "WB_AKEY" , '1520889573' );
define( "WB_SKEY" , '38cbaa622f1968a162e2042dc21e4a64' );
define( "WB_CALLBACK_URL" , 'http://lu0/a/vdongli/callback.php' );

define( "DEBUG", TRUE);
//define( "DEBUG", FALSE);
if(DEBUG) {
	ini_set("display_errors", 1);
} else {
	ini_set("display_errors", 0);
}

$webRoot = "/var/www/a/vdl/";
$siteRoot = "http://lu0/a/vdl/";
$dbConfFile = "/var/wwwi/dbconf/vdl.conf";
$siteDomain = "http://{$_SERVER['HTTP_HOST']}/a/vdl/";

$authURL = "https://api.weibo.com/oauth2/authorize?client_id=1520889573&redirect_uri=http%3A%2F%2Flu0%2Fa%2Fvdongli%2Fcallback.php&response_type=code";

$qqgroup_status = "122705365(满) 271037854(满) 260535300(满) 325451832 （加群时请注明“微动力会员”）";

$doctype = '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">';
?>
