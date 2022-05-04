<?php
/**
 * Ukrainian Language File for the Polls Module (polls.ua.lang.php)
 *
 * @package Polls
 * @copyright (c) Cotonti Team
 * @license https://github.com/Cotonti/Cotonti/blob/master/License.txt
 */

defined('COT_CODE') or die('Wrong URL.');

/**
 * Admin
 */

$L['adm_help_polls'] = 'При створенні опитування порожні відповіді не обліковуються і автоматично видаляються.<br />Після створення опитування не рекомендується редагувати його, так як це може вплинути на хід голосування.';
$L['adm_polls_forumpolls'] = 'Опитування в форумах (останні угорі):';
$L['adm_polls_indexpolls'] = 'Опитування на головній (останні угорі):';
$L['adm_polls_msg916_bump'] = 'Опитування піднято!';
$L['adm_polls_msg916_deleted'] = 'Опитування видалено!';
$L['adm_polls_msg916_reset'] = 'Результати опитування обнулені!';
$L['adm_polls_on_page'] = 'на сторінці';
$L['adm_polls_polltopic'] = 'Опитування';
$L['adm_polls_nopolls'] = 'Опитувань нема';
$L['adm_polls_bump'] = 'Підняти';

$L['poll'] = 'Опитування';
$L['polls_alreadyvoted'] = 'Ви вже проголосували в цьому опитуванні';
$L['polls_created'] = 'Опитування створено';
$L['polls_error_count'] = 'Кількість варіантів відповіді повинно бути не менше двох';
$L['polls_error_title'] = 'Назва опитування занадто коротка або відсутня';
$L['polls_locked'] = 'Опитування заблоковано'; // New in 1.0.0
$L['polls_multiple'] = 'Дозволити вибір двох і більше варіантів';
$L['polls_notyetvoted'] = 'Ви можете голосувати тут';
$L['polls_registeredonly'] = 'Тільки зареєстровані користувачі можуть голосувати.';
$L['polls_since'] = 'с';
$L['polls_updated'] = 'Опитування оновлено';
$L['polls_viewarchives'] = 'Всі опитування';
$L['polls_viewresults'] = 'Підсумки';
$L['polls_Vote'] = 'Голосувати';
$L['polls_votecasted'] = 'Виконано, ваш голос зараховано';
$L['polls_votes'] = 'голосів';

/**
 * Plugin Config
 */

$L['cfg_del_dup_options'] = 'Примусове видалення дубльованих відповідей';
$L['cfg_del_dup_options_hint'] = 'Видаляти дублюючу відповідь навіть якщо вона вже внесений до бази даних';
$L['cfg_ip_id_polls'] = 'Спосіб запам’ятовування голосу';
$L['cfg_ip_id_polls_hint'] = '';
$L['cfg_max_options_polls'] = 'Максимальна кількість варіантів відповіді';
$L['cfg_max_options_polls_hint'] = 'Зайві варіанти будуть автоматично віддалятися при перевищенні ліміту';
$L['cfg_maxpolls'] = 'Кількість відображуваних опитувань на головній';
$L['cfg_mode'] = 'Режим відображення опитувань на головній';
$L['cfg_mode_hint'] = '&laquo;Останні&raquo; &mdash; відображення останнього опитування (опитувань)<br />&laquo;Випадкові&raquo; &mdash; відображення випадкового опитування (опитувань)';
$L['cfg_mode_params'] = 'Останні, Випадкові';

$L['info_desc'] = 'Розміщення і управління опитуваннями на сайті і форумі';

/**
 * Moved from theme.lang
 */

$L['polls_voterssince'] = 'опитаних з';
$L['polls_allpolls'] = 'Всі опитування';
