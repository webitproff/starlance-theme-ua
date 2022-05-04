<?php
/**
 * Ukrainian Language File for Search Plugin
 *
 * @package Search
 * @copyright (c) Cotonti Translators Team
 * @license https://github.com/Cotonti/Cotonti/blob/master/License.txt
 */

defined('COT_CODE') or die('Wrong URL.');

/**
 * Plugin Title & Subtitle
 */

$L['plu_search'] = 'Пошук';

/**
 * Plugin Body
 */

// Загальні - залоговок, інфо, запит.
$L['plu_search_req'] = 'Запит';
$L['plu_search_key'] = 'Найти';
$L['plu_search_forums'] = 'Пошук по форумам';
$L['plu_search_pages'] = 'Пошук по сторінках';

// Перемикачі режимів і заголовків результатів.
$L['plu_tabs_all'] = 'Всюди';
$L['plu_tabs_frm'] = 'Форуми';
$L['plu_tabs_pag'] = 'Сторінки';

// Параметри - Загальні.
$L['plu_ctrl_list'] = 'Утримуйте CTRL щоб виділити декілька розділів';
$L['plu_allsections'] = 'Всі розділи';
$L['plu_allcategories'] = 'Всі розділи';
$L['plu_res_sort'] = 'Сортувати результати за';
$L['plu_sort_desc'] = 'спаданням';
$L['plu_sort_asc'] = 'зростанням';
$L['plu_other_opt'] = 'Параметри пошуку';
$L['plu_other_date'] = 'Враховувати дату';
$L['plu_other_userfilter'] = 'Фільтр по користувачах';

// Параметри - Дати.
$L['plu_any_date'] = 'Будь-яка дата';
$L['plu_last_2_weeks'] = 'Останні 2 тижні';
$L['plu_last_1_month'] = 'Останній місяць';
$L['plu_last_3_month'] = 'Останні 3 місяці';
$L['plu_last_1_year'] = 'Останній рік';
$L['plu_need_datas'] = 'Довільний вибір';

// Параметри - Форум.
$L['plu_frm_set_sec'] = 'Розділи форуму';
$L['plu_frm_res_sort1'] = 'Дата поновлення тем';
$L['plu_frm_res_sort2'] = 'Дата створення тем';
$L['plu_frm_res_sort3'] = 'Назвою тем';
$L['plu_frm_res_sort4'] = 'Кількістю відповідей';
$L['plu_frm_res_sort5'] = 'Кількістю переглядів';
$L['plu_frm_res_sort6'] = 'Розділу';
$L['plu_frm_search_names'] = 'Пошук в назвах тем';
$L['plu_frm_search_post'] = 'Пошук в тілі повідомлень';
$L['plu_frm_search_answ'] = 'Тільки теми з відповідями';
$L['plu_frm_set_subsec'] = 'Пошук в підрозділах';

// Параметри - Сторінки.
$L['plu_pag_set_sec'] = 'Розділи сайту';
$L['plu_pag_res_sort1'] = 'Даті публікації';
$L['plu_pag_res_sort2'] = 'Назвою';
$L['plu_pag_res_sort3'] = 'Популярності';
$L['plu_pag_res_sort3'] = 'Розділу';
$L['plu_pag_search_names'] = 'Пошук в назвах публікацій';
$L['plu_pag_search_desc'] = 'Пошук в описі публікацій';
$L['plu_pag_search_text'] = 'Пошук в самих публікаціях';
$L['plu_pag_search_file'] = 'Публікації тільки з файлами';
$L['plu_pag_set_subsec'] = 'Пошук в підрозділах';

// Помилки.
$L['plu_querytooshort'] = 'Пошуковий запит занадто короткий';
$L['plu_toomanywords'] = 'Занадто багато слів, повинно бути не більше';
$L['plu_noneresult'] = 'Нічого не знайдено, спробуйте спростити запит';
$L['plu_usernotexist'] = 'Даний користувач не існує';

// Результати.
$L['plu_result'] = 'Результати пошуку';
$L['plu_found'] = 'Знайдено';
$L['plu_match'] = 'співпадань';
$L['plu_section'] = 'Розділ';
$L['plu_last_date'] = 'Дата оновлення';

/**
 * Plugin Config
 */

$L['cfg_maxwords'] = 'Максимум пошукових слів';
$L['cfg_maxsigns'] = 'Максимум символів в пошуку';
$L['cfg_maxitems'] = 'Максимум результатів у звичайному пошуку';
$L['cfg_minsigns'] = 'Мінімум символів в запиті';
$L['cfg_pagesearch'] = 'влючно пошук по сторінках';
$L['cfg_forumsearch'] = 'Включити пошук по форумах';
$L['cfg_searchurl'] = 'Вид відображення повідомлень у форумах';
$L['cfg_searchurl_hint'] = 'Single &ndash; окреме повідомлення на сторінці<br />Normal &ndash; перехід до повідомлення при відображенні всієї теми';
$L['cfg_addfields'] = 'Додаткові поля сторінок для пошуку, розділені комами';
$L['cfg_addfields_hint'] = 'Наприклад page_extra1, page_extra2, page_key';
$L['cfg_extrafilters'] = 'Відображати додаткові фільтри на головній сторінці пошуку';

$L['info_desc'] = 'Пошук по сторінках, форумах та інших областях сайту з розширеними параметрами';
