<?php
defined('COT_CODE') or die('Wrong URL');

/**
 * Plugin Info
 */

//$L['adminstats'] = '';
$L['info_desc'] = 'Деталізована статистика, доступна з будь-якого шаблону адмін-панелі';

/**
 * Plugin Config
 */

$L['cfg_cache_ttl'] = 'Час життя кешу в секундах';
$L['cfg_cache_ttl_hint'] = '0 - кеш вимкнено';

/**
 * Plugin Admin
 */

$L['adminstats_cot_version'] = &$L['Version'];

$L['adminstats_cot_defaulttheme'] = 'Тема оформлення';
$L['adminstats_cot_defaultscheme'] = 'Схема кольорів';
$L['adminstats_cot_defaulticons'] = 'Іконки';
$L['adminstats_cot_defaultlang'] = 'Мова';
$L['adminstats_cot_admintheme'] = 'Тема адмін-панелі';

$L['adminstats_cot_cache'] = 'Кешування даних';
$L['adminstats_cot_cache_drv'] = 'Кеш драйвер';
$L['adminstats_cot_cache_drv_Empty']= &$L['Gender_U'];
$L['adminstats_cot_xtpl_cache'] = 'Кешування шаблонів';
$L['adminstats_cot_html_cleanup'] = 'Компактна HTML-сігнатура';
$L['adminstats_cot_cache_index'] = 'Статичний кеш для головної сторінки';
$L['adminstats_cot_cache_page'] = 'Статичний кеш для сторінок та розділів';
$L['adminstats_cot_cache_forums'] = 'Статичний кеш для форумів';

$L['adminstats_cot_check_updates'] = 'Перевірка оновлень';
$L['adminstats_cot_display_errors'] = 'Відображення повідомлень про помилки';
$L['adminstats_cot_ipcheck'] = 'Перевірка IP під час авторизації';
$L['adminstats_cot_authcache'] = 'Кешування прав у SQL таблиці БД';
$L['adminstats_cot_useremailduplicate'] = 'Дозволити облікові записи з дублюючими Email';
$L['adminstats_cot_debug_mode'] = 'Режим налагодження';

$L['adminstats_modules'] = &$L['Modules'];
$L['adminstats_active_modules'] = 'Активні модулі';
$L['adminstats_plugins'] = &$L['Plugins'];
$L['adminstats_active_plugins'] = 'Активні плагіни';
$L['adminstats_hooks'] = &$L['Hooks'];
$L['adminstats_active_hooks'] = 'Активні хуки';

$L['adminstats_cot_database'] = &$L['Database'];
$L['adminstats_mysqlcharset'] = 'Кодування БД SQL';
$L['adminstats_db_counts'] = 'БД SQL, таблиць';
$L['adminstats_db_rows'] = &$L['home_db_rows'];
$L['adminstats_db_indexsize'] = &$L['home_db_indexsize'];
$L['adminstats_db_datassize'] = &$L['home_db_datassize'];
$L['adminstats_db_totalsize'] = &$L['home_db_totalsize'];

$L['adminstats_cot_db_counts'] = 'БД SQL, таблиць Cotonti';
$L['adminstats_cot_db_rows'] = 'БД SQL, рядків Cotonti';
$L['adminstats_cot_db_indexsize'] = 'БД SQL, розмір індексу Cotonti (KB)';
$L['adminstats_cot_db_datassize'] = 'БД SQL, розмір даних Cotonti (KB)';
$L['adminstats_cot_db_totalsize'] = 'БД SQL, загальний розмір Cotonti (KB)';

$L['adminstats_no_new_ver'] = 'Ваша версія актуальна';
$L['adminstats_new_ver'] = 'Можливість оновлення';
$L['adminstats_update_revision'] = &$L['home_update_revision'];
$L['adminstats_new_ver_msg'] = 'Анонс нової версії';

$L['adminstats_error_type_disabled'] = 'Розширення %1$s не активне';
$L['adminstats_error_type_wrong'] = 'Вказано не підтримуване розширення';