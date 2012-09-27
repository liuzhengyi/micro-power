<?php
include_once($webRoot."foundation/debug.php");  // need the func delay_jump()
include_once($webRoot."foundation/switch.php");  // need the func user_role_switch()
function is_login()
{
    if(!empty($_SESSION['uid']) && !empty($_SESSION['name'])) {
        return TRUE;
    }
    return FALSE;
}
function need_login()
{
    if(!is_login()) {
        global $siteRoot;
        $msg = '您需要登录才能访问该页面。';
        delay_jump(2, $msg, $siteRoot, '首页');
    }
}
function is_bound_sina()
{
    if(!empty($_SESSION['stoken'])) {
        return TRUE;
    }
    return FALSE;
}
function need_be_ader_or_master()
{
    $role = user_role_switch($_SESSION['role'], true);
    if(2 != $role && 3 != $role) {
        global $siteRoot;
        header("Location:$siteRoot");
        exit();
    }
}
function need_be_user()
{
    $role = user_role_switch($_SESSION['role'], true);
    if(1 != $role) {
        $msg = "对不起，您不是普通用户，只有普通用户能做任务";
        $to_name= '首页';
        global $siteRoot;
        $to_url = $siteRoot;
        delay_jump(2, $msg, $to_url, $to_name);
    }
}
?>
