<?php
/**
 * [BEGIN_COT_EXT]
 * Code=locationselector
 * Name=Location Selector
 * Description=Редактор/Селектор країн, регіонів, міст із можливістю приховувати країну
 * Version=3.0.0
 * Date=2021-12-22 up May 11, 2022
 * Author=Cotonti Team
 * Copyright=Copyright (c) Cotonti Team
 * Notes=додано селектор для модуля ринку послуг, помилку пофіксено Warning: Invalid argument supplied for foreach() in ....../locationselector.functions.php in 129
 * Auth_guests=R
 * Lock_guests=W12345A
 * Auth_members=R
 * Lock_members=W12345A
 * [END_COT_EXT]
 * 
 * [BEGIN_COT_EXT_CONFIG]
 * countriesfilter=01:string:::Show only countries
 * topcountries=02:string:::Show countries on the top
 * hide_country=03:radio::1:Скрыть страну
 * hide_city=04:radio::1:Скрыть города
 * hide_city_chg_title=05:radio::1:Заменить 'Выберите регион' на 'Выберите город'
 * [END_COT_EXT_CONFIG]
 */

defined('COT_CODE') or die('Wrong URL.');

