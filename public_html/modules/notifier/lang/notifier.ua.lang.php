<?php

defined('COT_CODE') or die('Wrong URL');

$L['Notifier'] = 'Уведомления';
$L['Subscriptions'] = 'Подписки';

$L['Subscribe'] = 'Подписаться';
$L['Unsubscribe'] = 'Отписаться';
$L['ViewMessage'] = 'Посмотреть сообщение';
$L['EmailSettings'] = 'Настройки почты';
$L['ViewSubscriptions'] = 'Посмотреть подписки';

$L['Type'] = 'Type';
$L['SubscribedSince'] = 'Дата';
$L['LastNotification'] = 'Последнее уведомление';
$L['Never'] = 'Never';

$L['YourSubscriptions'] = 'Ваши подписки';
$L['NoSubscriptions'] = 'У вас нет подписок';

$L['SubscribeSuccess'] = 'Вы успешно подписались.';
$L['SubscribeFailed'] = 'Произошла ошибка при попытке подписаться.';
$L['UnsubscribeSuccess'] = 'Вы успешно отписались.';
$L['UnsubscribeFailed'] = 'Произошла ошибка при попытке подписаться.';
$L['PauseFailed'] = 'Приостановить подписку не удалось.';
$L['UnpauseFailed'] = 'Возобновить подписку не удалось.';

$L['SubscriptionSettings'] = 'Параметры подписки';
$L['NotifyMe'] = 'Уведомлять меня...';
$L['Frequency'] = 'Частота';
$L['AutoSubscribe'] = 'Подписаться автоматически';
$L['HTMLEmail'] = 'Отправить электронную почту в формате HTML';

$L['trigger_forumtopic'] = 'Когда кто-то оставил сообщение в подписанной теме';
$L['trigger_pagecategory'] = 'Когда опубликована новая страница в подписанной категории';
$L['trigger_comments'] = 'Когда опубликован новый комментарий в подписанной записи';

$L['freq_first'] = 'После моего ответа или просмотра';
$L['freq_all'] = 'После каждого поста или обновления';
$L['freq_daily'] = 'Раз в день';
$L['freq_weekly'] = 'Раз в неделю';
$L['freq_monthly'] = 'Раз в месяц';
$L['freq_never'] = 'Никогда';

$L['EmailGreeting'] = 'Привет {$user_name},';
$L['EmailDesc'] = '{$poster_name} оставил новое сообщение "{$sub_desc}":';

$L['EmailSubject'] = 'Re: {$sub_desc_short}';
$L['EmailTemplate'] = "{$L['EmailGreeting']}

{$L['EmailDesc']}

{\$quote}

{$L['ViewMessage']}: {\$url_view}
{$L['Unsubscribe']}: {\$url_unsubscribe}
{$L['EmailSettings']}: {\$url_notifier}

---
{$cfg['maintitle']} - {$cfg['subtitle']}";

$Ls['subscriptions'] = array('subscriptions', 'subscription');
$Ls['subscribers'] = array('subscribers', 'subscriber');

?>