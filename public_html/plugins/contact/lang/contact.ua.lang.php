<?php

/**
 * Contact Plugin for Cotonti CMF (Ukrainian Localization)
 * @copyright (c) Cotonti Translators Team
 * @license https://github.com/Cotonti/Cotonti/blob/master/License.txt
 */

defined('COT_CODE') or die('Wrong URL');

/**
 * Plugin Config
 */

$L['cfg_email'] = 'E-mail';
$L['cfg_email_hint'] = '(залишити порожнім для використання E-mail\'у адміністратора)';
$L['cfg_minchars'] = 'Мінімальна кількість символів в повідомленні';
$L['cfg_map'] = 'Код карти';
$L['cfg_about'] = 'Про сайт';
$L['cfg_save'] = 'Метод зберігання повідомлень';
$L['cfg_save_params'] = 'e-mail,база даних,e-mail + база даних';
$L['cfg_template'] = 'Шаблон листа';
$L['cfg_template_hint'] = 'Використовувані змінні: {$sitetitle}, {$siteurl}, {$author}, {$email}, {$subject}, {$text}, {$extra}, {$extraXXXX}, {$extraXXXX_title}';
$L['info_desc'] = 'Форма зворотного зв’язку з відправкою на E-mail і записом повідомлень в базу даних';

/**
 * Plugin Admin
 */

$L['contact_view'] = 'Перегляд повідомлення';
$L['contact_markread'] = 'Відзначити як прочитане';
$L['contact_read'] = 'Прочитане';
$L['contact_markunread'] = 'Зняти відмітку про прочитання';
$L['contact_unread'] = 'Не прочитане';
$L['contact_new'] = 'нове повідомлення';
$L['contact_shortnew'] = 'нове';
$L['contact_sent'] = 'Остання відповідь';
$L['contact_nosubject'] = 'Без теми';

/**
 * Plugin Title & Subtitle
 */

$L['contact_title'] = 'Зворотній зв’язок';
$L['contact_subtitle'] = 'Контактна інформація';

/**
 * Plugin Body
 */

$L['contact_headercontact'] = 'Зворотній зв’язок';
$Ls['contact_headercontact'] = "контакт-повідомлення,контакт-повідомлення,контакт-повідомленнь";
$L['contact_entrytooshort'] = 'Повідомлення занадто коротке або відсутнє';
$L['contact_noname'] = 'Ви не вказали ім’я';
$L['contact_emailnotvalid'] = 'Некоректно вказано E-mail';
$L['contact_message_sent'] = 'Повідомлення надіслано';
