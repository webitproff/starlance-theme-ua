<?php
/**
 * Ukrainian Language File for the PFS Module (pfs.ua.lang.php)
 *
 * @package PFS
 * @copyright (c) Cotonti Team
 * @license https://github.com/Cotonti/Cotonti/blob/master/License.txt
 */

defined('COT_CODE') or die('Wrong URL.');

/**
 * Module Config
 */

$L['cfg_maxpfsperpage'] = 'Макс. кількість елементів на сторінці';
$L['cfg_maxpfsperpage_hint'] = '';
$L['cfg_pfsfilecheck'] = 'Перевірка файлів';
$L['cfg_pfsfilecheck_hint'] = 'Перевіряти завантажувані файли (&laquo;'.$L['PFS'].'&raquo; і профіль) на відповідність їх формату використовуваному розширенню. Рекомендується включити в цілях безпеки.';
$L['cfg_pfsmaxuploads'] = 'Макс. число паралельних закачувань за один раз';
$L['cfg_pfsmaxuploads_hint'] = '';
$L['cfg_pfsnomimepass'] = 'Ігнорувати MIME-типи';
$L['cfg_pfsnomimepass_hint'] = 'Дозволити закачування файлів, MIME-тип яких не вказано у конфігурації.';
$L['cfg_pfstimename'] = 'Імена файлів на основі шаблону часу';
$L['cfg_pfstimename_hint'] = 'Генерувати імена файлів за шаблоном часу. За замовчуванням використовується маска ІМЯФАЙЛА_USERID.';
$L['cfg_pfsuserfolder'] = 'Режим зберігання по каталогам';
$L['cfg_pfsuserfolder_hint'] = 'Файли користувачів будуть зберігатися у каталогах /datas/users/USERID/ замість /datas/users/ і додавання USERID до імені файлу. Встановлюється <u>тільки при початковому налагодженні сайту</u>. Змінювати значення після першого завантаження будь-якого файлу не рекомендується!';
$L['cfg_flashupload'] = 'Використовувати flash-завантаження файлів';
$L['cfg_flashupload_hint'] = 'Дозволяє одночасно завантажувати декілька файлів.';
$L['cfg_pfs_winclose'] = 'Закривати спливаюче вікно після вставки ббкоду';
$L['cfg_th_amode'] = 'Метод створення мініатюр зображень (thumbnails)';
$L['cfg_th_amode_hint'] = '';
$L['cfg_th_border'] = 'Ширина рамки мініатюри, px';
$L['cfg_th_border_hint'] = 'За замовчуванням: 4px';
$L['cfg_th_colorbg'] = 'Колір рамки мініатюри';
$L['cfg_th_colorbg_hint'] = 'За замовчуванням: #000000';
$L['cfg_th_colortext'] = 'Колір тексту мініатюри';
$L['cfg_th_colortext_hint'] = 'За замовчуванням: #FFFFFF';
$L['cfg_th_dimpriority'] = 'Пріоритет розмірів мініатюр (thumbnails)';
$L['cfg_th_dimpriority_hint'] = '';
$L['cfg_th_jpeg_quality'] = 'Коефіцієнт JPEG-стиснення мініатюри';
$L['cfg_th_jpeg_quality_hint'] = 'За замовчуванням: 85';
$L['cfg_th_keepratio'] = 'Зберігати пропорції зображення у мініатюрі';
$L['cfg_th_keepratio_hint'] = '';
$L['cfg_th_separator'] = 'Налаштування мініатюр';
$L['cfg_th_textsize'] = 'Розмір шрифту мініатюри';
$L['cfg_th_textsize_hint'] = '';
$L['cfg_th_x'] = 'Ширина мініатюри, px';
$L['cfg_th_x_hint'] = 'За замовчуванням: 112px';
$L['cfg_th_y'] = 'Висота мініатюри, px';
$L['cfg_th_y_hint'] = 'За замовчуванням: 84px (рекомендується: ширина x 0.75)';

/**
 * Other
 */

