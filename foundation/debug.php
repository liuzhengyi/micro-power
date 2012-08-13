<?php
/**
 * 错误处理函数
 *
 * @param string $debug_msg DEBUG信息
 * @param bool $to_user 当不处于DEBUG模式时，是否要向用户提示出错，默认为TURE
 * @param string $level 错误级别，记录日志时使用，默认为'error'('fatal', 'notice')
 * @return 
 */

function debug($debug_msg, $file, $line, $to_user=TRUE, $level="error")
{	if(DEBUG) {
		echo 'debug: '.'file:'.$file .' line: ' . $line .$debug_msg;
		exit();
	} else if($to_user) {
		echo "something wrong, please wait for a moment.";
	} else {
		echo "";
	}
}

/**
 * 处理api调用失败函数
 *
 *
 */

function if_weiboapi_fail($res, $file=NULL, $line=NULL)
{	if(!$res) {	// 调用微博api没有任何返回
		$debug_msg = 'weibo服务暂时出了问题，请尝试使用其他方式';
		debug($debug_msg, $file, $line, true);
	}else if(isset($res['error_code'])) {
		$debug_msg = 'call api failed, error: '.$res['error'].'<br />error code('.$res['error_code'].')';
		debug($debug_msg, $file, $line, false);
	}
}
?>
