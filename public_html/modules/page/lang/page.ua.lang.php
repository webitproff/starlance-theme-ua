<?php
/**
 * Ukrainian Language File for the Page Module (page.ua.lang.php)
 *
 * @package Page
 * @copyright (c) Cotonti Team
 * @license https://github.com/Cotonti/Cotonti/blob/master/License.txt
 */

defined('COT_CODE') or die('Wrong URL.');

/**
 * Module Config
 */

$L['cfg_autovalidate'] = 'Автоматичне затвердження сторінок';
$L['cfg_autovalidate_hint'] = 'Автоматично затверджувати публікацію сторінок, створених користувачем з правом адміністрування розділу';
$L['cfg_count_admin'] = 'Рахувати відвідування адміністраторів';
$L['cfg_count_admin_hint'] = 'Включити відвідування адміністраторів в статистику відвідуваності сайту';
$L['cfg_maxlistsperpage'] = 'Макс. кількість категорій на сторінці ';
$L['cfg_maxlistsperpage_hint'] = '';
$L['cfg_order'] = 'Поле сортування';
$L['cfg_title_page'] = 'Формат заголовка сторінки';
$L['cfg_title_page_hint'] = 'Опції: {TITLE}, {CATEGORY}';
$L['cfg_way'] = 'Напрям сортування';
$L['cfg_truncatetext'] = 'Обмежити розмір тексту в списках сторінок';
$L['cfg_truncatetext_hint'] = '0 для відключення';
$L['cfg_allowemptytext'] = 'Дозволити порожній текст сторінки';
$L['cfg_keywords'] = 'Ключові слова';

$L['info_desc'] = 'Розширена функціональність з управління вмістом: сторінки та категорії сторінок.';

/**
 * Structure Confing
 */

$L['cfg_order_params'] = array(); // Redefined in cot_page_config_order()
$L['cfg_way_params'] = array($L['Ascending'], $L['Descending']);
$L['cfg_metatitle'] = 'Meta-заголовок';
$L['cfg_metadesc'] = 'Meta-опис';

/**
 * Admin Page Section
 */

$L['adm_queue_deleted'] = 'Сторінка видалена в кошик';
$L['adm_valqueue'] = 'У черзі на затвердження';
$L['adm_validated'] = 'Затверджені';
$L['adm_expired'] = 'З вичерпаним терміном';
$L['adm_structure'] = 'Структура сторінок (категорії)';
$L['adm_sort'] = 'Сортувати';
$L['adm_sortingorder'] = 'Порядок сортування за замовчуванням в категорії';
$L['adm_showall'] = 'Показати все';
$L['adm_help_page'] = 'Сторінки категорії &laquo;system&raquo; не відображаються в списках сторінок і є окремими, самостійними сторінками';
$L['adm_fileyesno'] = 'Файл (Так/Ні)';
$L['adm_fileurl'] = 'URL файлу';
$L['adm_filecount'] = 'Кількість завантажень';
$L['adm_filesize'] = 'Розмір файлу';

/**
 * Page add and edit
 */

$L['page_addtitle'] = 'Створити сторінку';
$L['page_addsubtitle'] = 'Заповніть необхідні поля і відправте форму для продовження';
$L['page_edittitle'] = 'Параметри сторінки';
$L['page_editsubtitle'] = 'Змініть необхідні поля і натисніть "Надіслати" для продовження';

$L['page_aliascharacters'] = 'Неприпустимо використання символів \'+\', \'/\', \'?\', \'%\', \'#\', \'&\' у аліасах';
$L['page_catmissing'] = 'Код категорії відсутній';
$L['page_clone'] = 'Клонувати сторінку';
$L['page_confirm_delete'] = 'Ви дійсно хочете видалити цю сторінку?';
$L['page_confirm_validate'] = 'Хочете затвердити цю сторінку?';
$L['page_confirm_unvalidate'] = 'Ви дійсно хочете відправити цю сторінку у чергу на затвердження?';
$L['page_date_now'] = 'Актуалізувати дату сторінки';
$L['page_drafts'] = 'Чернетки';
$L['page_drafts_desc'] = 'Сторінки, збережені у ваших чернетках';
$L['page_notavailable'] = 'Сторінка буде розміщенф через';
$L['page_textmissing'] = 'Текст сторінки не повинен бути порожнім';
$L['page_titletooshort'] = 'Заголовок занадто короткий або відсутній';
$L['page_validation'] = 'Очікують затвердження';
$L['page_validation_desc'] = 'Ваші сторінки, які ще не затверджені адміністратором';

$L['page_file'] = 'Прикріпити файл';
$L['page_filehint'] = '(при включенні модуля завантажень заповніть два поля нижче)';
$L['page_urlhint'] = '(якщо прикріплений файл)';
$L['page_filesize'] = 'Розмір файлу, Кб';
$L['page_filesizehint'] = '(якщо прикріплений файл)';
$L['page_filehitcount'] = 'Завантажень';
$L['page_filehitcounthint'] = '(якщо прикріплений файл)';
$L['page_metakeywords'] = 'Ключові слова';
$L['page_metatitle'] = 'Meta-заголовок';
$L['page_metadesc'] = 'Meta-опис';

$L['page_formhint'] = 'Після заповнення форми сторінка буде поміщена у чергу на затвердження і буде прихована до тих пір, поки модератор або адміністратор не затвердять її публікацію у відповідному розділі. Уважно перевірте правильність заповнення полів форми. Якщо вам знадобиться змінити зміст сторінки, то ви зможете зробити це пізніше, але сторінка знову буде відправлена на затвердження.';

$L['page_pageid'] = 'ID сторінки';
$L['page_deletepage'] = 'Видалити сторінку';

$L['page_savedasdraft'] = 'Сторінка збережена у чернетках';

/**
 * Page statuses
 */

$L['page_status_draft'] = 'Чернетка';
$L['page_status_pending'] = 'На розгляді';
$L['page_status_approved'] = 'Затверджена';
$L['page_status_published'] = 'Опублікована';
$L['page_status_expired'] = 'Застаріла';

/**
 * Moved from theme.lang
 */

$L['page_linesperpage'] = 'Записів на сторінку';
$L['page_linesinthissection'] = 'Записів у розділі';

$Ls['pages'] = "сторінка,сторінки,сторінок";
$Ls['unvalidated_pages'] = "незатвердженна сторінка,незатверджені сторінки,незатверджених сторінок";
$Ls['pages_in_drafts'] = "сторінка у чернетках,сторінки у чернетках,сторінок у чернетках";
