<?php
ini_set('display_errors', 1);
require_once('config.php');
require_once('saetv2.ex.class.php');

$o = new SaeTOAuthV2(WB_AKEY, WB_SKEY);
$url = $o->getAuthorizeURL(WB_CALLBACK_URL);
echo '<hr />'.$url.'<hr />';
echo "<p><a href=\"{$url}\">授权页面</a></p><hr />";
?>
