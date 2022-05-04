<?php
/**
 * Ukrainian Language File for RecentItems Plugin
 *
 * @package Recentitems
 * @copyright (c) Cotonti Translators Team
 * @license https://github.com/Cotonti/Cotonti/blob/master/License.txt
 */

defined('COT_CODE') or die('Wrong URL.');

/**
 * Plugin Info
 */

$L['info_desc'] = 'Відображає останні поповнення сайту (сторінки, теми) на головній сторінці';

/**
 * Plugin Config
 */

$L['cfg_recentpages'] = 'Відображати нові сторінки на головній сторінці';
$L['cfg_maxpages'] = 'Кількість нових сторінок на головній сторінці';
$L['cfg_recentforums'] = 'Відображати нові повідомлення у форумах на головній сторінці';
$L['cfg_maxtopics'] = 'Кількість нових повідомлень у форумах на головній';
$L['cfg_newpages'] = 'Відображати нові сторінки на сторінці "Нове на сайті"';
$L['cfg_newforums'] = 'Відображати нові повідомлення у форумах на сторінці "Нове на сайті"';
$L['cfg_newadditional'] = 'Включити підтримку додаткових модулів на сторінці "Нове на сайті"';
$L['cfg_itemsperpage'] = 'Кількість елементів на сторінці "Нове на сайті"';
$L['cfg_rightscan'] = 'Включити перевірку доступу до елементів';
$L['cfg_rightscan_hint'] = 'Використовуйте, якщо на сайті велика кількість категорій сторінок або розділів форуму з поділом прав';
$L['cfg_recentpagestitle'] = 'Автоматичне обмеження довжини заголовка нових сторінок на головній';
$L['cfg_recentpagestitle_hint'] = 'За замовчуванням вимкнено.';
$L['cfg_recentpagestext'] = 'Автоматичне обмеження довжини тексту нових сторінок на головній';
$L['cfg_recentpagestext_hint'] = 'За замовчуванням вимкнено.';
$L['cfg_recentforumstitle'] = 'Автоматичне обмеження довжини заголовка нових тем у форумі на головній';
$L['cfg_recentforumstitle_hint'] = 'За замовчуванням вимкнено.';
$L['cfg_newpagestext'] = 'Автоматичне обмеження довжини тексту сторінок на сторінці "Нове на сайті"';
$L['cfg_newpagestext_hint'] = 'За замовчуванням вимкнено.';
$L['cfg_whitelist'] = 'Білий список категорій';
$L['cfg_whitelist_hint'] = 'По одному коду на рядок. Якщо не порожній, тільки ці гілки будуть відображені.';
$L['cfg_blacklist'] = 'Чорний список категорій';
$L['cfg_blacklist_hint'] = 'По одному коду на рядок. Якщо не порожній, тільки ці гілки будуть виключені з виводу.';
$L['cfg_cache_ttl'] = 'Час життя кешу у секундах';
$L['cfg_cache_ttl_hint'] = '0 - кеш відключений';

/**
 * Plugin Body
 */

$L['recentitems_title'] = 'Нове на сайті';

$L['recentitems_forums'] = 'Нове на форумах';
$L['recentitems_pages'] = 'Нове в розділах';

$L['recentitems_nonewpages'] = 'Немає нових сторінок';
$L['recentitems_nonewposts'] = 'Немає нових повідомлень';

$L['recentitems_shownew'] = 'Показати нове на сайті';
$L['recentitems_fromlastvisit'] = 'з останнього мого відвідування';
$L['recentitems_1day'] = 'за добу';
$L['recentitems_2days'] = 'за 2 доби';
$L['recentitems_3days'] = 'за 3 доби';
$L['recentitems_1week'] = 'за тиждень';
$L['recentitems_2weeks'] = 'за 2 тижні';
$L['recentitems_1month'] = 'за місяць';

$L['recentitems_posts'] = 'Немає нових повідомлень';
$L['recentitems_posts_new'] = 'Є нові повідомлення';
$L['recentitems_posts_hot'] = 'Популярна (немає нових)';
$L['recentitems_posts_new_hot'] = 'Популярна (є нові)';
$L['recentitems_posts_sticky'] = 'Тема закріплена (немає нових)';
$L['recentitems_posts_new_sticky'] = 'Тема закріплена (є нові)';
$L['recentitems_posts_locked'] = 'Тема закрита (немає нових)';
$L['recentitems_posts_new_locked'] = 'Тема закрита (є нові)';
$L['recentitems_posts_sticky_locked'] = 'Оголошення';
$L['recentitems_posts_new_sticky_locked'] = 'Нові оголошення';
$L['recentitems_posts_moved'] = 'Перенесена в другий розділ';
