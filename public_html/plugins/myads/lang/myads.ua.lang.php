<?php
/**
 * Русский языковый файл плагина myads
 *
 * @author Roffun
 * @copyright Copyright (c) Roffun, 2014 - 2019 | https://github.com/Roffun
 * @license BSD License
 **/
defined('COT_CODE') or die('Wrong URL.');

$L['Myads'] = 'Myads';
$L['myads_advblock'] = 'Рекламный блок';
$L['info_name'] = 'Вывод рекламных блоков';
$L['info_desc'] = 'Вывод рекламных блоков в контенте или произвольном месте на сайте';
$L['myads_style_color'] = ' style="color:#4B6F95"';
$L['myads_textarea_code'] = array('<textarea onclick="this.select();" rows="4" style="resize:none" readonly>', '</textarea>');
$L['myads_input_onclick'] = '<input onclick="this.select();" readonly value="';

$L['cfg_myads_header'] = '<b>В шапке (header.tpl)</b><br>' . $L['myads_textarea_code'][0] . '<!-- IF {PHP.myads_header} -->{PHP.myads_header}<!-- ENDIF -->' . $L['myads_textarea_code'][1] .
     '<div' . $L['myads_style_color'] . '>' . $tdesc[0] . '</div>';
$L['cfg_myads_main_top'] = '<b>В центральной части верхний (index.tpl и др)</b><br>' . $L['myads_textarea_code'][0] . '<!-- IF {PHP.myads_main_top} -->{PHP.myads_main_top}<!-- ENDIF -->' . $L['myads_textarea_code'][1] .
     '<div' . $L['myads_style_color'] . '>' . $tdesc[1] . '</div>';
$L['cfg_myads_main_bottom'] = '<b>В центральной части нижний (index.tpl и др)</b><br>' . $L['myads_textarea_code'][0] .
     '<!-- IF {PHP.myads_main_bottom} -->{PHP.myads_main_bottom}<!-- ENDIF -->' . $L['myads_textarea_code'][1] . '<div' . $L['myads_style_color'] . '>' . $tdesc[2] . '</div>';
$L['cfg_myads_sideleft_top'] = '<b>В левом сайдбаре верхний (sidebars.tpl)</b><br>' . $L['myads_textarea_code'][0] .
     '<!-- IF {PHP.myads_sideleft_top} -->{PHP.myads_sideleft_top}<!-- ENDIF -->' . $L['myads_textarea_code'][1] . '<div' . $L['myads_style_color'] . '>' . $tdesc[3] . '</div>';
$L['cfg_myads_sideleft_bottom'] = '<b>В левом сайдбаре нижний (sidebars.tpl)</b><br>' . $L['myads_textarea_code'][0] .
     '<!-- IF {PHP.myads_sideleft_bottom} -->{PHP.myads_sideleft_bottom}<!-- ENDIF -->' . $L['myads_textarea_code'][1] . '<div' . $L['myads_style_color'] . '>' . $tdesc[4] . '</div>';
$L['cfg_myads_sideright_top'] = '<b>В правом сайдбаре верхний (sidebars.tpl)</b><br>' . $L['myads_textarea_code'][0] .
     '<!-- IF {PHP.myads_sideright_top} -->{PHP.myads_sideright_top}<!-- ENDIF -->' . $L['myads_textarea_code'][1] . '<div' . $L['myads_style_color'] . '>' . $tdesc[5] . '</div>';
$L['cfg_myads_sideright_bottom'] = '<b>В правом сайдбаре нижний (sidebars.tpl)</b><br>' . $L['myads_textarea_code'][0] .
     '<!-- IF {PHP.myads_sideright_bottom} -->{PHP.myads_sideright_bottom}<!-- ENDIF -->' . $L['myads_textarea_code'][1] . '<div' . $L['myads_style_color'] . '>' . $tdesc[6] . '</div>';
$L['cfg_myads_footer'] = '<b>В подвале (footer.tpl)</b><br>' . $L['myads_textarea_code'][0] . '<!-- IF {PHP.myads_footer} -->{PHP.myads_footer}<!-- ENDIF -->' . $L['myads_textarea_code'][1] .
     '<div' . $L['myads_style_color'] . '>' . $tdesc[7] . '</div>';

$L['cfg_myads_tdesc'] = 'Описание блоков шаблона, через запятую по порядку';
$L['cfg_myads_cdesc'] = 'Описание блоков контента, через запятую по порядку';
$L['cfg_myads1'] = '<h3>' . $L['myads_advblock'] . ' №1</h3><div' . $L['myads_style_color'] . '>' . $cdesc[0] . '</div>' . $L['myads_input_onclick'] . '[SCEBANNER1]">';
$L['cfg_myads2'] = '<h3>' . $L['myads_advblock'] . ' №2</h3><div' . $L['myads_style_color'] . '>' . $cdesc[1] . '</div>' . $L['myads_input_onclick'] . '[SCEBANNER2]">';
$L['cfg_myads3'] = '<h3>' . $L['myads_advblock'] . ' №3</h3><div' . $L['myads_style_color'] . '>' . $cdesc[2] . '</div>' . $L['myads_input_onclick'] . '[SCEBANNER3]">';
$L['cfg_myads4'] = '<h3>' . $L['myads_advblock'] . ' №4</h3><div' . $L['myads_style_color'] . '>' . $cdesc[3] . '</div>' . $L['myads_input_onclick'] . '[SCEBANNER4]">';
$L['cfg_myads5'] = '<h3>' . $L['myads_advblock'] . ' №5</h3><div' . $L['myads_style_color'] . '>' . $cdesc[4] . '</div>' . $L['myads_input_onclick'] . '[SCEBANNER5]">';
$L['myads_visy'] = 'Вставка доступна в визуальном режиме!';

$L['cfg_myads_headerlist'] = '<h3>Подключение внешних скриптов</h3>Содержимое выводится в <b>header.tpl</b> тегом<br><input onclick="this.select();" size="25" readonly value="{HEADER_MYADSCONNECTS}"><br />Вставьте код перед <b>&lt;/head></b>';
$L['cfg_myads_footerlist'] = '<h3>Подключение внешних скриптов</h3>Выводится в <b>footer.tpl</b> добавляется к содержимому<br><input onclick="this.select();" size="25" readonly value="{FOOTER_RC}">';

$L['cfg_myads_usersdone'] = 'ID пользователей, через запятую, которым разрешено вставлять рекламные блоки в контент полной новости';

$L['cfg_myads_sep_else'] = 'РЕКЛАМНЫЕ БЛОКИ ДЛЯ ВСТАВКИ В КОНТЕНТ ЧЕРЕЗ РЕДАКТОР';
$L['cfg_myads_sep'] = 'КТО МОЖЕТ ВСТАВЛЯТЬ РЕКЛАМНЫЕ БЛОКИ В КОНТЕНТ';
$L['cfg_myads_external_sep'] = 'ПОДКЛЮЧЕНИЕ ВНЕШНИХ ФАЙЛОВ (JS,CSS)';
