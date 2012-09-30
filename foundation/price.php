<?php
/*
 *  本文件函数规定不同情况下price的转换
 *  转换规则和各种情况下使用的单位有关，
 *  当这些单位发生改变时，本页面的函数也应改变，以保持程序中使用这些函数的地方无需改变
*/

// 基础价 转换为 某一级别用户的价（基础价到用户价的转换公式）要求参数为整数（以厘为单位）
function price_base_to_level($base_price, $level)
{   
    $base_price = floatval($base_price);
    $level = floatval($level);
    return ($base_price*$level/4);
}

// 数据库价格(厘) 转换为 用户屏显价格(元)
function price_db_to_user($money)
{
    $money = intval($money);
    return $money/1000;
}

// 用户屏显价格(元) 转换为数据库价格(厘)
function price_user_to_db($money)
{
    $money = floatval($money);
    return $money*1000;
}

// 配置页面价格（角） 转换为 数据库价格（厘）
function price_config_to_db($money)
{
    $money = intval($money);
    return $money*100;
}

// 配置页面价格（角） 转换为 用户页面价格（元）
function price_config_to_user($money)
{
    $money = intval($money);
    return $money/10;
}

// 用户屏显价格(元) 转换为配置页面 角
function price_user_to_config($money)
{
    $money = floatval($money);
    return $money*10;
}

// 基础价 转换为 最高价
function price_base_to_top($base_price, $top_level=10)
{    
    return price_base_to_level($base_price, $top_level);
}

// 最高价 转换为 基础价
function price_top_to_base() {}   // 暂无此需求

?>
