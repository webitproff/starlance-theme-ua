<?php
/**
 * Ukrainian Language File for the Install Module
 *
 * @package Install
 * @copyright (c) Cotonti Team
 * @license https://github.com/Cotonti/Cotonti/blob/master/License.txt
 */

defined('COT_CODE') or die('Wrong URL.');

$L['Complete'] = 'Виконано';
$L['Finish'] = 'Завершити';
$L['Install'] = 'Встановити';
$L['Next'] = 'Далі';

$L['install_adminacc'] = 'Дані адміністратора';
$L['install_body_title'] = 'Установщик Cotonti';
$L['install_body_message1'] = 'Цей скрипт допоможе вам здійснити первинне встановлення та налагодження Cotonti.';
$L['install_body_message2'] = 'Рекомендуємо створити в папці datas файл config.php, скопіювати в нього вміст файлу config-sample.php і встановити на нього права CHMOD 666.';
$L['install_body_message3'] = 'Вам необхідно <strong>попередньо створити порожню базу даних</strong> з зазначеним вище ім’ям на вашому сервері, якщо у даного користувача немає прав на створення нових БД.';
$L['install_chmod_value'] = 'CHMOD {$chmod}';
$L['install_complete'] = 'Встановлення Cotonti успішно завершено!';
$L['install_complete_note'] = 'Видаліть install.php і встановіть на datas/config.php права CHMOD 644. Це необхідно для підвищення безпеки вашого сайту.';
$L['install_db'] = 'Налаштування бази даних MySQL';
$L['install_db_host'] = 'Сервер СУБД';
$L['install_db_user'] = 'Користувач';
$L['install_db_pass'] = 'Пароль';
$L['install_db_port'] = 'Порт сервера';
$L['install_db_port_hint'] = 'Тільки якщо відрізняється від порту за замовчуванням';
$L['install_db_name'] = 'Ім’я бази даних';
$L['install_db_x'] = 'Префікс таблиць';
$L['install_dir_not_found'] = 'Каталог встановлення не знайдений';
$L['install_error_config'] = 'Не вдається створити або відредагувати файл конфігурації. Скопіюйте вміст файлу config-sample.php в config.php. Встановіть на файл config.php права CHMOD 777.';
$L['install_error_sql'] = 'Не вдалося підключитися до бази MySQL. Перевірте налаштування підключення.';
$L['install_error_sql_db'] = 'Не вдалося вибрати базу MySQL. Перевірте налаштування підключення.';
$L['install_error_sql_ext'] = 'Для запуску Cotonti необхідно PHP-розширення pdo_mysql';
$L['install_error_sql_script'] = 'Виконання SQL-скрипту завершилося невдало: {$msg}';
$L['install_error_sql_ver'] = 'Cotonti потрібна версія MySQL 5.0.7 і вище. Ваша версія {$ver}';
$L['install_error_mainurl'] = 'Вкажіть основний URL вашого сайту';
$L['install_error_mbstring'] = 'Для запуску Cotonti необхідно розширення PHP mbstring';
$L['install_error_missing_file'] = 'Відсутній файл {$file}. Завантажте його для продовження установки.';
$L['install_error_php_ver'] = 'Для запуску Cotonti необхідний PHP 5.3. і вище. Ваша версія {$ver}';
$L['install_misc'] = 'Додаткові налаштування';
$L['install_misc_lng'] = 'Основна мова';
$L['install_misc_theme'] = 'Основна тема оформлення';
$L['install_misc_url'] = 'Основний URL сайту (без слешу в кінці)';
$L['install_parsing'] = 'Режим парсінгу';
$L['install_parsing_hint'] = 'Режим парсінга набуде чинності глобально для всього сайту. Якщо ви виберете HTML, то всі наявні елементи будуть автоматично переведені в HTML. Ця операція не може бути скасована.';
$L['install_permissions'] = 'Права на файли і каталоги';
$L['install_recommends'] = 'Рекомендується';
$L['install_requires'] = 'Необхідно';
$L['install_retype_password'] = 'Повторіть пароль';
$L['install_step'] = 'Крок {$step} з {$total}';
$L['install_title'] = 'Установка Cotonti';
$L['install_update'] = 'Оновлення Cotonti';
$L['install_update_config_error'] = 'Неможливо оновити datas/config.php. Будь ласка, встановіть CHMOD 664 або 666 на цей файл і спробуйте знову. Якщо це не допомогло, переконайтеся, що файл datas/config-sample.php існує.';
$L['install_update_config_success'] = 'Файл datas/config.php оновлено';
$L['install_update_error'] = 'Оновлення не виконана';
$L['install_update_nothing'] = 'Оновлення не потрібне';
$L['install_update_patch_applied'] = 'Встановити патч {$f}: {$msg}';
$L['install_update_patch_error'] = 'Помилка установки патча {$f}: {$msg}';
$L['install_update_patches'] = 'Встановлені патчі:';
$L['install_update_success'] = 'Успішне оновлення до версії {$rev}';
$L['install_update_template_not_found'] = 'Не знайден файл шаблону оновлення';
$L['install_upgrade'] = 'Система готова до глобального оновлення ...';
$L['install_upgrade_error'] = 'Помилка оновлення Cotonti до версії {$ver}';
$L['install_upgrade_success'] = 'Успішне оновлення Cotonti до версії {$ver}';
$L['install_upgrade_success_note'] = 'Щоб уникнути проблем із сумісністю всі плагіни Genoa були деінсталювати. Ви можете оновити їх пізніше самостійно.';
$L['install_ver'] = 'Інформація про сервер';
$L['install_ver_invalid'] = '{$ver} &mdash; невдало!';
$L['install_ver_valid'] = '{$ver} &mdash; успішно!';
$L['install_view_site'] = 'Відкрити сайт';
$L['install_writable'] = 'Доступно';
