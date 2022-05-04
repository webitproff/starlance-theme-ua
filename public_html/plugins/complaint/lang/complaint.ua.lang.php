<?php

/**
 * Orderform
 *
 * @version 1.00
 * @author  devkont
 * @copyright (c) 2014 CMSWorks Team
 */

defined('COT_CODE') or die('Wrong URL.');

$L['complaint_title'] = 'Жалоба на товар';
$L['complaint_buy'] = 'Жалоба на товар';
$L['complaint_sendorder'] = 'Отправить жалобу';

$L['complaint_form_email'] = 'Email';
$L['complaint_form_name'] = 'Ваше имя';
$L['complaint_form_phone'] = 'Телефон';
$L['complaint_form_comment'] = 'Комментарий, суть жалобы';

$L['complaint_error_email'] = 'Пожалуйста, проверьте email';
$L['complaint_error_name'] = 'Не указано имя';
$L['complaint_error_phone'] = 'Не указан телефон';
$L['complaint_error_quantity'] = 'Не указано количество';

$L['complaint_sent'] = 'Ваш запрос принят! Жалоба направлена продавцу и в Администрацию сайта';

$L['complaint_subject_seller'] = 'Жалоба!!!';
$L['complaint_body_seller'] = 'Здравствуйте! 
Вам поступила жалоба с сайта {$sitetitle} ({$siteurl})
Подробная информация по жалобе:
Автор жалобы: {$name}
Email: {$email}
Телефон: {$phone}
Наименование товара: {$product_title} ({$product_url})


Комментарий, суть жалобы: {$comment}';

$L['complaint_subject_customer'] = 'Ваша жалоба';
$L['complaint_body_customer'] = 'Здравствуйте! 
Вы оформили жалобу на сайте {$sitetitle} {$siteurl}. 
Продавец обязан оспорить Вашу жалобу, если она не правомерна. 
Если этого не произойдет в течении 3-х суток, - напишите в Администрацию сайта {$sitetitle} по ссылке http://abuyfile.com/contact и товар будет снят с продажи.
Подробная информация по жалобе:
Автор жалобы: {$name}
Email: {$email}
Телефон: {$phone}
Наименование товара: {$product_title} ({$product_url})


Комментарий, суть жалобы: {$comment}';

$L['complaint_subject_admin'] = 'Информация о жалобе';
$L['complaint_body_admin'] = 'Здравствуйте! 
Была оформлена жалоба на сайте {$sitetitle} ({$siteurl}).
Подробная информация по жалобе:
Автор жалобы: {$name}
Email: {$email}
Телефон: {$phone}
Наименование товара: {$product_title} ({$product_url})


Комментарий, суть жалобы: {$comment}';
