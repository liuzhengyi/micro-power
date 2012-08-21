<?php
    function real_price($task_offer, $slevel)
    {   return $task_offer*$slevel/40;
    }

    function top_price($task_offer)
    {   $top_slevel = 10;
        return real_price($task_offer, $top_slevel);
    }
?>
