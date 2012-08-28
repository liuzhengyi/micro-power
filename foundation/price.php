<?php
    function real_price($task_offer, $slevel)
    {   return ($task_offer*$slevel/4)/1000;
    }

    function top_price($task_offer)
    {   $top_slevel = 10;
        return real_price($task_offer, $top_slevel);
    }

    /* 根据任务在数据库中标价，计算用户完成任务应该插入数据库的数额 */
    function sql_price($task_offer, $slevel)
    {   return $task_offer*$slevel/4;
    }

    /* 将数据库中的金钱数额 换算成屏幕显示数额 （厘 到 元）*/
    function to_screen_price($money)
    {
        return $money/1000;
    }
?>
