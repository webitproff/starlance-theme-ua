<!-- BEGIN: MAIN -->
<div class="uk-section uk-padding-remove-vertical uk-background-primary uk-visible@m">
  <div class="uk-container uk-container-large uk-padding-small uk-link-text">
    <ul class="uk-breadcrumb">
      <li>
        <a href="{PHP.cfg.mainurl}">{PHP.L.Home}</a>
      </li> {SERV_TITLE|ul_transform($this)}
    </ul>
  </div>
</div>
<div class="uk-background-muted uk-section uk-padding-remove-vertical">
  <div class="uk-container uk-container-large">
    <div class="uk-margin-top uk-margin-large-bottom">
      <div uk-grid>
        <div class="uk-width-expand">
          <h3 class="uk-heading-bullet uk-text-truncate">{SERV_SHORTTITLE}</h3>
        </div>
        <!-- IF {PHP.usr.id} == {SERV_OWNER_ID} OR {PHP.usr.isadmin} OR {PHP.usr.maingrp} == 5 -->
        <div class="uk-width-auto">
          <a uk-tooltip="{PHP.L.Edit}" class="uk-icon-button uk-button-warning" href="{SERV_ID|cot_url('services','m=edit&id='$this)}" uk-icon="icon:  file-edit; ratio: 1.2" title=""></a>
        </div>
        <!-- ENDIF -->
      </div>
      <!-- IF {SERV_STATE} == 2 -->
      <div class="uk-card uk-card-body uk-card-small uk-background-default uk-margin-small uk-border-rounded">
        <div class="uk-alert uk-alert-warning"> {PHP.L.services_forreview} </div>
      </div>
      <!-- ENDIF -->
      <!-- IF {SERV_STATE} == 1 -->
      <div class="uk-card uk-card-body uk-card-small uk-background-default uk-margin-small uk-border-rounded">
        <div class="uk-alert uk-alert-warning"> {PHP.L.services_hidden} </div>
      </div>
      <!-- ENDIF -->
      <div class="uk-grid-small" uk-grid>
        <div class="uk-width-2-3@m">
          <!-- IF {SERV_ID|att_count('services',$this)} > 0 -->
          <div class="uk-card">
            <div class="uk-position-small uk-position-z-index uk-position-top-right uk-panel">
              <span class="uk-button uk-button-details" uk-tooltip="Всего прикрепленно файлов / из них картинок / другие для бесплатного скачивания">{SERV_ID|att_count('services',$this)}/{SERV_ID|att_count('services',$this,'','images')}/{SERV_ID|att_count('services',$this,'','files')}</span>
            </div>
            <div data-att-display="all"> {SERV_ID|att_display('services',$this,'','attacher.display.services','all')} </div>
          </div>
          <!-- ENDIF -->
          <div class="uk-card uk-card-small uk-card-body uk-background-default uk-border-rounded uk-margin-small-top">
            <span class="uk-text-light" id="search">{SERV_TEXT}</span>
          </div>
          <!-- IF {SERV_ID|att_count('services',$this,'','files')} > 0 -->
          <div class="uk-alert-success uk-margin-top" uk-alert>
            <div data-att-downloads="download">
              <p>
                <span class="uk-text-danger uk-text-bold">Скачать бесплатно </span>
                <span class="uk-text-secondary">{SERV_SHORTTITLE}</span>
              </p>
              <span class="uk-text-primary uk-text-bold" title="{SERV_SHORTTITLE} Скачать бесплатно">{SERV_ID|att_downloads('services',$this)}</span>
            </div>
          </div>
          <!-- ENDIF -->
          <div class="uk-text-center uk-margin-top"> {PHP|share} </div>
        </div>
        <div class="uk-width-1-3@m">
          <div class="uk-card uk-card-small uk-card-body uk-background-default uk-border-rounded">
				<div class="uk-margin-top">
				<!-- IF {PHP.cot_plugins_active.sbr} -->
					<!-- IF {PHP.usr.id} > 0  -->
						<!-- IF {PHP.usr.id} == {SERV_OWNER_ID} -->
						<a class="uk-button uk-button-large uk-button-success uk-width-1-1" href="{PHP|cot_url('sbr')}"><img class="uk-margin-small-right" width="27" height="27" alt="" uk-img="data-src: {PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/icon/022-shield-1.svg" uk-svg="uk-preserve"><span class="uk-text-middle uk-text-uppercase">{PHP.L.sbr_mydeals}</span></a>
						<!-- ELSE -->
						<a class="uk-button uk-button-large uk-button-linear uk-width-1-1" href="{SERV_OWNER_ID|cot_url('sbr', 'm=add&uid='$this)}"><img class="uk-margin-small-right" width="27" height="27" alt="" uk-img="data-src: {PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/icon/022-shield-1.svg" uk-svg="uk-preserve"><span class="uk-text-middle uk-text-uppercase" uk-tooltip="Предложить Защищенную Сделку с конкретным бюджетом и отправить исполнителю на согласование">{PHP.L.sbr_createlink}</span></a>
						<!-- ENDIF -->
					<!-- ENDIF -->
					<!-- IF {PHP.usr.id} == 0 -->
					<a class="uk-button uk-button-large uk-button-primary uk-width-medium-1-1" href="#AuthModal" uk-toggle>{PHP.L.sbr_createlink}</a>
					<!-- ENDIF -->	
				<!-- ENDIF -->
				</div>				
				<div class="uk-margin-top">
				<!-- IF {PHP.cot_modules.ds} -->
					<!-- IF {PHP.usr.id} > 0 AND {PHP.usr.id} != {SERV_OWNER_ID} -->
						<!-- IF {SERV_OWNER_DS_CHAT_ID} > 0 -->
						<a class="uk-button uk-button-large uk-button-linear uk-width-medium-1-1" href="{SERV_OWNER_DS_CHAT_ID|cot_url('ds', 'm=dialog&chat='$this)}"><i class="uk-icon-comments-o uk-icon-small uk-margin-right"></i>Написать сообщение</a>
						<!-- ELSE -->
						<a class="uk-button uk-button-large uk-button-primary uk-width-medium-1-1" href="{SERV_OWNER_DS_SEND_URL}"><i class="uk-icon-comments-o uk-icon-small uk-margin-right"></i>Написать сообщение</a>
						<!-- ENDIF -->
					<!-- ENDIF -->
					<!-- IF {PHP.usr.id} == 0 -->
					<a class="uk-button uk-button-large uk-button-primary uk-width-medium-1-1" href="#AuthModal" uk-toggle><i class="uk-icon-comments-o uk-icon-small uk-margin-right"></i>Войти и написать</a>
					<!-- ENDIF -->
				<!-- ENDIF -->
				</div>
			<div class="uk-margin-top">
            <!-- IF {PHP.usr.id} > 0 -->
            <!-- IF {SERV_COST} > 0 AND {SERV_STATE} == 0 AND {PHP.cot_plugins_active.orderservices} AND {PHP|cot_auth('plug', 'orderservices', 'R')} -->
            <!-- IF {SERV_ORDER_ID} -->
            <a class="uk-button uk-button-default uk-button-large uk-width-1-1 uk-margin" href="{SERV_ORDER_URL}">{PHP.L.orderservices_title}</a>
            <!-- IF {SERV_ORDER_DOWNLOAD} -->
            <a class="uk-button uk-button-success uk-button-large uk-width-1-1" href="{SERV_ORDER_DOWNLOAD}">{PHP.L.orderservices_file_download}</a>
            <!-- ELSE -->
            <button class="uk-button uk-button-warning uk-width-1-1">{SERV_ORDER_LOCALSTATUS}</button>
            <!-- ENDIF -->
            <!-- ELSE -->
            <!-- IF {PHP.usr.id} == {SERV_OWNER_ID} -->
            <button class="uk-button uk-button-warning uk-button-large uk-width-1-1" uk-tooltip="{PHP.L.orderservices_neworder_button_your_tooltip}">{PHP.L.orderservices_neworder_button_your}</button>
            <!-- ELSE -->
            <a class="uk-button uk-button-success uk-button-large uk-width-1-1" uk-tooltip="{PHP.L.prd_orderservices_neworder_descr}" href="{SERV_ID|cot_url('orderservices', 'm=neworder&pid='$this)}">{PHP.L.orderservices_neworder_button}</a>
            <!-- ENDIF -->
            <!-- IF !{SERV_FILE} -->
            <button class="uk-margin uk-button uk-button-warning uk-button-large uk-width-1-1" uk-tooltip="{PHP.L.orderservices_neworder_button_your_no_file_tooltip}">{PHP.L.orderservices_neworder_button_no_file}</button>
            <!-- ENDIF -->
            <!-- ENDIF -->
            <!-- ENDIF -->
            <!-- IF {SERV_COST} == 0 -->
            <a href="{SERV_OWNER_DETAILSLINK}" class="uk-margin uk-button uk-button-large uk-button-details uk-width-1-1" uk-tooltip="Стоимость услуги не указана, следовательно осуществление покупки невозможно. Свяжитесь с продавцом, если это предложение Вас действительно интересует">
              <span uk-icon="icon: warning; ratio: 1.5" class="uk-text-danger uk-margin-small-right"></span>
              <span class="uk-text-middle" title="">{PHP.L.prd_no_cost_card}</span>
            </a>
            <!-- ENDIF -->
            <!-- ENDIF -->
            <!-- IF {PHP.usr.id} == 0 -->
            <!-- IF {SERV_COST} > 0 -->
            <a class="uk-button uk-button-default uk-button-large uk-width-1-1" uk-tooltip="Требуется Авторизация или Регистрация" href="#AuthModal" uk-toggle>Заказать услугу</a>
            <!-- ELSE -->
            <a href="{SERV_OWNER_DETAILSLINK}" class="uk-margin uk-button uk-button-large uk-button-details uk-width-1-1" uk-tooltip="Стоимость услуги не указана, следовательно осуществление покупки невозможно. Свяжитесь с продавцом, если это предложение Вас действительно интересует">
              <span uk-icon="icon: warning; ratio: 1.5" class="uk-text-danger uk-margin-small-right"></span>
              <span class="uk-text-middle" title="">{PHP.L.prd_no_cost_card}</span>
            </a>
            <!-- ENDIF -->
            <!-- ENDIF -->
			</div>
            <hr class="uk-divider-icon uk-margin-small">
            <ul class="uk-list uk-list-divider">
              <!-- IF {SERV_COST} > 0 -->
              <li>
                <div class="uk-grid-small" uk-grid>
                  <div class="uk-width-expand uk-flex uk-flex-bottom" uk-leader="fill: -">
                    <span class="uk-text-large uk-link-text">{PHP.L.prd_cost_card}:</span>
                  </div>
                  <div>
                    <button class="uk-button uk-button-primary uk-width-1-1">{SERV_COST} {PHP.cfg.payments.valuta}</button>
                  </div>
                </div>
              </li>
              <!-- ENDIF -->
              <!-- IF {PHP.usr.id} == {SERV_OWNER_ID} OR {PHP.usr.isadmin} OR {PHP.usr.maingrp} == 5 -->
              <li>
                <div class="uk-grid-small" uk-grid>
                  <div class="uk-width-expand uk-flex uk-flex-bottom" uk-leader="fill: -">
                    <span class="uk-link-text">Статус:</span>
                  </div>
                  <div>
                    <span class="uk-label">{SERV_LOCALSTATUS}</span>
                  </div>
                </div>
              </li>
              <!-- ENDIF -->
              <!-- IF {SERV_USER_IS_ADMIN} -->
              <li>{SERV_ADMIN_EDIT}</li>
              <!-- IF {SERV_STATE} != 2 -->
              <li>
                <a href="{SERV_HIDEPRODUCT_URL}">{SERV_HIDEPRODUCT_TITLE}</a>
              </li>
              <!-- ENDIF -->
              <!-- ENDIF -->
              <li>
                <div class="uk-grid-small" uk-grid>
                  <div class="uk-width-expand uk-flex uk-flex-bottom" uk-leader="fill: -">
                    <span class="uk-link-text">Количество просмотров:</span>
                  </div>
                  <div>
                    <span class="uk-label">{SERV_COUNT}</span>
                  </div>
                </div>
              </li>
              <li>
                <div class="uk-grid-small" uk-grid>
                  <div class="uk-width-expand uk-flex uk-flex-bottom" uk-leader="fill: -">
                    <span class="uk-link-text">ID карточки в маркетплейсе:</span>
                  </div>
                  <div>
                    <span class="uk-label">#{SERV_ID}</span>
                  </div>
                </div>
              </li>
              <li>
                <p class="uk-font-face uk-heading-bullet">Категория: <a class="uk-link-text" href="{SERV_CATURL}">
                    <span uk-icon="link" class="uk-margin-small-right uk-icon"></span>
                    <span class="uk-text-bold uk-text-middle uk-text-truncate">{SERV_CATTITLE}</span>
                  </a>
                </p>
              </li>
              <li>
                <p class="uk-font-face uk-heading-bullet">Опубликовано: <span uk-icon="calendar" class="uk-margin-small-right uk-icon"></span>
                  <span class="uk-text-middle uk-text-success">{SERV_DATE}</span>
                </p>
              </li>
              <!-- IF {PHP.item.item_update} -->
              <li>
                <p class="uk-font-face uk-heading-bullet uk-text-middle">Последнее обновление: <span uk-icon="calendar" class="uk-margin-small-right uk-icon"></span>
                  <span class="uk-text-middle">{PHP.item.item_update|cot_build_timeago()}</span>
                </p>
              </li>
              <!-- ENDIF -->
              <!-- IF {PHP.cot_plugins_active.locationselector} -->
			  <!-- IF {SERV_COUNTRY} -->
              <li>
                <span uk-icon="world" class="uk-text-warning uk-margin-small-right uk-icon"></span>
                <span class="uk-text-middle uk-link-text" uk-tooltip="{PHP.L.country_tpl}">{SERV_COUNTRY}</span>
              </li>
			  <!-- ENDIF -->
			  <!-- IF {SERV_REGION} -->
              <li>
                <span uk-icon="location" class="uk-text-warning uk-margin-small-right uk-icon"></span>
                <span class="uk-text-middle uk-link-text" uk-tooltip="{PHP.L.region_tpl}">{SERV_REGION}</span>
              </li>
			  <!-- ENDIF -->
			  <!-- IF {SERV_CITY} -->
              <li>
                <img class="uk-margin-small-right" width="27" height="27" alt="" uk-img="data-src: themes/{PHP.theme}/img/icon/university.svg" uk-svg="uk-preserve">
                <span class="uk-text-bold uk-text-middle uk-link-text" uk-tooltip="{PHP.L.city_tpl}">{SERV_CITY}</span>
              </li>
			  <!-- ENDIF -->
              <!-- ENDIF -->
            </ul>
          </div>
          <div class="uk-card uk-card-body uk-card-small uk-background-default uk-margin-top">
            <a class="uk-button uk-button-success uk-width-1-1" href="{SERV_OWNER_DETAILSLINK}">
              <span uk-icon="happy" class="uk-margin-small-right"></span>
              <span class="uk-text-middle" uk-tooltip="{PHP.L.Prd_Pagellink_supplier_desc}" title="">{PHP.L.Prd_Pagellink_supplier}</span>
            </a>
            <hr class="uk-divider-icon uk-margin-small">
            <div class="uk-grid-small" uk-grid>
              <div class="uk-width-1-3@m uk-text-center">
                <!-- IF {SERV_OWNER_AVATAR_SRC} -->
                <div class="uk-margin-small-bottom">
                  <img class="uk-border-rounded" src="{SERV_OWNER_AVATAR_SRC}" alt="{SERV_OWNER_NICKNAME}" width="250" height="250" />
                </div>
                <!-- ELSE -->
                <div class="uk-margin-small-bottom">
                  <img class="uk-border-rounded" src="themes/{PHP.theme}/img/avatar.png" alt="{SERV_OWNER_NICKNAME}" width="250" height="250" />
                </div>
                <!-- ENDIF -->
                <p class="uk-font-face uk-text-meta uk-margin-small-top">
                  <a class="uk-link-text" href="{SERV_OWNER_DETAILSLINK}#tab_reviews">Отзывов: <span class="uk-label">{SERV_OWNER_REVIEWS_SUMM}</span>
                  </a>
                </p>
              </div>
              <div class="uk-width-expand@m">
                <h5 class="uk-margin-remove">
                  <a class="uk-link-text" uk-tooltip="{SERV_OWNER_NICKNAME}" href="{SERV_OWNER_DETAILSLINK}">
                    <!-- IF {SERV_OWNER_FIRST_SECOND_NAME} -->
                    <span class="uk-text-warning">{SERV_OWNER_FIRST_SECOND_NAME}</span>
                    <hr class="uk-margin-remove">
                    <!-- ELSE -->
                    <span class="uk-text-emphasis uk-text-bold">[{SERV_OWNER_NICKNAME}]</span>
                    <!-- ENDIF -->
                  </a>
                </h5>
                <div class="uk-margin-remove">
                  <!-- IF {SERV_OWNER_ISPRO} -->
                  <span class="uk-label uk-label-success">PRO</span>
                  <!-- ENDIF -->
                  <span class="uk-label uk-label-success">{SERV_OWNER_USERPOINTS}</span>
                  <!-- IF {SERV_OWNER_TEXT} -->
                  <span class="uk-text-emphasis uk-text-small">{SERV_OWNER_TEXT|cot_string_truncate($this,211)}</span>
                  <!-- ELSE --> {PHP.cfg.maintitle} - {PHP.cfg.subtitle} ( в настройках профиля смените текст на свой)
                  <!-- ENDIF -->
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
<div class="uk-margin-remove-vertical uk-alert-primary" uk-alert>
  <a class="uk-alert-close" uk-close></a>
  <p>Расположение файла, формирующего шаблон страницы:</p>
  <div class="uk-panel uk-text-break uk-text-secondary">{PHP.mskin}</div>
</div>
<!-- ENDIF -->
<!-- END: MAIN -->