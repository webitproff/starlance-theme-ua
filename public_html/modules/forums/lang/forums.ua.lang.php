<?php
/**
 * Ukrainian Language File for the Forums Module (forums.uа.lang.php)
 *
 * @package Forums
 * @copyright (c) Cotonti Team
 * @license https://github.com/Cotonti/Cotonti/blob/master/License.txt
 */

defined('COT_CODE') or die('Wrong URL.');

/**
 * Forums Config
 */

$L['cfg_antibumpforums'] = 'Захист від &laquo;підняття&raquo; повідомлень (anti-bump)';
$L['cfg_antibumpforums_hint'] = 'Заборонити користувачам створювати 2 повідомлення поспіль в темі';
$L['cfg_hideprivateforums'] = 'Приховувати приватні форуми';
$L['cfg_hideprivateforums_hint'] = '';
$L['cfg_hottopictrigger'] = 'Кількість повідомлень для &laquo;популярної&raquo; теми';
$L['cfg_hottopictrigger_hint'] = '';
$L['cfg_maxpostsperpage'] = 'Макс. кількість повідомлень на сторінці';
$L['cfg_maxpostsperpage_hint'] = '';
$L['cfg_maxtopicsperpage'] = 'Максимальна кількість тем на сторінці';
$L['cfg_maxtopicsperpage_hint'] = '';
$L['cfg_mergeforumposts'] = 'Об’єднувати повідомлення';
$L['cfg_mergeforumposts_hint'] = 'Об’єднувати повідомлення одного користувача що йдуть підряд (anti-bump захист повинен бути відключений)';
$L['cfg_mergetimeout'] = 'Час очікування для об’єднання повідомлень';
$L['cfg_mergetimeout_hint'] = 'Послідовно опубліковані повідомлення одного користувача не будуть об’єднані при перевищенні зазначеного часу (в годинах), вимагає включення установки \'Об’єднувати повідомлення\' (0 для відключення)';
$L['cfg_minpostlength'] = 'Мін. довжина повідомлення';
$L['cfg_minpostlength_hint'] = '';
$L['cfg_mintitlelength'] = 'Мін. довжина заголовка теми';
$L['cfg_mintitlelength_hint'] = '';
$L['cfg_title_posts'] = 'Формат заголовка теми форуму';
$L['cfg_title_posts_hint'] = 'Опції: {FORUM}, {SECTION}, {TITLE}';
$L['cfg_title_topics'] = 'Формат заголовка розділу форуму';
$L['cfg_title_topics_hint'] = 'Опції: {FORUM}, {SECTION}';
$L['cfg_enablereplyform'] = 'Відображати форму відповіді на всіх сторінках';
$L['cfg_enablereplyform_hint'] = '';
$L['cfg_edittimeout'] = 'Тайм-аут редагування';
$L['cfg_edittimeout_hint'] = 'Чи не дозволяє користувачам редагувати або видаляти власні повідомлення після закінчення тайм-ауту (у годинах, 0 відключає тайм-аут)';
$L['cfg_minimaxieditor'] = 'Вибір конфігурації візуального редактора';
$L['cfg_minimaxieditor_params'] = 'Мінімальний набір кнопок,Стандартний набір кнопок,Розширений набір кнопок';

$L['cfg_allowusertext'] = 'Показувати підписи';
$L['cfg_allowbbcodes'] = 'Дозволити BBCodes';
$L['cfg_allowsmilies'] = 'Дозволити смайлики';
$L['cfg_allowprvtopics'] = 'Дозволити приватні теми';
$L['cfg_allowviewers'] = 'Включити відображення переглядаючих розділ';
$L['cfg_allowpolls'] = 'Включити опитування';
$L['cfg_countposts'] = 'Рахувати повідомлення';
$L['cfg_autoprune'] = 'Автовидалення тем через * днів';
$L['cfg_defstate'] = 'За замовчуванням';
$L['cfg_defstate_params'] = 'Згорнути,Розгорнути';
$L['cfg_keywords'] = 'Ключові слова';
$L['cfg_metatitle'] = 'Meta-заголовок';
$L['cfg_metadesc'] = 'Meta-опис';

