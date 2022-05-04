<?php
/**
 * Captcha plugin: русский перевод
 *
 * @author Roffun
 * @copyright Copyright (c) Roffun, 2018 - 2019 | https://github.com/Roffun
 * @license BSD License
 **/

 defined('COT_CODE') or die('Wrong URL.');

$L['info_name'] = 'Капча';
$L['info_desc'] = 'Защита сайта от спама с помощью капчи';
$L['info_notes'] = $L['captcha_license'].'<br>'.$L['captcha_oficial'];

$L['captcha_too_many_attempts'] = 'Cлишком много попыток!';//
$L['captcha_too_frequent_requests'] = 'Cлишком частые запросы!';//
$L['captcha_verification_failed'] = "Введен неправильный код!";
$L['captcha_refresh'] = "Кликните для обновления";
$L['Captcha_code_reply'] = 'Код с картинки';
$L['Captcha_code_reply_info'] = 'Введите в это поле символы, которые видите на изображении';
$L['captcha_no_bot'] = "Я НЕ БОТ!";

$L['cap_num'] = '123456789';
$L['cap_latin_small'] = 'abcdefghijklmnpqrstuvwxyz';
$L['cap_latin_big'] = 'ABCDEFGHIJKLMNPQRSTUVWXYZ';

$L['cfg_delay'] = 'Задержка против хаммеринга';
$L['cfg_delay_hint'] = 'сек.';
$L['cfg_attempts'] = 'Макс. число попыток до появления проверки на бота';
$L['cfg_attempts_hint'] = '0 - не ограничено';
$L['cfg_attempts_sec'] = 'Ограничить число попыток в секунду';

$L['cfg_sep_conf'] = 'ПАРАМЕТРЫ ДЛЯ ГЕНЕРАЦИИ ТЕКСТА КАПЧИ';
$L['cfg_caplen'] = 'Количество символов';
$L['cfg_caplen_float'] = 'Изменять на 1 случайным образом количество символов';
$L['cfg_cap_angle'] = 'Максимальный угол наклона символов';
$L['cfg_cap_offset'] = 'Максимальный отступ (разброс) символов';

$L['cfg_sep_img'] = 'ПАРАМЕТРЫ ИЗОБРАЖЕНИЯ КАПЧИ';
$L['cfg_capw'] = 'Ширина изображения';
$L['cfg_caph'] = 'Высота изображения';
$L['cfg_cap_line_ef'] = 'Включить эффект наложения линий над и под текстом';
$L['cfg_cap_lines'] = 'Количество линий над текстом<br><i>0 - алгоритм по умолчанию</i>';
$L['cfg_cap_lines_under'] = 'Количество линий под текстом<br><i>0 - алгоритм по умолчанию</i>';
$L['cfg_cap_filter_ef'] = 'Включить наложение эффекта цветовых фильтров';

$L['cfg_cap_charset'] = '<b>Символы для случайной генерации</b>:<br><p>'.$L['cap_num'].'<br>'.$L['cap_latin_small'].'<br>'.$L['cap_latin_big'].'</p><hr><i>* Поддерживаются цифры и буквы латиницей</i>';
