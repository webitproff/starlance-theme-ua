<?php
// Social Services

$R['Facebook'] = 'https://facebook.com/';
$R['Instagram'] = 'https://instagram.com/';
$R['Youtube'] = 'https://www.youtube.com/';
$R['Telegram'] = '#Costom_link';
$R['Manual_Faq_link'] = '#Costom_link';
$R['How_it_work_link'] = '#Costom_link';
$R['How_it_work_link_marketorders'] = '#Costom_link';
// FOOTER
$R['User_Agreement_link'] = 'useragreement';
$R['User_Private_Police_link'] = '';
// Публичная оферта
$R['Link_User_Public_Offer_link'] = '#Costom_link';
$R['Lang_User_Public_Offer_link'] = 'Публичная офертa';
// Политика конфиденциальности
$R['Link_User_Private_Police_link'] = '#Costom_link';
$R['Lang_User_Private_Police_link'] = 'Политика конфиденциальности';

// Module платежей (payments)
$R['payments_manual_link'] = '#Costom_link';

$R['Page_How_Add'] = 'https://www.youtube.com/watch?v=f9Cj5NANIuQ';
// Module FOLIO (portfolio)

$R['Folio_How_Add'] = '#Costom_link';

$R['tags_input_editpage'] = '<input type="text" name="rtags" size="56" class="uk-input uk-width-1-1 uk-form-large autotags" value="{$tags}" />';
$R['tags_input_editpost'] = '<input type="text" name="rtags" size="56" class="uk-input uk-width-1-1 uk-form-large autotags" value="{$tags}" />';
$R['code_title_page_num'] = ' (' . $L['Page'] . ' {$num})';
$R['link_pagenav_current'] = '<li><a class="uk-button uk-button-small uk-button-warning uk-margin-small-right" href="{$url}"{$event}{$rel}><span>{$num}</span></a></li>';
$R['link_pagenav_first'] = '<li><a href="{$url}"{$event}{$rel}> </a></li>';
$R['link_pagenav_gap'] = '<li cllass="uk-disabled"><span>...</span></li>';
$R['link_pagenav_last'] = '<li><a href="{$url}"{$event}{$rel}> </a></li>';
$R['link_pagenav_main'] = '<li><a class="uk-button uk-button-small uk-margin-small-right uk-button-details" href="{$url}"{$event}{$rel}>{$num}</a></li>';
$R['link_pagenav_next'] = '<li><a href="{$url}"{$event}{$rel}><span class="uk-icon-button uk-button-danger uk-margin-small-right" uk-pagination-next></span></a></li>';
$R['link_pagenav_prev'] = '<li><a href="{$url}"{$event}{$rel}><span class="uk-icon-button uk-button-danger uk-margin-small-right" uk-pagination-previous></span></a></li>';

