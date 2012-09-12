<?php
function is_login()
{
    if(!empty($_SESSION['uid']) && !empty($_SESSION['name'])) {
        return TRUE;
    }
    return FALSE;
}
?>
