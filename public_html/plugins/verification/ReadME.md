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

Верификация пользователей
Фриланс-биржа


Добровольная услуга по подтверждения личности путем отправки скана паспорта в адрес администрации биржи. У верифицированного пользователя рядом с аватаром выводится специальный значок “личность подтверждена”. Это позволяет повысить доверие к пользователю со стороны других пользователей.

Инструкция по установке

1. Распакуйте исходники в папку plugins вашего сайта.

2. Зайдите в панель администратора и установите данный плагин.выаы

3. После окончания установки плагина необходимо проверить наличие новых созданных папок в директории datas/
Должны появится папки: 1. datas/verification_image/ 2. datas/verification_image/active_user/
Если папки не создались автоматически, то их необходимо создать вручную.

4. Установка завершена.

Теги плагина

Глобальные теги (работают во всех tpl файлах)

{PHP.glb_vrf_link} - ссылка на страницу верификации. (показывается всегда)
{PHP.glb_vrf_link_user} - ссылка на страницу верификации. (показывается только для пользователя, который не  прошел верификацию)
{PHP.glb_vrf_link_admin} - ссылка для администратора биржи, уведомление о новых заявках на верификацию. (рекомендована установка в header.tpl)

header.tpl

{HEADER_USER_VRF_ICON} - иконка верифицированного пользователя. (прописываем перед  {HEADER_USER_NAME})

users.edit.tpl

В разделе редактирования профиля пользователя имеется возможность в ручном режиме установить статус пользователя. (без загрузки скана паспорта)

{USERS_EDIT_VRF_TITLE} - название пункта.
{USERS_EDIT_VRF_STATUS} - радио-кнопки выбора статуса. users.profile.tpl Вывод статуса пользователя в профиле пользователя.
{USERS_PROFILE_VRF_TITLE} - название пункта.
{USERS_PROFILE_VRF_STATUS} - статус пользователя.

Остальные tpl

В остальных tpl файлах, где имеется имя пользователя,  используются глобальные префиксы. XxX - VRF_TITLE, VRF_STATUS, VRF_ICON

1. XxX _VRF_TITLE  - название пункта.
2. XxX _VRF_STATUS  - статус прописью.
3. XxX _VRF_ICON  - иконка статуса.

Как определить какой тег верификации вписывать в файл  xxx.tpl?

Смотрим теги пользователя в xxx.tpl. к примеру там имеется {PRJ_OWNER_NAME} тут корнем тега является  PRJ_OWNER_ нам надо использовать данный корень. Таким образом мы можем использовать теги: {PRJ_OWNER_VRF_TITLE}, {PRJ_OWNER_VRF_STATUS}, {PRJ_OWNER_VRF_ICON}. 

Аналогично для  {PRJ_ROW_OWNER_NAME}: корень PRJ_ROW_OWNER_, возможные теги: {PRJ_ROW_OWNER_VRF_TITLE}, {PRJ_ROW_OWNER_VRF_STATUS}, {PRJ_ROW_OWNER_VRF_ICON} и т.д.

 

Вот пример для нескольких tpl фалов биржи:

users.details.tpl: USERS_DETAILS_XxX

projects.tpl: PRJ_OWNER_XxX

projects.index.tpl, projects.list.tpl: PRJ_ROW_OWNER_XxX

projects.offers.tpl: POST_ROW_OWNER_XxX, OFFER_ROW_OWNER_XxX, PERFORMER_XxX

market.list.tpl: PRD_ROW_OWNER_XxX

market.tpl: PRD_OWNER_VRF_XxX

folio.list.tpl: PRD_ROW_OWNER_XxX

folio.tpl: PRD_OWNER_XxX

плагин paytop paytop.list.tpl : TOP_ROW_XxX

где ХхХ это один из тегов VRF_TITLE, VRF_STATUS, VRF_ICON

 

Описание работы плагина

После перехода по ссылке на страницу верификации, пользователю необходимо поставить галочку подтверждающую согласие на обработку личных данных. Далее он может перейти на страницу загрузки скана паспорта. После успешной загрузки паспорта, файл сохраняется в папке datas/verification_image/ Имя файла состоит из нескольких префиксов. user_Id-user_name-secret_key.ext_img user_Id -  id пользователя в системе. user_name -  логин пользователя в системе secret_key -  секретный ключ ext_img - расширение изображения

Пример имени файла : 1-Dr2005alex-0fTEUTli.jpg

Если в настройках  плагина прописан email для уведомлений, то администратор биржи получает уведомление о новых заявках на почту. Так-же имеется тег {PHP.glb_vrf_link_admin}  - показывает количество заявок и является ссылкой на страницу в панели администратора. (только для админов) В панели администратора в разделе Прочее, имеется инструмент для модерации полученных заявок на верификацию. После утверждения статуса модератором, фотография паспорта переносится в папку datas/verification_image/active_user/ Вы в любой момент можете их найти  и скачать.  Как узнать чей паспорт? - по имени файла (читайте выше).

