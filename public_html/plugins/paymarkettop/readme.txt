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


Плагин позволяет организовать платную услугу по поднятию товара в списке.

Устанавливается стандартным способом:

    Распакуйте исходники в папку plugins вашего сайта.
    Зайдите в панель администратора и установите данный плагин.
    В настройках плагина укажите стоимость услуги за один день.
    Далее необходимо добавить тэг для ссылки на оплату услуги в шаблоне market.userdetails.tpl либо:

    	
    <!-- IF {PHP.cot_plugins_active.paymarkettop} AND {PHP.usr.id} == {PHP.urr.user_id} -->
           {PRD_ROW_PAYTOP}
    <!-- ENDIF -->

    или в общем списке товаров market.list.tpl:

    <!-- IF {PHP.cot_plugins_active.paymarkettop} AND {PHP.usr.id} == {PRD_ROW_OWNER_ID} -->
           {PRD_ROW_PAYTOP}
    <!-- ENDIF -->

    или аналогичным образом на странице товара в шаблоне market.tpl:

    	
    <!-- IF {PHP.cot_plugins_active.paymarkettop} AND {PHP.usr.id} == {PRD_OWNER_ID} -->
           {PRD_PAYTOP}
    <!-- ENDIF -->

    Ссылка на оплату услуги будет отображаться только владельцу товара.

    Далее в общем списке товаров необходимо прописать стили для топ-товаров, для которых активирована услуга.
    Для этого в шаблоне market.list.tpl внутри цикла <!-- BEGIN: PRD_ROWS --> в блоке, который обрамляет анонс о товаре, необходимо прописать условие для добавления стиля, например:

    	
    <div class="media<!-- IF {PRD_ROW_ISTOP} --> prdtop<!-- ENDIF -->">

    После этого в css файле вашей темы не забудьте прописать класс для топ-товара .prdtop, например так:

    	
    .prdtop { background-color: #feefb3; }