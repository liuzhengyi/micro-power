<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmls="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<title><?php echo $title;?></title>
	<?php 
	foreach($csfile as $path) {
	echo '<link rel="stylesheet" href="'.$path.'" type="text/css">';
	echo "\n\t";
	}
	?>
</head>