Плагин Verification

Добровольная услуга по подтверждению личности путем отправки скана паспорта в адрес администрации биржи. У верифицированного пользователя рядом с аватаром выводится специальный значок “личность подтверждена”. Это позволяет повысить доверие к пользователю со стороны других пользователей.

Инструкция по установке
1. Распакуйте исходники в папку plugins  вашего сайта.
2. Зайдите в панель администратора и установите данный плагин.

3. После окончания установки плагина необходимо проверить наличие новых созданных папок в директории datas/

 Должны появится папки:
dats/verification_image/
dats/verification_image/active_user/

Если папки не создались автоматически, то их необходимо создать вручную.

4. Установка завершена.


Теги плагина
Глобальные теги (работают во всех tpl файлах) 

{PHP.glb_vrf_link} - ссылка на страницу верификации. (показывается всегда)
{PHP.glb_vrf_link_user} - ссылка на страницу верификации. (показывается только для пользователя, который не  прошел верификацию)
{PHP.glb_vrf_link_admin} - ссылка для администратора биржи, уведомление о новых заявках на верификацию. (рекомендована установка в header.tpl)

header.tpl
.
{HEADER_USER_VRF_ICON} - иконка верифицированного пользователя. (прописываем перед  {HEADER_USER_NAME})
users.edit.tpl

В разделе редактирования профиля пользователя имеется возможность в ручном режиме установить статус пользователя. (без загрузки скана паспорта)

{USERS_EDIT_VRF_TITLE} - название пункта.
{USERS_EDIT_VRF_STATUS} - радио-кнопки выбора статуса.

users.profile.tpl

Вывод статуса пользователя в профиле пользователя.

{USERS_PROFILE_VRF_TITLE} - название пункта.
{USERS_PROFILE_VRF_STATUS} - статус пользователя.

Остальные tpl.

В остальных tpl файлах, где имеется имя пользователя,  используются глобальные префиксы. XxX - VRF_TITLE, VRF_STATUS, VRF_ICON

XxX _VRF_TITLE  - название пункта.
XxX _VRF_STATUS  - статус прописью.
XxX _VRF_ICON  - иконка статуса.

Как определить какой тег верификации вписывать в файл  xxx.tpl?

Смотрим теги пользователя в xxx.tpl. к примеру там имеется {PRJ_OWNER_NAME}
тут корнем тега является  PRJ_OWNER_ нам надо использовать данный корень.

Таким образом мы можем использовать теги 
{PRJ_OWNER_VRF_TITLE}
{PRJ_OWNER_VRF_STATUS}
{PRJ_OWNER_VRF_ICON}

аналогично для  {PRJ_ROW_OWNER_NAME}, корень PRJ_ROW_OWNER_  
возможные теги - 
{PRJ_ROW_OWNER_VRF_TITLE}
{PRJ_ROW_OWNER_VRF_STATUS}
{PRJ_ROW_OWNER_VRF_ICON} 

и т.д.

Вот пример для нескольких tpl фалов биржи.

users.details.tpl :   USERS_DETAILS_XxX
projects.tpl :           PRJ_OWNER_XxX

projects.index.tpl,
projects.list.tpl:     PRJ_ROW_OWNER_XxX

projects.offers.tpl:   POST_ROW_OWNER_XxX
		           OFFER_ROW_OWNER_XxX
		           PERFORMER_XxX

market.list.tpl :   PRD_ROW_OWNER_XxX
market.tpl : 	     PRD_OWNER_VRF_XxX

folio.list.tpl:       PRD_ROW_OWNER_XxX
folio.tpl:             PRD_OWNER_XxX

плагин paytop

paytop.list.tpl :      TOP_ROW_XxX

где ХхХ это один из тегов VRF_TITLE, VRF_STATUS, VRF_ICON

Описание работы плагина.

После перехода по ссылке на страницу верификации, пользователю необходимо поставить галочку подтверждающую согласие на обработку личных данных. 

Далее он может перейти на страницу загрузки скана паспорта.

После успешной загрузки паспорта, файл сохраняется в папке datas/verification_image/
Имя файла состоит из нескольких префиксов.

user_Id-user_name-secret_key.ext_img

user_Id -  id пользователя в системе.
user_name -  логин пользователя в системе
secret_key -  секретный ключ
ext_img - расширение изображения

Пример имени файла : 1-Dr2005alex-0fTEUTli.jpg

Администратор биржи получает уведомление о новых заявках на верификацию.

тег {PHP.glb_vrf_link_admin}  показывает количество заявок и является ссылкой на страницу в панели администратора.
