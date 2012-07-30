<?php
	function check_email_fail($email) {
		// to complete
		// use a regex object to test $email
		// $email should between 6 and 50 chars
		if(empty($email)) {
			return TRUE;
		} else {
			return FALSE;
		}
	}

	function check_nickname_fail($name) {
		// to complete
		// $name should between 12 and 30 chars
		if(empty($name)) {
			return TRUE;
		} else {
			return FALSE;
		}
	}

	function check_password_fail($pass) {
		// to complete
		// $pass should between 6 and 16 chars
		if(empty($pass)) {
			return TRUE;
		} else {
			return FALSE;
		}
	}
?>
