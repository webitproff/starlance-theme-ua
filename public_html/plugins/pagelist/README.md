ReadME.md
# starlance-theme-ua
### Українська локалізація та тема білду маркетплейсу фріланс послуг та товарів
# UA Freelance Marketplace
## Україньска онлайн платформа фрілансу, замовлень та надання послуг виконавцями. 
## Готове рішення сайту маркетплейсу та фріланс послуг 2022 року на PHP v. 7.4
# 


===
## джерело
	https://github.com/webitproff/
===
## Документація та більше розширень для фріланс маркетплейсу на CMF Cotonti
	http://freelance-script.abuyfile.com/
	https://www.facebook.com/CMS.Freelance
	https://t.me/s/cotonti
===
## Вiдеоматеріали
	https://www.youtube.com/playlist?list=PLLJqscgzN-F4PmZnbYDsXUYfbT4rxC9Dz
===
## Інтернет-магазин готових сайтів (можете продавати свої)
	https://abuyfile.com/
===
## Контакти для персональної підтримки:
	— Email: webitproff@gmail.com
	— Telegram: https://t.me/webitproff
===
Пояснення щодо української локалізації про цей додаток чи розширення, та інструкції 

# 
===
# cot-pagelist
Rendering page widgets anywhere
# cot-pagelist
Rendering page widgets anywhere

## Использование:

```html
{PHP|pagelist($tpl, $items, $order, $condition, $cat, $blacklist, $whitelist, $sub, $pagination, $noself, $offset)}
```

Назначение параметров (в скобках значение по умолчанию -- если не указано пользователем):
* $tpl указывает на имя шаблона (pagelist)
* $items указывает на количество выводимых записей (0 -- вывести все)
* $order указывает на сортировку в формате MYSQL, например `page_date ASC` (по умолчанию без сортировки)
* $condition указывает на условие в формате MYSQL, например, `page_ownerid = 1` (по умолчанию без условия)
* $cat указывает на отдельную категорию страниц (по умолчанию без категории)
* $blacklist указывает на черный список категорий страниц, т.е. брать страницы из всех разделов, кроме указанных (по умолчанию без черного списка)
* $whitelist указывает на белый список категорий страниц, т.е. брать страницы только из указанных разделов (по умолчанию без белого списка)
* $sub указывает на необходимость вывода страниц из подразделов (по умолчанию true)
* $pagination указывает на имя переменной вывода постраничного списка (по умолчанию pld)
* $noself указывает на необходимость включать в вывод страницу, из которой осуществляется запрос (по умолчанию false)
* $offset указывает на необходимость сдвига, т.е. исключения определенного количества предстоящих страниц -- например, для вывода всех, кроме первой страницы (по умолчанию сдвиг отсутствует)

### Подключение тегов USER_

По умолчанию данные теги отключены. Чтобы включить их используйте соответствующий переключатель в настройках плагина.

### Поддержка плагина Star Ratings

По умолчанию поддержка плагина отключена. Для ее включения используйте соответствующий переключатель в настройках плагина.

### Поддержка плагина Comments

Для использования тегов плагина Comments необходимо:
* добавить в файл темы (например, nemesis.php) строку `require_once cot_incfile('comments', 'plug');`
* в блоке `PAGE_ROW` использовать конструкцию типа `{PAGE_ROW_ID|cot_comments_count('page', $this)|cot_declension($this, 'Comments')}`

## История:

вер. 2.02 -- исправление бага, связанного с генерацией user tags

вер. 2.01 (Изменения по сравнению с первым релизом от Trustmaster):

1. Удалил опцию вывода количества комментариев -- проще делать это по месту при помощи конструкций вида {PAGE_ROW_ID|cot_comments_count('page', $this)|cot_declension($this, 'Comments')}
2. Опционизировал поддержку user tags (в некоторых проектах это не требовалось вообще)
3. Добавил поддержку i18n (в некоторых проектах требовалось)
4. Подчистил немного
5. Добавил поддержку Star Ratings (опционально, на всякий случай)
6. Добавил параметр `$offset`

===

## How to Use:

## Version History:

ver. 2.02 -- bug fix related to the user tags generation

ver. 2.01 (Changes as compared to the initial release by Trustmaster):

1. Removed comments parts -- can be replaced using {PAGE_ROW_ID|cot_comments_count('page', $this)|cot_declension($this, 'Comments')} as needed
2. Optional user tags generation (did not need this in some projests)
3. Added i18n support
4. Minor cleanup
5. Added Star Ratings plugin support (optional)
6. Added `$offset` parameter
## Использование:

```html
{PHP|pagelist($tpl, $items, $order, $condition, $cat, $blacklist, $whitelist, $sub, $pagination, $noself, $offset)}
```

Назначение параметров (в скобках значение по умолчанию -- если не указано пользователем):
* $tpl указывает на имя шаблона (pagelist)
* $items указывает на количество выводимых записей (0 -- вывести все)
* $order указывает на сортировку в формате MYSQL, например `page_date ASC` (по умолчанию без сортировки)
* $condition указывает на условие в формате MYSQL, например, `page_ownerid = 1` (по умолчанию без условия)
* $cat указывает на отдельную категорию страниц (по умолчанию без категории)
* $blacklist указывает на черный список категорий страниц, т.е. брать страницы из всех разделов, кроме указанных (по умолчанию без черного списка)
* $whitelist указывает на белый список категорий страниц, т.е. брать страницы только из указанных разделов (по умолчанию без белого списка)
* $sub указывает на необходимость вывода страниц из подразделов (по умолчанию true)
* $pagination указывает на имя переменной вывода постраничного списка (по умолчанию pld)
* $noself указывает на необходимость включать в вывод страницу, из которой осуществляется запрос (по умолчанию false)
* $offset указывает на необходимость сдвига, т.е. исключения определенного количества предстоящих страниц -- например, для вывода всех, кроме первой страницы (по умолчанию сдвиг отсутствует)

### Подключение тегов USER_

По умолчанию данные теги отключены. Чтобы включить их используйте соответствующий переключатель в настройках плагина.

### Поддержка плагина Star Ratings

Плагин позволяет формировать выборки элементов модуля Page для создания виджетов, разделов страниц, пользовательских блоков и элементов навигации
1. Назначение плагина

Плагин Pagelist представляет собой универсальное решение для создания виджетов, виртуальных разделов и навигации. При помощи плагина Pagelist реализуются следующие возможности:

    вывод новостной ленты без ограничения по родительскому разделу с настраиваемой паджинацией, сортировкой и условием выбора элементов
    создание виджетов типа «Новые страницы», «Лучшие страницы», «Случайные страницы» и проч. с настраиваемой сортировкой и условием выбора элементов
    создание элементов навигации и формирование любых пользовательских блоков на базе модуля Pages
    опциональная генерация пользовательских тегов
    опциональная генерация количества комментариев к странице через {PAGE_ROW_ID|cot_comments_count('page', $this)|cot_declension($this, 'Comments')}
    опциональная связь с плагином рейтингов (Star Ratings)

Плагин представляет собой функцию pagelist и используется через ее обратный вызов (callback):

	
function pagelist(
    $tpl = 'pagelist',
    $items = 20,
    $order = 'page_date DESC',
    $condition = '',
    $cat = '',
    $blacklist = '',
    $whitelist = '',
    $sub = true,
    $pagination = 'pld',
    $noself = false,
    $offset = 0
)

Парметры вызова следующие:

    $tpl - код шаблона (без расширения, напр. pagelist.recentitems)
    $items - количество выводимых элементов (опционально, например 5)
    $order - порядок сортировки (опционально, например page_date DESC)
    $condition - условие выборки (опционально, например page_some-extrafield = “1”)
    $cat- родительская категория (опционально, например blog)
    $blacklist - «черный список» категорий (опционально, через точку с запятой, например system;some-cat)
    $whitelist - «белый список» категорий (опционально, через точку с запятой, например hot;podcasts)
    $sub - включить подкатегории (опционально, например true)
    $pagination - имя параметра паджинации (опционально, например pld – убедитесь в отсутствии конфликтов одинаковых имен!)
    $noself - исключить текущую страницу из выборки (опционально, например true)
    $offset - сдвиг в запросе для страниц (1 -- все, кроме последней, 2 -- все, кроме двух последних и т. д.)

