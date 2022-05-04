<?php

/**
 * golink plugin
 *
 * @author Roffun
 * @copyright Copyright (c) Roffun, 2015 - 2019 | https://github.com/Roffun
 * @license BSD License
 **/

defined('COT_CODE') or die('Wrong URL.');

$L['info_name'] = 'Скрытие внешних ссылок';
$L['info_desc'] = 'Внешние ссылки через страницу редиректа с таймером отсчета';
$L['cfg_golink_timer'] = 'Таймер задержки в секундах';
$L['cfg_golink_class'] = 'Название класса для ссылок';
$L['cfg_golink_usersdone'] = 'ID пользователей через запятую, которым разрешено добавлять открытые ссылки с помощью<br>[openlink=url]анкор[/openlink]<br><em style="color:red">ID должен быть владелцем в настройках статьи</em>';
$L['cfg_golink_datahref'] = 'Обрабатывать атрибут href с помощью jQuery';
$L['golink_go'] = 'переходить на сайт';
$L['golink_not_go'] = 'не переходить на сайт';
$L['golink_go_info'] = 'Переход по внешней ссылке';

$L['golink_redirect_time_text'] = 'Перенаправление произойдет автоматически через <span id="timer">' . $cfg['plugin']['golink']['golink_timer'] . '</span> секунд';
$L['golink_comeback'] = 'Возвращайтесь на <strong>' . $sys['domain'] . '</strong>, еще много интересного!';
$L['golink_warning'] = 'Aдминистрация сайта не несёт ответственности за последствия перехода. Также мы не рекомендуем Вам указывать на сторонних сайтах свои данные, имеющие отношение к <strong>' .
   $sys['domain'] . '</strong>, например, имя пользователя, пароль и.т.п.';
$L['cfg_golink_prfx'] = 'Вариант открытия ссылок по умолчанию';
$L['cfg_golink_prfx_params'] = array(
   'Отдельная страница + таймер',
   'Отдельная страница',
   'Редирект');
