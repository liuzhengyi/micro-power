	<div id="wrapper"><!-- end in file footer.php-->
	<div id="header">
	<div id="loginout">
<?php
include("log.php");
echo "\n";
?>
	</div><!-- end of DIV loginout -->
	<h1>欢迎来到微动力。</h1>
	<p>微动力 —— 玩玩手机，就能赚钱的地方。</p>
	<?php if(DEBUG) { ?>
	<div id="debug_session">
	<h3>debug - SESSION </h3>
	<ul>
	<?php foreach($_SESSION as $k => $v) {
		echo "<li>$k -- $v</li>\n\t";
	}
	?>
	</ul>
	</div>
	<?php } ?>
	<hr class="clear">
	<div id="navi_header">
<?php
include("navih.php");
?>
	</div></!-- end of DIV navi_header -->
	</div> <!-- end of DIV header -->
