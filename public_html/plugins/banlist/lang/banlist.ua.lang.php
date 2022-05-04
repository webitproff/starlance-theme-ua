<?php
/**
 * Ukrainian Language File for Banlist
 *
 * @package Banlist
 * @copyright (c) Cotonti Translators Team
 * @license https://github.com/Cotonti/Cotonti/blob/master/License.txt
 */

defined('COT_CODE') or die('Wrong URL.');

$L['info_desc'] = 'Інструмент адміністратора, що дозволяє блокувати користувачів по IP або e-mail адресою';

/**
 * Plugin Body
 */

$L['banlist_title'] = 'Банлист';
$L['banlist_ipmask'] = 'IP маска';
$L['banlist_emailmask'] = 'E-mail маска';
$L['banlist_reason'] = 'Причина';
$L['banlist_duration'] = 'Термін';
$L['banlist_neverexpire'] = 'Без терміну';

$L['banlist_help'] = 'Зразки IP-масок: 194.31.13.41, 194.31.13.*, 194.31.*.*, 194.*.*.*<br />Зразки e-mail масок: @hotmail.com, @yahoo (шаблони (wildcards) не підтримуються) <br /> Запис може містити одну IP-маску, одну e-mail маску або обидві маски.<br />IP-адреси фільтруються для всіх без винятку сторінок, e-mail маски застосовуються тільки при реєстрації користувачів.';
$L['aut_emailbanned'] = 'Обліковий запис заблоковано. Причина: ';

$L['banlist_blocked_ip'] = 'Вашу IP-адресу заблоковано';
$L['banlist_blocked_email'] = 'Вашу ел.адресу заблоковано';
$L['banlist_blocked_login'] = 'Ваш обліковий запис заблокований';

$L['banlist_banned'] = '{$0}.<br />Причина: {$1}<br />Термін дії блокування: {$2}';
$L['banlist_foreverbanned'] = 'довічно.';
