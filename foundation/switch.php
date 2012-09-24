<?php
/*
 *  双向转换数据库中task_type和页面中的task_type
 */
function task_type_switch($type, $to_db=TRUE)
{
    if($to_db) {
        switch ($type) {
            case 'sina_forward':
                return 1;
            case 'sina_follow':
                return 2;
            case 'sina_review':
                return 3;
            case 'sina_create':
                return 4;
            case 'qq_forward':
                return 11;
            case 'qq_follow':
                return 12;
            case 'qq_review':
                return 13;
            case 'qq_create':
                return 14;
            default:
                return 1;
        }
    } else {
        switch ($type) {
            case 1:
                return 'sina_forward';
            case 2:
                return 'sina_follow';
            case 3:
                return 'sina_review';
            case 4:
                return 'sina_create';
            case 11:
                return 'qq_forward';
            case 12:
                return 'qq_follow';
            case 13:
                return 'qq_review';
            case 14:
                return 'qq_create';
            default:
                return 'sina_forward';

        }
    }
}

?>
