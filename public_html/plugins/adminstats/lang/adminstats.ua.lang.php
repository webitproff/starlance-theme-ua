<?php
/**
 * adminstats.ua.lang.php Увага, адаптовано для https://github.com/webitproff/cot-controlcot 
 * ControlCot Admin Theme for Cotonti Siena
 * purpose of this file: Підключення додаткових локалізаційних рядків української мови в додатку adminstats 
 * для теми Панелы Адміністратора ControlCot Skin
 * - відкритий репозиторій на GitHub: https://github.com/webitproff/cot-controlcot
 * @package Cotonti Siena 0.9.19
 * @version 1.0.0
 * @date 05.19.2022
 * @author webitproff
 * @copyright Copyright (c) https://github.com/webitproff webitproff@gmail.com https://t.me/webitproff
 * @license BSD
 */
defined('COT_CODE') or die('Wrong URL');

/**
 * Plugin Info
 */

//$L['adminstats'] = '';
$L['info_desc'] = 'Деталізована статистика, доступна з будь-якого шаблону адмін-панелі';

/**
 * Plugin Config
 */

$L['cfg_cache_ttl'] = 'Термін існування кэшу в секундах';
$L['cfg_cache_ttl_hint'] = '0 - кэш відключено';

/**
 * Plugin Admin
 */

$L['adminstats_cot_version'] = &$L['Version'];

$L['adminstats_cot_defaulttheme'] = 'Тема(скін) оформления';
$L['adminstats_cot_defaultscheme'] = 'Цветова схема';
$L['adminstats_cot_defaulticons'] = 'Іконки';
$L['adminstats_cot_defaultlang'] = 'Мова';
$L['adminstats_cot_admintheme'] = 'Тема(скін) адмін-панели';

$L['adminstats_cot_cache'] = 'Кешування даних';
$L['adminstats_cot_cache_drv'] = 'Драйвер кешування';
$L['adminstats_cot_cache_drv_Empty']= &$L['Gender_U'];
$L['adminstats_cot_xtpl_cache'] = 'Кэшировання шаблонів';
$L['adminstats_cot_html_cleanup'] = 'Компактна HTML-сигнатура';
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

$L['adminstats_error_type_disabled'] = 'Додаток %1$s не активний';
$L['adminstats_error_type_wrong'] = 'Вказано розширення, що не підтримується';
