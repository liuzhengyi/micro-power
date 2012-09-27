<?php
/*
 *  双向转换数据库中task_type和页面中的task_type
 */
function task_type_switch($type, $to_db=TRUE)
{
    if($to_db) {
        switch ($type) {
            case 'sina_forward':
            case 1:
                return 1;
            case 'sina_follow':
            case 2:
                return 2;
            case 'sina_review':
            case 3:
                return 3;
            case 'sina_create':
            case 4:
                return 4;
            case 'qq_forward':
            case 11:
                return 11;
            case 'qq_follow':
            case 12:
                return 12;
            case 'qq_review':
            case 13:
                return 13;
            case 'qq_create':
            case 14:
                return 14;
            default:
                return 1;
        }
    } else {
        switch ($type) {
            case 1:
            case 'sina_forward':
                return 'sina_forward';
            case 2:
            case 'sina_follow':
                return 'sina_follow';
            case 3:
            case 'sina_review':
                return 'sina_review';
            case 4:
            case 'sina_create':
                return 'sina_create';
            case 11:
            case 'qq_forward':
                return 'qq_forward';
            case 12:
            case 'qq_follow':
                return 'qq_follow';
            case 13:
            case 'qq_review':
                return 'qq_review';
            case 14:
            case 'qq_create':
                return 'qq_create';
            default:
                return 'sina_forward';

        }
    }
}

function user_role_switch($role, $to_db=TRUE)
{
    if($to_db) {
        switch ($role) {
            case 'user':
            case 1:
                return 1;
            case 'ader':
            case 2:
                return 2;
            case 'master':
            case 3:
                return 3;
            default :
                return 1;
        }
    } else {
        switch ($role) {
            case 1:
            case 'user':
                return 'user';
            case 2:
            case 'ader':
                return 'ader';
            case 3:
            case 'master':
                return 'master';
            default:
                return 'user';
        }
    }
}

?>