$L['adm_gd'] = 'Графічна бібліотека GD';
$L['adm_allpfs'] = 'Розділи &laquo;'.$L['PFS'].'&raquo; всіх користувачів';
$L['adm_allfiles'] = 'Всі файли';
$L['adm_thumbnails'] = 'Мініатюри';
$L['adm_orphandbentries'] = 'Втрачені записи БД';
$L['adm_orphanfiles'] = 'Втрачені файли';
$L['adm_delallthumbs'] = 'Видалити всі мініатюри';
$L['adm_rebuildallthumbs']= 'Видалити і згенерувати всі мініатюри';
$L['adm_help_allpfs'] = 'Розділи &laquo;'.$L['PFS'].'&raquo; всіх зареєстрованих користувачів';
$L['adm_nogd'] = 'Графічна бібліотека GD не підтримується даними хостом. Створення мініатюр для зображень неможливе. Встановіть перемінну &laquo;Метод створення мініатюр&raquo; ('.$L['Configuration'].' &gt; '.$L['PFS'].') в значення &laquo;'.$L['Disabled'].'&raquo;';
$L['adm_help_pfsfiles'] = 'Недоступно';
$L['adm_help_pfsthumbs'] = 'Недоступно';
$L['info_desc'] = 'Організоване сховище для файлів які завантажуються на сайт, надається зареєстрованим користувачам (Особистий файловий простір) і для всього сайту (Файловий простір сайту)';

/**
 * Main
 */

$L['pfs_cancelall'] = 'Виділити все';
$L['pfs_direxists'] = 'Такий каталог вже існує.<br />Старий шлях: %1$s<br />Новий шлях: %2$s';
$L['pfs_extallowed'] = 'Дозволені розширення';
$L['pfs_filecheckfail'] = 'Увага: помилка розширення файлу 2$s.%1$s';
$L['pfs_filechecknomime'] = 'Увага: не знайдений MIME-тип для файлу 2$s.%1$s';
$L['pfs_fileexists'] = 'Помилка завантаження: файл з таким ім’ям вже існує';
$L['pfs_filelistempty'] = 'Список порожній';
$L['pfs_filemimemissing'] = 'Помилка завантаження: відсутній MIME-тип для розширення %1$s';
$L['pfs_filenotmoved'] = 'Помилка завантаження: тимчасовий файл не може бути переміщений.';
$L['pfs_filenotvalid'] = 'Помилка перевірки  %1$s-файлу';
$L['pfs_filesintheroot'] = 'Файлів в кореневому каталозі';
$L['pfs_filesinthisfolder'] = 'Файлів в поточному каталозі';
$L['pfs_filetoobigorext'] = 'Помилка завантаження: файл занадто великий або неприпустиме розширення';
$L['pfs_folderistempty'] = 'Каталог порожній';
$L['pfs_foldertitlemissing'] = 'Відсутній заголовок каталогу';
$L['pfs_isgallery'] = 'Галерея?';
$L['pfs_ispublic'] = 'Відкритий доступ?';
$L['pfs_maxsize'] = 'Максимальний розмір файла';
$L['pfs_maxspace'] = 'Максимальний дозволений об’єм';
$L['pfs_newfile'] = 'Завантажити файл';
$L['pfs_newfolder'] = 'Створити новий каталог';
$L['pfs_onpage'] = 'На цій сторінці';
$L['pfs_parentfolder'] = 'Кореневий каталог';
$L['pfs_pastefile'] = 'Вставити як посилання на файл';
$L['pfs_pasteimage'] = 'Вставити як зображення';
$L['pfs_pastethumb'] = 'Вставити мініатюру';
$L['pfs_resizeimages'] = 'Масштабувати зображення?';
$L['pfs_title'] = 'Мої файли';
$L['pfs_totalsize'] = 'Загальний об’єм';
$L['pfs_uploadfiles'] = 'Завантажити файли';

$L['pfs_insertasthumbnail'] = 'Вставити мініатюру';
$L['pfs_insertasimage'] = 'Вставити повнорозмірне зображення';
$L['pfs_insertaslink'] = 'Вставити у вигляді посилання на файл';
$L['pfs_dimensions'] = 'Розміри';

$L['pfs_confirm_delete_file'] = 'Ви дійсно хочете видалити цей файл?';
$L['pfs_confirm_delete_folder'] = 'Ви дійсно хочете видалити цю папку і весь її вміст?';
