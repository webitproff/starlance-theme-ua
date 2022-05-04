<?php
/**
 * Ukrainian Language File for BBcode management
 *
 * @package BBcode
 * @copyright (c) Cotonti Translators Team
 * @license https://github.com/Cotonti/Cotonti/blob/master/License.txt
 */

defined('COT_CODE') or die('Wrong URL.');

$L['adm_bbcode'] = 'BBCode';
$L['adm_bbcodes'] = 'BBCodes';
$L['adm_bbcodes_added'] = 'Новий BBCode успішно доданий.';
$L['adm_bbcodes_notadded'] = 'Помилка додавання BBCode.';
$L['adm_bbcodes_notallfields'] = 'Не всі необхідні поля заповнені.';
$L['adm_bbcodes_clearcache'] = 'Очистити HTML-кеш';
$L['adm_bbcodes_clearcache_confirm'] = 'Це очистить кеш всіх сторінок і повідомлень. Продовжити?';
$L['adm_bbcodes_clearcache_done'] = 'HTML-кеш очищений.';
$L['adm_bbcodes_confirm'] = 'Видалити даний BBCode?';
$L['adm_bbcodes_container'] = 'Контейнер';
$L['adm_bbcodes_convert_comments'] = 'Конвертувати коментарі в HTML';
$L['adm_bbcodes_convert_complete'] = 'Конвертування завершено';
$L['adm_bbcodes_convert_confirm'] = 'Ви впевнені? Операція необоротна! Якщо не впевнені, спочатку зробіть бекап бази даних.';
$L['adm_bbcodes_convert_forums'] = 'Конвертувати форуми в HTML';
$L['adm_bbcodes_convert_page'] = 'Конвертувати сторінки в HTML';
$L['adm_bbcodes_convert_pm'] = 'Конвертувати приватні повідомлення в HTML';
$L['adm_bbcodes_convert_users'] = 'Конвертувати підписи користувачів в HTML';
$L['adm_bbcodes_mode'] = 'Режим';
$L['adm_bbcodes_new'] = 'Новий BBCode';
$L['adm_bbcodes_other'] = 'Другі дії';
$L['adm_bbcodes_pattern'] = 'Шаблон';
$L['adm_bbcodes_postrender'] = 'Посте-рендер';
$L['adm_bbcodes_priority'] = 'Пріорітет';
$L['adm_bbcodes_removed'] = 'BBCode видалено.';
$L['adm_bbcodes_notremoved'] = 'BBCode не видалений.';
$L['adm_bbcodes_replacement'] = 'Заміна';
$L['adm_bbcodes_updated'] = 'BBCode оновлено.';
$L['adm_bbcodes_notupdated'] = 'Деякі BBCode\'и залишилися не зміненими.';
$L['adm_bbcodes_fieldrequired'] = 'В одному з BBCode\'ов не заповнено обов’язкове поле.';
$L['adm_help_bbcodes'] = "<ul>\n<li><strong>Ім’я</strong> - Назва BBcode (тільки букви латинського алфавіту, цифри і підкреслення)</li>\n<li><strong>режим</strong> - режим парсинга, один з: &laquo;str&raquo; (str_replace), &laquo;ereg&raquo; (eregi_replace), &laquo;pcre&raquo; (preg_replace) або &laquo;callback&raquo; (preg_replace_callback)</li>\n<li><strong>Шаблон</strong> - Рядок BBCode або регулярний вираз</li>\n<li><strong>заміна</strong> - Рядок заміни, регулярна заміна або тіло функції зворотного виклику</li>\n<li><strong>Контейнер</strong> - чи є BBCode контейнером (наприклад, [bbcode]Якийсь текст[/bbcode])</li>\n<li><strong>Пріоритет</strong> - Пріоритет BBCode від 0 до 255. BBCode з меншим пріоритетом обробляється в першу чергу, стандартний середній пріоритет - 128.</li>\n<li><strong>Плагін</strong> - Код плагіна/частини, якій належить BBCode. Тільки для плагінів.</li>\n<li><strong>Пост-рендер </strong> - Застосовувати BBCode до сформованого HTML-кешу. Використовуйте тільки якщо ваш callback-код робить якісь обчислення на кожному запиті.</li>\n</ul>";

$L['cfg_smilies'] = 'Включити смайлики';
$L['cfg_smilies_hint'] = '';
$L['cfg_parse_autourls'] = 'Автоматично перетворювати URL в посилання?';

$L['info_desc'] = 'Включає підтримку ББ-кодів на сайті. Адміністратор може настроювати бб-коди за допомогою утиліти. Також додає підтримку кодів смайликів.';
