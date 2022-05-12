ReadME.md 11 травня 2022 року
# locationselector version 3.0.0

<img src="https://github.com/webitproff/starlance-theme-ua/blob/main/public_html/plugins/locationselector/locationselector_UA_ver_3.0.0_conf.png" border="1" />
<p> в інсталяторі переведено україньскою регіони України
нова версія селектору країн, регіонів та міст вже з україномовними назвами областей України.
Міста областей перекладаємо самостійно в адміністративній частині сайту за прикладом шляху:</p>
===
# Управління сайтом / Розширення / Location Selector / Адміністрування / Україна / Вінницька область 
===

===
## в інсталяторі переведено україньскою регіони України
<ul>
<li>Вінницька область</li>
<li>Волинська область</li>
<li>Дніпропетровська область</li>
<li>Донецька область</li>
<li>Житомирська область</li>
<li>Закарпатська область</li>
<li>Запорізька область</li>
<li>Івано-Франківська область</li>
<li>Київська область</li>
<li>Кіровоградська область</li>
<li>Луганська область</li>
<li>Львівська область</li>
<li>Миколаївська область</li>
<li>Одеська область</li>
<li>Полтавська область</li>
<li>Рівненська область</li>
<li>Сумська область</li>
<li>Тернопільська область</li>
<li>Харківська область</li>
<li>Херсонська область</li>
<li>Хмельницька область</li>
<li>Черкаська область</li>
<li>Чернівецька область</li>
<li>Чернігівська область</li>
<li>Крим</li>
</ul>
===

===
у дерикторії шаблону, в файлі 
public_html/themes/starlance/starlance.resources.php
для корректної роботи має бути код
<pre class="EnlighterJSRAW" data-enlighter-language="generic">if($cfg['plugin']['locationselector']['hide_country']) {
  $R['input_location'] = '&lt;div style="display: none;"&gt;{$country}&lt;/div&gt;&lt;div class="uk-grid-small uk-margin-top" uk-grid&gt;&lt;div class="uk-width-1-1@s"&gt;{$region}&lt;/div&gt;&lt;div class="uk-width-1-1@s"&gt;{$city}&lt;/div&gt;&lt;/div&gt;';
  if($cfg['plugin']['locationselector']['hide_city']) {
    $R['input_location'] = '&lt;div style="display: none;"&gt;{$country}&lt;/div&gt;{$region}';
  }
} elseif($cfg['plugin']['locationselector']['hide_city']) {
  $R['input_location'] = '&lt;div class="uk-grid-small uk-margin-top" uk-grid&gt;&lt;div class="uk-width-1-1@s"&gt;{$country}&lt;/div&gt;&lt;div class="uk-width-1-1@s"&gt;{$region}&lt;/div&gt;&lt;/div&gt;';
}</pre>
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
