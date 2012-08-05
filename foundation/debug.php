<?php
/**
 * 错误处理函数
 *
 * @param bool $debug 判断当前是否处于DEBUG模式
 * @param string $debug_msg DEBUG信息
 * @param bool $to_user 当不处于DEBUG模式时，是否要向用户提示出错，默认为TURE
 * @param string $level 错误级别，记录日志时使用，默认为
 * @return 
 */

function debug($debug, $debug_msg, $to_user=TRUE, $level="fatal")
{	if($debug) {
		echo 'debug: '.$debug_msg;
	} else if($to_user) {
		echo "something wrong, please wait for a moment.";
	} else {
		echo "";
	}
}
?>
