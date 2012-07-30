<?php
function set_session($k, $v) {
	if('' === $v || is_NULL($v)) {
		unset($_SESSION($k));
	} else {
		$_SESSION[$k] = $v;
	}
} 
function get_session($k) {
	if(isset($_SESSION[$k])) {
		return $_SESSION[$k];
	} else {
		return NULL;
	}
}
function isset_sess($k) {
	return isset($_SESSION[$k]);
	//  这是不是合适的检验方法?
}

function set_sess_uid($v) {
	set_session('uid', $v);
}
function get_sess_uid() {
	get_session('uid');
}

function set_sess_name($v) {
	set_session('uname', $v);
}
function get_sess_name() {
	get_session('uname');
}

function set_sess_sid($v) {
	set_session('sid', $v);
}
function get_sess_sid() {
	get_session('sid');
}

function set_sess_stoken($v) {
	set_session('stoken', $v);
}
function get_sess_stoken() {
	get_session('stoken');
}
?>
