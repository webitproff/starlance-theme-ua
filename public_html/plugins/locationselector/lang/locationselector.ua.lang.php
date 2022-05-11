<?php
/**
 * Location Selector for Cotonti
 *
 * @package locationselector
 * @author Cotonti CMF (http://cotonti.com/) 
 */

defined('COT_CODE') or die('Wrong URL.');

// Plugin configuration

$L['cfg_countriesfilter'] = array('(<strong>поле№1</strong>)Відображати країни, наприклад ua,pl,de (Коди через кому, порожнє значення - без фільтра країн)');
$L['cfg_topcountries'] = array('Країни, які відображати у початку випадаючого списку країн, наприклад ua,pl,de або pl,ua,de чи навпаки de,pl,ua,');
$L['cfg_hide_country'] = array('Приховати вибір країни (використовується, коли locationselector використовується для міст та регіонів в межах однієї держави на сайті. у <strong>полі №1</strong> має бути вказана лише одна країна, наприклад ua)');
$L['cfg_hide_city'] = array('Приховати поле вибору міст');
$L['cfg_hide_city_chg_title'] = array('Замінити заголовок "Виберіть регіон" на "Виберіть місто"');

$L['ls_addcountry'] = 'Додати країну';
$L['ls_countries'] = 'Країни';
$L['ls_nocountries'] = 'Список країн порожній';

$L['ls_addregion'] = 'Додати регіон';
$L['ls_regions'] = 'Регіони';
$L['ls_noregions'] = 'Список регіонів порожній';

$L['ls_addcity'] = 'Додати місто';
$L['ls_cities'] = 'Міста';
$L['ls_nocities'] = 'Список міст порожній';

$L['ls_newcity_newstr'] = 'кожне місто в окремому рядку';
$L['ls_newcity_list'] = 'Вкажіть писок міст';

$L['select_country'] = 'Виберіть країну';
$L['select_region'] = 'Виберіть регіон';
$L['select_city'] = 'Виберіть місто';