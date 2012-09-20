<?php
function is_login()
{
    if(!empty($_SESSION['uid']) && !empty($_SESSION['name'])) {
        return TRUE;
    }
    return FALSE;
}
function is_bound_sina()
{
    if(!empty($_SESSION['stoken'])) {
        return TRUE;
    }
    return FALSE;
}
?>
