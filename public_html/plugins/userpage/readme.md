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

# User pages 2.0.2

UA
===

Розширення дозволяє показати сторінки по категоріям на сторінці профілю автора як Projects && Market.(Розроблено для FL від CMSWorks.ru)

### Інструкція по установці:

1. Завантажити і розпакувати вміст архіву, скопіювати файли в папку plugins.
2. Встановити через панель: (Управління сайтом / Розширення / User pages).
3. Додати в user.details.tpl теги {USERPAGE}, {USERS_DETAILS_PAGE_URL}, {USERS_DETAILS_PAGE_COUNT}
4.  Створіть власні шаблони для кождоної групи користувачів, назва шаблону має бути userpage.details.4.tpl, де 4 - ID групи.


Приклад корректного шаблону в  списку вкладок:

```html
<!-- IF {PHP.cot_plugins_active.userpage} -->
<li<!-- IF {PHP.tab} == 'userpage' --> class="active"<!-- ENDIF -->><a href="{USERS_DETAILS_PAGE_URL}#tab_userpage" data-toggle="tab">{PHP.L.userpage_userpage}  {USERS_DETAILS_PAGE_COUNT}</a></li>
<!-- ENDIF -->
```

Приклад корректного шаблону в табах:

```html
<div class="tab-pane<!-- IF {PHP.tab} == 'userpage' --> active<!-- ENDIF -->" id="tab_userpage">
    {USERPAGE}
</div>
```

Розширення налаштовано для [GitHub Check](https://github.com/CrazyFreeMan/cot-githubcheckupdate)

RU
===

Плагин позволяет показать на странице пользователя список его страниц по категориям как Projects && Market.(Разработано для FL от CMSWorks.ru)

### Установка:

1. Загрузить и распаковать файли в папку plugins.
2. Установить через панель: (Управленние сайтом / Расширения / User pages).
3. Добавить в user.details.tpl теги {USERPAGE}, {USERS_DETAILS_PAGE_URL}, {USERS_DETAILS_PAGE_COUNT}
4. Создайте собственные шаблоны для каждой группы пользователей, название шаблона userpage.details.4.tpl, где 4 - ID группы.

Пример интеграции шаблона в списке вкладок:

```html
<!-- IF {PHP.cot_plugins_active.userpage} -->
<li<!-- IF {PHP.tab} == 'userpage' --> class="active"<!-- ENDIF -->><a href="{USERS_DETAILS_PAGE_URL}#tab_userpage" data-toggle="tab">{PHP.L.userpage_userpage}  {USERS_DETAILS_PAGE_COUNT}</a></li>
<!-- ENDIF -->
```

Пример интеграции шаблона в табах:

```html
<div class="tab-pane<!-- IF {PHP.tab} == 'userpage' --> active<!-- ENDIF -->" id="tab_userpage">
    {USERPAGE}
</div>
```

Плагин настроен для [GitHub Check](https://github.com/CrazyFreeMan/cot-githubcheckupdate)

Розробник: Ярослав Романенко (yaroslav.romanenko@gmail.com)

[![Bitdeli Badge](https://d2weczhvl823v0.cloudfront.net/CrazyFreeMan/cot-userpage/trend.png)](https://bitdeli.com/free "Bitdeli Badge")
