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

    function check_token_fail($token, $email, $salt)
    {
        if(32 != strlen($token) || 7 > strlen($email) || 60 < strlen($email) || empty($salt)) {
            echo '长度不对';
            echo $token;
            exit();
            return TRUE;    // fail
        } else {
            $date = date('Ymd');
            $date2 = strval($date - 1);
            $token_string = $email.$salt.$date;
            $token_string2 = $email.$salt.$date2;
            $this_token = md5($token_string);
            $this_token2 = md5($token_string2);
            if($this_token == $token || $this_token2 == $token) {
                return FALSE;
            }
            if(DEBUG) {
            /*
                echo 'token -- '.$token.'<br />';
                echo 'tokenstring -- '.$token_string.'<br />';
                echo 'tokenstring2 -- '.$token_string2.'<br />';
                echo 'this_token -- '.$this_token.'<br />';
                echo 'this_token2 -- '.$this_token2.'<br />';
                exit();
                */
            }
            return TRUE;
        }
    }

    function generate_token($email, $salt)
    {
        $date = date('Ymd');
        $token_string = $email.$salt.$date;
        return md5($token_string);
    }
?>
