<?php
/**
 * JavaScript and CSS loader for StarLance theme
 *
 * @package Cotonti
 * @version 0.9.20
 * @author webitproff.com
 * @copyright Copyright (c) webitproff.com Nov 2020
 * @license BSD
 */

defined('COT_CODE') or die('Wrong URL.');

require_once cot_rc('themes/'.$usr['theme'].'/'.$usr['theme'].'.resources.php');

//Resources::addFile($cfg['themes_dir'].'/'.$usr['theme'].'/css/uikit.min.css');
//Resources::addFile($cfg['themes_dir'].'/'.$usr['theme'].'/css/starlance.css');
cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/css/starlance.css');
//cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/css/plyr_3.6.4.css');

//cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/js/uikit.min.js');
//cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/js/uikit-icons.min.js');
cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/js/vue_2.6.12.min.js'); 
//cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/js/plyr_3.6.4.min.js');
cot_rc_link_footer($cfg['themes_dir'].'/'.$usr['theme'].'/js/clipboard.min.js'); 


function ul_transform($code) {
    $code = str_replace("<a", "<li><a", $code);
    $code = str_replace("</a>", "</a></li>", $code);
    $code = str_replace("<span", "<li><span", $code);
    $code = str_replace("</span>", "</span></li>", $code);
    $code = str_replace("</li> /", "</li>", $code);
    return $code;
}
function cot_breadcrumbs_uk($title, $homebreadcrumb) {

    $code = cot_breadcrumbs($title, $homebreadcrumb);
    $code = str_replace("<a", "<li><a", $code);
    $code = str_replace("</a>", "</a></li>", $code);
    $code = str_replace("<span", "<li><span", $code);
    $code = str_replace("</span>", "</span></li>", $code);

    return $code;
}
?>