$R['input_default'] = '<input class="uk-input" type="{$type}" name="{$name}" value="{$value}"{$attrs} />{$error}';
$R['input_radio'] = '<label class="uk-margin-small-right"><input type="radio" class="uk-radio" name="{$name}" value="{$value}"{$checked}{$attrs} /> {$title}</label> {$error}';
$R['input_radio_separator'] = ' ';
$R['input_select'] = '<select class="uk-select" name="{$name}"{$attrs}>{$options}</select>{$error}';
$R['input_select_option'] = '<option value="{$value}"{$selected}>{$title}</option>';
$R['input_location'] = '<div class="uk-grid-small uk-child-width-expand@s uk-margin-top" uk-grid><div class="uk-width-large"><label class="uk-form-label">Страна</label>{$country}</div><div class="uk-width-large"><label class="uk-form-label">Регион</label>{$region}</div><div class="uk-width-large"><label class="uk-form-label">Город</label>{$city}</div></div>';
if($cfg['plugin']['locationselector']['hide_country']) {
  $R['input_location'] = '<div style="display: none;">{$country}</div><div class="uk-grid-small uk-child-width-1-1@s uk-child-width-1-3@m uk-margin-top" uk-grid><div class="uk-width-1-3@m"><label class="uk-form-label">Регион</label>{$region}</div><div class="uk-width-1-3@m"><label class="uk-form-label">Город</label>{$city}</div></div>';
  if($cfg['plugin']['locationselector']['hide_city']) {
    $R['input_location'] = '<div style="display: none;">{$country}</div><div class="uk-width-1-1@s"><label class="uk-form-label">Город</label>{$region}</div>';
  }
} elseif($cfg['plugin']['locationselector']['hide_city']) {
  $R['input_location'] = '<div class="uk-grid-small uk-child-width-1-1@s uk-child-width-1-3@m uk-margin-top" uk-grid><div class="uk-width-medium-1-2">{$country}</div><div class="uk-width-1-3@m"><label class="uk-form-label">Регион</label>{$region}</div></div>';
}
$R['input_submit'] = '<button class="uk-button" type="submit" name="{$name}" {$attrs}>{$value}</button>';
$R['input_file'] = '<label class=" file"><input type="file" name="{$name}" value="{$value}" {$attrs} /><span class="file-custom"></span></label>{$error}';
$R['input_text'] = '<input class="uk-input" type="text" name="{$name}" value="{$value}" {$attrs} />{$error}';
$R['input_textarea'] = '<textarea class="uk-textarea" name="{$name}" rows="{$rows}" cols="{$cols}"{$attrs}>{$value}</textarea>{$error}';
$R['input_textarea_editor'] =  '<textarea class="editor" name="{$name}" rows="{$rows}" cols="{$cols}"{$attrs}>{$value}</textarea>{$error}';
$R['input_textarea_medieditor'] =  '<textarea class="medieditor" name="{$name}" rows="{$rows}" cols="{$cols}"{$attrs}>{$value}</textarea>{$error}';
$R['input_textarea_minieditor'] =  '<textarea class="minieditor" name="{$name}" rows="{$rows}" cols="{$cols}"{$attrs}>{$value}</textarea>{$error}';


$R['input_date'] =  '<div class="uk-grid-small uk-child-width-expand@s uk-margin-top" data-uk-grid>
<div class="">
	<label class="uk-form-label">День</label>{$day}
</div>
<div class="">
	<label class="uk-form-label">Месяц</label>{$month}
</div>
<div class="">
	<label class="uk-form-label">Год</label>{$year}
</div>
<div class="">
	<label class="uk-form-label">Часы</label>{$hour}
</div>
<div class="">
	<label class="uk-form-label">Минуты</label>{$minute}
</div>
</div>';
$R['input_date_short'] =  '<div class="uk-grid-small uk-child-width-1-1@s uk-child-width-1-3@m uk-margin-top" data-uk-grid><div class="uk-width-1-3@m"><label class="uk-form-label">День</label>{$day}</div><div class="uk-width-1-3@m"><label class="uk-form-label">Месяц</label>{$month}</div><div class="uk-width-1-3@m"><label class="uk-form-label">Год</label>{$year}</div></div>';

$R['input_password_roldpass'] = '<input class="uk-input" type="password" name="{$name}" placeholder="Текущий пароль" value="{$value}" {$attrs} />{$error}';
$R['input_password_rnewpass1'] = '<input class="uk-input" type="password" name="{$name}" placeholder="Новый пароль" value="{$value}" {$attrs} />{$error}';
$R['input_password_rnewpass2'] = '<input class="uk-input" type="password" name="{$name}" placeholder="Новый пароль еще раз" value="{$value}" {$attrs} />{$error}';

$R['img_structure_cat'] = '<img class="uk-preserve-width uk-animation-shake uk-box-shadow-small" width="36" height="36" uk-img="data-src: {$icon}" alt="{$title}" title="{$desc}" uk-svg="uk-preserve" />';
