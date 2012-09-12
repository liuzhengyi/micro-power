<?php
include_once('class-phpmailer.php');
include_once('class-smtp.php');

$mail = new PHPMailer();
$mail->IsSmtp();
$mail->AddAddress('gipsaliu@gmail.com');

$message = "mail using Wordpress Mail Class.";
$mail->Body = $message;
$mail->From = 'gipsa@qq.com';
$mail->FromName = 'gipsa';
$mail->Subject = 'using wordpress email class';
$mail->Host = 'smtp.qq.com';
$mail->SMTPAuth = TRUE;

$mail->Username = 'gipsa@qq.com';
$mail->Password = '#txqq278753921';

$mail->Send();
?>
