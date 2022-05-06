<?php
/* 
* переклад українською https://github.com/webitproff 
* травень 2022
*/
defined('COT_CODE') or die('Wrong URL.');

$L['info_desc'] = 'Менеджер розсилок';

$L['cfg_limittosend'] = 'Кількість відправляємих повідомлень за один цикл';

$L['cwsender_lists_title'] = 'Списки одержувачів';
$L['cwsender_lists_add_title'] = 'Створення списку розсилки';
$L['cwsender_lists_add_button'] = 'Створити список';
$L['cwsender_lists_form_title'] = 'Заголовок';
$L['cwsender_lists_form_recipients'] = 'Одержувачі';
$L['cwsender_lists_form_type_text_title'] = 'Текстовий список';
$L['cwsender_lists_form_type_text_desc'] = 'Формат списку: E-mail, Ім’я (кожен одержувач в окремому рядку, ім’я вказувати не обов’язково)';
$L['cwsender_lists_form_type_groups_title'] = 'Групи користувачів';
$L['cwsender_lists_form_type_groups_desc'] = 'Оберіть групи користувачів, членам яких, буде здійснюватися розсилка за цим списком.';
$L['cwsender_lists_form_type_mysql_title'] = 'Mysql-запит';
$L['cwsender_lists_form_type_mysql_desc'] = 'Увага! Тільки для спеціалістів. Будьте уважні при складанні запиту.<br/>Приклад запиту: select name as user_name, email as user_email from cot_users where user_maingrp=4</p>';
$L['cwsender_lists_form_type_subs_title'] = 'Підписка на розсилку';
$L['cwsender_lists_form_type_subs_desc'] = 'Для роботи даного списку розсилки необхідно розмістити форму підписки, розмістивши в будь-якому шаблоні сайту тег функції підписки: {PHP|cwsender_subscribe(номер_розсилки)}, де номер_розсилки - це є id - списку одержувачів розсилки.';

$L['cwsender_letters_title'] = 'Розсилки повідомлень';
$L['cwsender_letters_add_title'] = 'Створення меседжу, повідомлення для розсилки';
$L['cwsender_letters_add_button'] = 'Створити повідомлення';
$L['cwsender_letters_status_ready'] = 'Готово до здійснення розсилки';
$L['cwsender_letters_status_process'] = 'Розсилається ...';
$L['cwsender_letters_status_sent'] = 'Розсилка завершена';
$L['cwsender_letters_form_title'] = 'Заголовок';
$L['cwsender_letters_form_text'] = 'Текст';
$L['cwsender_letters_form_list'] = 'Список разсилки';
$L['cwsender_letters_unsubs_text'] = ' <br/><br/><a href="{$unsubs_url}">Відписаться від розсилки</a><br/><br/>';
$L['cwsender_subsuser_title'] = 'Список підписчиків';

$L['cwsender_error_type_text_empty'] = 'Не заповнено список одержувачів';
$L['cwsender_error_type_groups_empty'] = 'Не вибрані групи одержувачів';
$L['cwsender_error_type_mysql_empty'] = 'Не складено mysql-запит';

$L['cwsender_error_letter_title_empty'] = 'Не вказаний заголовок розсилки';
$L['cwsender_error_letter_text_empty'] = 'Не заповнено текст розсилки';
$L['cwsender_error_letter_list_notselect'] = 'Не вибраний список розсилки';

$L['cwsender_subscribe_title'] = 'Підписка на розсилку';
$L['cwsender_subscribe_name'] = 'Ваше им’я';
$L['cwsender_subscribe_email'] = 'Ваша почта';
$L['cwsender_subscribe_status_subs_ok'] = 'Вітаємо! Ви підписалися на розсилку.';

$L['cwsender_subscribe_error_email_empty'] = 'Не вказано email для підписки';
$L['cwsender_subscribe_error_email_wrong'] = 'Email вказан невірно';
$L['cwsender_subscribe_error_email_exists'] = 'вказаний email уже існує в списку підписчиків цієї розсилки';

$L['cwsender_unsubscribe_title'] = 'Відмова та відписка від розсилки';
$L['cwsender_unsubscribe_status_unsubs_ok'] = 'Ви відписалися від розсилки.';
$L['cwsender_unsubscribe_status_unsubs_fail'] = 'Не вдалося виконати операцію. Будь ласка, повторіть запит або зверніться до адміністратора сайту.';