2. Примеры использования:

Как уже упоминалось, плагин использует функцию pagelist для отрисовки собственного шаблона в указанном месте. Благодаря этому плагин позволяет формировать такие блоки, как лента блогов, виджеты "Recent Items", "Top Items" и проч.

Вывод ленты блогов – выводятся все разделы, исключая system и archives с сортировкой по убывания даты и с формированием паджинации по 8 позиций на страницу:

{PHP|pagelist('pagelist.blog','8','page_date DESC','','','system;archives','','TRUE')}

Вывод виджета Топ-3 – три страницы с ненулевыми просмотрами, с сортировкой по убыванию просмотров и исключая раздел system:

{PHP|pagelist('pagelist.top','3','page_count DESC','page_count != "0"','','system')}

Вывод блока «О сайте» – страница с алиасом about из раздела system:

{PHP|pagelist('pagelist.about','','','page_alias = "about"','system')}
3. Формат шаблона

Типовой TPL-шаблон имеет следующий формат:

	
<!-- BEGIN: MAIN -->
    <ul>
<!-- BEGIN: PAGE_ROW -->
        <li><a href="{PAGE_ROW_URL}">{PAGE_ROW_TITLE}</a></li>
<!-- END: PAGE_ROW -->
    </ul>
  
<!-- IF {PAGE_TOP_PAGINATION} -->
    <div class="pagination">
        {PAGE_TOP_PAGEPREV} {PAGE_TOP_PAGINATION} {PAGE_TOP_PAGENEXT}
    </div>
<!-- ENDIF -->
  
<!-- END: MAIN -->

Для вывода используется регулярный блок PAGE_ROW, в котором при помощи функции cot_generate_pagetags() формируются "страничные" теги с префиксом PAGE_ROW_.

Дополнительно доступны теги:

    {PAGE_ROW_NUM} (порядковый номер элемента)
    {PAGE_ROW_ODDEVEN} (чет / нечет)
    {PAGE_ROW_RAW} (выводит сырые данные строки из базы в формате {PAGE_ROW_RAW.page_alias})

При включении в настройках плагина связи с плагином Comments, доступными становятся теги PAGE_ROW_COMMENTS и PAGE_ROW_COMMENTS_COUNT.

----------------------------------------------------------------
По умолчанию поддержка плагина отключена. Для ее включения используйте соответствующий переключатель в настройках плагина.

### Поддержка плагина Comments

Для использования тегов плагина Comments необходимо:
* добавить в файл темы (например, nemesis.php) строку `require_once cot_incfile('comments', 'plug');`
* в блоке `PAGE_ROW` использовать конструкцию типа `{PAGE_ROW_ID|cot_comments_count('page', $this)|cot_declension($this, 'Comments')}`

## История:

вер. 2.02 -- исправление бага, связанного с генерацией user tags

вер. 2.01 (Изменения по сравнению с первым релизом от Trustmaster):

1. Удалил опцию вывода количества комментариев -- проще делать это по месту при помощи конструкций вида {PAGE_ROW_ID|cot_comments_count('page', $this)|cot_declension($this, 'Comments')}
2. Опционизировал поддержку user tags (в некоторых проектах это не требовалось вообще)
3. Добавил поддержку i18n (в некоторых проектах требовалось)
4. Подчистил немного
5. Добавил поддержку Star Ratings (опционально, на всякий случай)
6. Добавил параметр `$offset`

===

## How to Use:

## Version History:

ver. 2.02 -- bug fix related to the user tags generation

ver. 2.01 (Changes as compared to the initial release by Trustmaster):

1. Removed comments parts -- can be replaced using {PAGE_ROW_ID|cot_comments_count('page', $this)|cot_declension($this, 'Comments')} as needed
2. Optional user tags generation (did not need this in some projests)
3. Added i18n support
4. Minor cleanup
5. Added Star Ratings plugin support (optional)
6. Added `$offset` parameter