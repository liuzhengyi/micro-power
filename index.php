<?php
session_start();
/* index.php
 * 系统主页，具体放什么以及怎么设计
 * 我都还没有主意
 */
include_once("config.php");	// init $authURL
include_once("lib/saetv2.ex.class.php");
/*
include_once("foundation/debug.php");
$res['error_code'] = '123';
$res['error'] = 'error...kjlkj?????';
if_weiboapi_fail($res);
*/

$title = "欢迎来到微动力";
$csfile = array("style/main.css", "style/solo.css");
// 以下两句获得授权地址，为了简化，已经将授权地址硬编码入config.php
//$o = new SaeTOAuthV2( WB_AKEY, WB_SKEY );
//$code_url = $o->getAuthorizeURL( WB_CALLBACK_URL );
?>

<?php
require_once("uiparts/docheader.php");
?>
<body>
	<?php include("uiparts/header.php"); ?>
	<div id="func_column">
		<p>this part goes the function column, place function buttons, like sub dirs, this area may be put on the left side.</p>
		<p>this part goes the function column, place function buttons, like sub dirs, this area may be put on the left side.</p>
		<p>this part goes the function column, place function buttons, like sub dirs, this area may be put on the left side.</p>
	</div> <!-- end of DIV func_column -->
	<div id="main_content">
		<p>this part goes the main content, this area may be put in the middle of page.</p>
		<p>this part goes the main content, this area may be put in the middle of page.</p>
		<p>this part goes the main content, this area may be put in the middle of page.</p>
		<p>this part goes the main content, this area may be put in the middle of page.</p>
		<p>this part goes the main content, this area may be put in the middle of page.</p>
		<p>this part goes the main content, this area may be put in the middle of page.</p>
		<p>this part goes the main content, this area may be put in the middle of page.</p>
	</div><!-- end of DIV main_content -->
	<?php include("uiparts/messcol.php");?>
	<?php include("uiparts/footer.php");?>
</body>
</html>
