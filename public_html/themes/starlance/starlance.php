<?php
/* ====================
[BEGIN_COT_THEME]
Name=starlance ver. 1.0.0
Schemes=default:Default
[END_COT_THEME]
==================== */


$R['userimg_existing'] = '<div class="userimg_existing uk-text-center"><img class="uk-border-rounded" src="{$url_file}" alt="" /><hr class="uk-divider-small"><a class="uk-button uk-button-danger" href="{$url_delete}">'.$L['Delete'].'</a></div>';
$R['userimg_selectfile'] = '{$form_input}';
$R['userimg_html'] = '<div class="userimg_{$code}">{$existing}{$selectfile}</div>';
$R['userimg_remove'] = '<a href="{$url}" class="uk-button uk-button-default">'.$L['Delete'].'</a>';
$R['userimg_img'] = '<img src="{$src}" alt="{$alt}" class=" userimg {$class}" />';
$R['userimg_default_avatar'] = '<img src="themes/starlance/img/avatar.png" alt="'.$L['Avatar'].'" class="avatar" />';
$R['users_code_grplist_begin'] = '<ul class="uk-list uk-list-divider">';
$R['users_code_grplist_end'] = '</ul>';
$R['users_code_grplist_item'] = '<li>{$item}</li>';
$R['users_code_grplist_item_main'] = '<li><strong>{$item}</strong></li>';
$R['users_input_grplist_checkbox'] = '<label class="uk-margin-small-right"><input type="checkbox" class="uk-checkbox" name="{$name}" value="1"{$checked}{$attrs} /></label>';
$R['users_input_grplist_radio'] = '<label class="uk-margin-small-right"><input type="radio" class="uk-radio" name="{$name}" value="{$value}"{$checked}{$attrs} /></label>';
$R['input_text'] = '<input class="uk-input uk-width-1-1" type="text" name="{$name}" value="{$value}" {$attrs} />{$error}';
$R['input_radio'] = '<input class="uk-radio" type="radio" name="{$name}" value="{$value}"{$checked}{$attrs} /> {$title}';
$R['input_checkbox'] = '<input class="uk-checkbox" type="hidden" name="{$name}" value="{$value_off}" /><label><input type="checkbox" class="uk-checkbox" name="{$name}" value="{$value}"{$checked}{$attrs} /> {$title}</label>';
$R['input_check'] = '<label><input class="uk-checkbox" type="checkbox" name="{$name}" value="{$value}"{$checked}{$attrs} /> {$title}</label>';
$R['tags_input_editpage'] = '<input type="text" name="rtags" size="56" class="autotags uk-input uk-width-1-1" value="{$tags}" />';
$R['tags_input_editpost'] = '<input type="text" name="rtags" size="56" class="autotags uk-input uk-width-1-1" value="{$tags}" />';
/**
 Comments
 */
$R['comments_code_admin'] = $L['Ip'].': {$ipsearch}<span class="spaced">'.$cfg['separator'].'</span><a href="{$delete_url}" class="confirmLink">'.$L['Delete'].'</a><span class="spaced">'.$cfg['separator'].'</span>';
$R['comments_code_edit'] = '<a href="{$edit_url}">'.$L['Edit'].'</a> {$allowed_time}';
$R['comments_code_pages_info'] = $L['Total'].': {$totalitems}, '.$L['comm_on_page'].': {$onpage}';
$R['comments_link'] = '<a href="{$url}" class="comments_link" alt="'.$L['Comments'].'">{$count}</a>';
/* $R['comments_link'] = '<a href="{$url}" class="comments_link" alt="'.$L['Comments'].'">'.$R['icon_comments'].' ({$count})</a>'; */
$R['icon_comments'] =
	'<img class="icon" src="images/icons/'.$cfg['defaulticons'].'/comments.png" alt="'.$L['Comments'].'" />';
$R['icon_comments_cnt'] =
	'<img class="icon" src="images/icons/'.$cfg['defaulticons'].'/comments.png" alt="'.$L['Comments'].'" /> ({$cnt})';
/**
 Comments END
 */

/**
 * Forums Icons
 */