$L['info_desc'] = 'Модуль форумів для Cotonti: розділи, підрозділи, теми і повідомлення. Простий форум для сайтів з спільнотою або підтримкою.';

/**
 * Main
 */

$L['forums_post'] = 'Повідомлення';
$L['forums_posts'] = 'Повідомлень';
$L['forums_topic'] = 'Тема';
$L['forums_topics'] = 'Теми';

$L['forums_antibump'] = 'Активована система захисту від підняття тем: ви не можете створювати кілька повідомлень підряд';
$L['forums_keepmovedlink'] = 'Залишити посилання у старому розділі';
$L['forums_markallasread'] = 'Позначити всі повідомлення як прочитані';
$L['forums_mergetime'] = 'Додано %1$s потому:';
$L['forums_messagetooshort'] = 'Повідомлення занадто коротке';
$L['forums_newtopic'] = 'Нова тема';
$L['forums_newpoll'] = 'Нове опитування';
$L['forums_titletooshort'] = 'Назва теми занадто коротка або відсутня';
$L['forums_topiclocked'] = 'Тема заблокована, нові повідомлення заборонені';
$L['forums_topicoptions'] = 'Опції теми';
$L['forums_updatedby'] = '<br /><em>Відредаговано: %1$s (%2$s, %3$s тому)</em>';
$L['forums_postedby'] = 'Опублікував(ла)';
$L['forums_edittimeoutnote'] = 'Час для редагування або видалення власного повідомлення: ';

$L['forums_privatetopic1'] = '&laquo;Приватна&raquo; тема';
$L['forums_privatetopic2'] = 'Перегляд і відповіді в темі будуть доступні тільки модераторам форумів і вам як автору теми';
$L['forums_privatetopic'] = 'Це приватна тема: доступ до перегляду та відповідей доступний тільки для модераторів та автора теми.';

$L['forums_searchinforums'] = 'Пошук в форумах';
$L['forums_markasread'] = 'Позначити все як прочитане';
$L['forums_foldall'] = 'Згорнути все';
$L['forums_unfoldall'] = 'Розгорнути все';
$L['forums_viewers'] = 'Переглядають';

$L['forums_nonewposts'] = 'Нових повідомлень нема';
$L['forums_newposts'] = 'Є нові півідомлення';
$L['forums_nonewpostspopular'] = 'Популярна (нема нових)';
$L['forums_newpostspopular'] = 'Популярна (е нові)';
$L['forums_sticky'] = 'Тема закріплена (немає нових)';
$L['forums_newpostssticky'] = 'Тема закріплена (є нові)';
$L['forums_locked'] = 'Тема закрита (нема нових)';
$L['forums_newpostslocked'] = 'Тема закрита (є нові)';
$L['forums_announcment'] = 'Оголошення';
$L['forums_newannouncment'] = 'Нові оголошення';
$L['forums_movedoutofthissection'] = 'Перенесено в інший розділ';

$L['forums_announcement'] = 'Оголошення';
$L['forums_bump'] = 'Підняти';
$L['forums_makesticky'] = 'Закріпити тему';
$L['forums_private'] = 'Приватна тема';

$L['forums_explainbump'] = 'Підняти тему (до оновлення іншої теми)';
$L['forums_explainlock'] = 'Заблокувати тему (заборонити нові повідомлення)';
$L['forums_explainsticky'] = 'Закріпити тему (до скидання статусу в значення за замовчуванням)';
$L['forums_explainannounce'] = 'Позначити тему як оголошення';
$L['forums_explainprivate'] = 'Приватна тема (доступ тільки для модераторів та автора теми)';
$L['forums_explaindefault'] = 'Скинути статус в значення за замовчуванням';
$L['forums_explaindelete'] = 'Видалити тему';

$L['forums_confirm_delete_topic'] = 'Ви дійсно хочете видалити цю тему?';
$L['forums_confirm_delete_post'] = 'Ви дійсно хочете видалити це повідомлення?';

/**
 * Unused?
 */

$L['forums_polltooshort'] = 'Кількість варіантів відповіді повинно бути не менше двох';
$L['for_onlinestatus0'] = 'в мережі';
$L['for_onlinestatus1'] = 'поза мережею';
