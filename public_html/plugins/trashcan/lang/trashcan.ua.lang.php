<?php
/**
 * Ukrainian Language File for Trashcan
 *
 * @package Trashcan
 * @copyright (c) Cotonti Translators Team
 * @license https://github.com/Cotonti/Cotonti/blob/master/License.txt
 */

defined('COT_CODE') or die('Wrong URL.');

$L['Trash'] = 'Видалене';
$L['Trashcan'] = 'Кошик';
$L['core_trash'] = &$L['Trashcan'];

/**
 * Config Section
 * Trash Subsection
 */

$L['cfg_trash_forum'] = 'Видаляти в кошик форуми';
$L['cfg_trash_forum_hint'] = '';
$L['cfg_trash_page'] = 'Видаляти в кошик сторінки';
$L['cfg_trash_page_hint'] = '';
$L['cfg_trash_pm'] = 'Видаляти в кошик приватні повідомлення';
$L['cfg_trash_pm_hint'] = '';
$L['cfg_trash_prunedelay'] = 'Очищати кошик через';
$L['cfg_trash_prunedelay_hint'] = 'днів (0 - відключити очистку кошика)';
$L['cfg_trash_user'] = 'Видаляти в кошик облікові записи користувачів';
$L['cfg_trash_user_hint'] = '';
$L['cfg_trash_comment'] = 'Видаляти в кошик коментарі';
$L['cfg_trash_comment_hint'] = '';

$L['info_desc'] = 'Зберігає видалені елементи в кошику для сміття на деякий час, щоб їх можна було відновити при необхідності';

/**
 * TrashCan Section
 */

$L['adm_help_trashcan'] = "Записи, видалені користувачами та модераторами<br />\n- видалити остаточно: остаточно видалити запис з бази даних<br />- відновити: повернути запис до бази даних<br />\n<b>Увага:</b><br />\n- відновлюючи тему форуму, ви відновлюєте і всі повідомлення в ній<br />\n- відновлюючи повідомлення у видаленій темі, ви відновлює саму тему і (якщо це можливо) усі дочірні повідомлення";
$L['adm_trashcan_deleted'] = 'Елемент видалено';
$L['adm_trashcan_prune'] = 'Кошик очищено';
$L['adm_trashcan_restored'] = 'Елемент відновлено';
