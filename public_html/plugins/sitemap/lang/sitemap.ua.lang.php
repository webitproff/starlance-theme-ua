<?php
/**
 * Ukrainian Language File for Sitemap plugin
 *
 * @package SiteMap
 * @copyright (c) Cotonti Team
 * @license https://github.com/Cotonti/Cotonti/blob/master/License.txt
 */

defined('COT_CODE') or die('Wrong URL.');

$L['info_desc'] = 'XML-карта сайту з даними для пошукових систем';

$sitemap_freqs = array(
	'default' => 'За замовчуванням',
	'always'  => 'Завжди',
	'hourly'  => 'Щогодини',
	'daily'   => 'Щодня',
	'weekly'  => 'Щотижня',
	'monthly' => 'Щомісяця',
	'yearly'  => 'Щорічно',
	'never'   => 'Ніколи'
);

$L['cfg_cache_ttl'] 		 = 'Час життя кеша в секундах';
$L['cfg_freq'] 				 = 'Частота зміни за замовчуванням';
$L['cfg_freq_params'] 		 = $sitemap_freqs;
$L['cfg_prio'] 				 = 'Пріоритет за замовчуванням';
$L['cfg_perpage'] 			 = 'Макс. посилань на частину карти';
$L['cfg_perpage_hint'] 		 = 'Якщо посилань більше, то карта розбивається на частини, див. http://yoursite/index.php?r=sitemap&a=index';
$L['cfg_index_freq'] 		 = 'Частота зміни головної';
$L['cfg_index_freq_params']  = $sitemap_freqs;
$L['cfg_index_prio'] 		 = 'Пріоритет головної сторінки';
$L['cfg_page'] 				 = 'Включити сторінки';
$L['cfg_page_freq'] 		 = 'Частота зміни сторінок';
$L['cfg_page_freq_params']   = $sitemap_freqs;
$L['cfg_page_prio'] 		 = 'Пріоритет сторінок';
$L['cfg_forums'] 			 = 'Включити форуми';
$L['cfg_forums_freq'] 		 = 'Частота зміни форумів';
$L['cfg_forums_freq_params'] = $sitemap_freqs;
$L['cfg_forums_prio'] 		 = 'Пріоритет форумів';
$L['cfg_users'] 			 = 'Включити користувачів';
$L['cfg_users_freq'] 		 = 'Частота зміни користувачів';
$L['cfg_users_freq_params']  = $sitemap_freqs;
$L['cfg_users_prio'] 		 = 'Пріоритет користувачів';
