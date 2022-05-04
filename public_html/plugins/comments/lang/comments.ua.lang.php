<?php
/**
 * Ukrainian Language File for Comments Plugin
 *
 * @package Comments
 * @copyright (c) Cotonti Translators Team
 * @license https://github.com/Cotonti/Cotonti/blob/master/License.txt
 */

defined('COT_CODE') or die('Wrong URL.');

/**
 * Plugin Config
 */

$L['cfg_commentsize'] = 'Макс. розмір коментаря, байт';
$L['cfg_commentsize_hint'] = '0 - без обмеження розміру';
$L['cfg_countcomments'] = 'Рахувати коментарі';
$L['cfg_countcomments_hint'] = 'Показувати кількість коментарів поруч з іконкою';
$L['cfg_enable_comments'] = 'Включити коментарі';
$L['cfg_expand_comments'] = 'Відкрити коментарі';
$L['cfg_expand_comments_hint'] = 'За замовчуванням показувати коментарі на сторінці';
$L['cfg_mail'] = 'Відсилати email-повідомлення адміністратору про нові коментарі';
$L['cfg_markitup'] = 'Використовувати markitup';
$L['cfg_markup'] = 'Включити розмітку';
$L['cfg_maxcommentsperpage'] = 'Макс. кількість коментарів на сторінці';
$L['cfg_maxcommentsperpage_hint'] = '';
$L['cfg_minsize'] = 'Мін. довжина коментаря';
$L['cfg_order'] = 'Порядок сортування';
$L['cfg_order_hint'] = 'Хронологічний або найсвіжіші угорі';
$L['cfg_order_params'] = 'Хронологічний,Останні угорі';
$L['cfg_parsebbcodecom'] = 'Парсинг BBCode в коментарях';
$L['cfg_parsebbcodecom_hint'] = '';
$L['cfg_parsesmiliescom'] = 'Парсинг смайликів в коментарях';
$L['cfg_parsesmiliescom_hint'] = '';
$L['cfg_rss_commentmaxsymbols'] = 'Макс. кількість символів для коментарів';
$L['cfg_rss_commentmaxsymbols_hint'] = 'За замовчуванням вимкнено';
$L['cfg_time'] = 'Користувачі можуть редагувати коментарі протягом';
$L['cfg_time_hint'] = 'хвилин';

$L['info_desc'] = 'Система коментарів для Cotonti з API та інтеграцією у сторінки, списки, опитування, RSS та іншими розширення.';

/**
 * Plugin Body
 */

$L['comments_comment'] = 'Коментар';
$L['comments_comments'] = 'Коментарі';
$L['comments_confirm_delete'] = 'Ви дійсно хочете видалити цей коментар?';
$L['Newcomment'] = 'Новий коментар';

$L['comm_on_page'] = 'на сторінці';

$L['com_closed'] = 'Для цього елементу не можна додавати коментарі';
$L['com_commentadded'] = 'Коментар доданий';
$L['com_commenttoolong'] = 'Коментар занадто довгий';
$L['com_commenttooshort'] = 'Коментар занадто короткий або відсутній';
$L['com_nocommentsyet'] = 'Коментарі відсутні';
$L['com_authortooshort'] = 'Ім’я автора занадто коротке';
$L['com_regonly'] = 'Додавання комментарів доступно лише зареєстрованим користувачам';

$L['plu_comgup'] = ' залишилось';
$L['com_edithint'] = 'Ваш коментар буде доступний для редагування протягом {$time}';

$L['plu_comlive'] = 'Новий коментар на сайті ';
$L['plu_comlive1'] = 'Відредагований коментар на сайті ';
$L['plu_comlive2'] = 'залишив коментар:';
$L['plu_comlive3'] = 'відредагував свій коментар:';
$L['rss_comments'] = 'Коментарі для';
$L['rss_comment_of_user'] = 'Коментар користувача';
$L['rss_comments_item_desc'] = 'Стрічка коментарів сторінки';
$L['rss_original'] = 'Коментована сторінка';

/**
 * Admin Section
 */

$L['home_newcomments'] = 'Нові коментарі';
$L['core_comments'] = &$L['Comments'];
$L['adm_comm_already_del'] = 'Коментар видалено';

/**
 * cot_declension arrays
 */

$Ls['Comments'] = "коментар,коментарі,коментарів";

/**
 * Comedit
 */

$L['plu_title'] = 'Редагування коментаря';
