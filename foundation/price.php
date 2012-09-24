<?php
    /* from db to screen , real price */
    /* 根据数据库中表示的基础价格(厘)，计算用户实际价格的屏显(元)*/
    /* 应该更名为 db_to_screen_real_price*/
    function real_price($task_offer, $slevel)
    {   return ($task_offer*$slevel/4)/1000;
    }

    /* 根据数据库中标示的基础价格(厘)，计算最高价格的屏显 */
    /* db_to_screen_top_price */
    function top_price($task_offer)
    {   $top_slevel = 10;
        return real_price($task_offer, $top_slevel);
    }

    /* 根据任务在数据库中标价(厘)，计算用户完成任务应该插入数据库的数额(厘) */
    /* db_to_db_real_price */
    function sql_price($task_offer, $slevel)
    {   return $task_offer*$slevel/4;
    }

    /* 将数据库中的金钱数额(厘) 换算成屏幕显示数额(元) */
    /* db_to_screen*/
    function to_screen_price($money)
    {
        return $money/1000;
    }

    /* 配置任务页面填入的基础价格(单位为角) 转换为 数据库中存储的基础价格(单位为厘) */
    function config_to_db_price($money) // 注意是，配置任务页面，不是配置页面
    {
        return $money*100;
    }
?>
