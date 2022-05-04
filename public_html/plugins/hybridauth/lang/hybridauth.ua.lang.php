<?php defined('COT_CODE') or die('Wrong URL');
/*
 * Russian langfile for hybridauth
 */


/*
 * Meta & configuration
 */
$L['info_desc'] = 'Авторизация с помощью Facebook, Twitter, Google, OpenID, Vk и других социальных сетей без использования сторонних сервисов';
$L['info_notes'] = 'Отредактируйте plugins/hybridauth/conf/hybridauth.config.php после установки. Каждый раз после добавления новых провайдеров заходите в Администрирование / Конфигурацию / HybridAuth и жмите Обновить.';

$L['cfg_autoreg'] = 'Включить авто-регистрацию через соцсети и отключить встроенную регистрацию';

/*
 * Main strings
 */
$L['hybridauth_autoreg_inaction'] = 'Ручная регистрация отключена. Войдите с помощью вашего аккаунта социальной сети.';
$L['hybridauth_connect'] = 'Подключить сейчас';
$L['hybridauth_connected'] = 'Подключено';
$L['hybridauth_disconnected'] = 'Отключено';
$L['hybridauth_link'] = 'Связать';
$L['hybridauth_title'] = 'Социальная авторизация';
$L['hybridauth_signin_with'] = 'Войти с помощью';
$L['hybridauth_unlink'] = 'Отвязать';

/*
 * Messages
 */
$L['hybridauth_already_linked'] = 'Этот аккаунт уже связан с другим пользователем';
$L['hybridauth_no_linked_account'] = 'Не обнаружено учетных записей на сайте, связанных с вашей учетной записью {$provider}. Войдите под вашей учетной записью сайта или зарегистрируйте новую с помощью пары кликов.';

$L['hybridauth_error_0'] = 'Неизвестная ошибка.';
$L['hybridauth_error_1'] = 'Ошибка конфигурации Hybridauth.';
$L['hybridauth_error_2'] = 'Некорректная настройка провайдера.';
$L['hybridauth_error_3'] = 'Неизвестный провайдер.';
$L['hybridauth_error_4'] = 'Отсутствуют данные авторизации приложения.';
$L['hybridauth_error_5'] = 'Ошибка авторизации. Пользователь отменил авторизацию или провайдер разорвал соединение.';
$L['hybridauth_error_6'] = 'Невозможно получить профиль пользователя. Скорее всего, необходимо авторизоваться ещё раз.';
$L['hybridauth_error_7'] = 'Пользователь не подключен к провайдеру авторизации.';
