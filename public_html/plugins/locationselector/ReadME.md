ReadME.md 11 травня 2022 року
# locationselector version 3.0.0
### в інсталяторі переведено україньскою регіони України
нова версія селектору країн, регіонів та міст вже з україномовними назвами областей України.
Міста областей перекладаємо самостійно в адміністративній частині сайту за прикладом шляху
Управління сайтом / Розширення / Location Selector / Адміністрування / Україна / Вінницька область ###
===
Вінницька область
Волинська область
Дніпропетровська область
Донецька область
Житомирська область
Закарпатська область
Запорізька область
Івано-Франківська область
Київська область
Кіровоградська область
Крим (окупована рашистами територія)
Луганська область
Львівська область
Миколаївська область
Одеська область
Полтавська область
Рівненська область
Сумська область
Тернопільська область
Харківська область
Херсонська область
Хмельницька область
Черкаська область
Чернівецька область
Чернігівська область
===
у дерикторії шаблону, в файлі 
public_html/themes/starlance/starlance.resources.php
для корректно роботи має бути код
<pre>
if($cfg['plugin']['locationselector']['hide_country']) {
  $R['input_location'] = '<div style="display: none;">{$country}</div><div class="uk-grid-small uk-margin-top" uk-grid><div class="uk-width-1-1@s">{$region}</div><div class="uk-width-1-1@s">{$city}</div></div>';
  if($cfg['plugin']['locationselector']['hide_city']) {
    $R['input_location'] = '<div style="display: none;">{$country}</div>{$region}';
  }
} elseif($cfg['plugin']['locationselector']['hide_city']) {
  $R['input_location'] = '<div class="uk-grid-small uk-margin-top" uk-grid><div class="uk-width-1-1@s">{$country}</div><div class="uk-width-1-1@s">{$region}</div></div>';
}
</pre>
===
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
