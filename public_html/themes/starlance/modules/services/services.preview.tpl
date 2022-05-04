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
        <a href="{SERV_SAVE_URL}" class="uk-button uk-button-success">
          <span>{PHP.L.Publish}</span>
        </a>
      </div>
      <!-- ENDIF -->
      <div class="uk-grid-small" uk-grid>
        <div class="uk-width-2-3@m">
          <!-- IF {SERV_ID|att_count('services',$this)} > 0 -->
          <div class="uk-card">
            <div data-att-display="all"> {SERV_ID|att_display('services',$this,'','attacher.display.services','all')} </div>
          </div>
          <!-- ENDIF -->
          <div class="uk-card uk-card-small uk-card-body uk-background-default uk-border-rounded uk-margin-small-top"> {SERV_TEXT} </div>
        </div>
        <div class="uk-width-1-3@m">
          <div class="uk-card uk-card-small uk-card-body uk-background-default uk-border-rounded">
            <!-- IF {SERV_COST} > 0 AND {SERV_STATE} == 0 AND {PHP.cot_plugins_active.servicesorders} AND {PHP|cot_auth('plug', 'servicesorders', 'R')} -->
            <!-- IF {SERV_ORDER_ID} -->
            <a class="uk-button uk-button-default uk-button-large uk-width-1-1 uk-margin" href="{SERV_ORDER_URL}">{PHP.L.servicesorders_title}</a>
            <!-- IF {SERV_ORDER_DOWNLOAD} -->
            <a class="uk-button uk-button-success uk-button-large uk-width-1-1" href="{SERV_ORDER_DOWNLOAD}">{PHP.L.servicesorders_file_download}</a>
            <!-- ELSE -->
            <button class="uk-button uk-button-warning uk-width-1-1">{SERV_ORDER_LOCALSTATUS}</button>
            <!-- ENDIF -->
            <!-- ELSE -->
            <a class="uk-button uk-button-default uk-button-large uk-width-1-1" uk-tooltip="{PHP.L.prd_servicesorders_neworder_descr}" href="{SERV_ID|cot_url('servicesorders', 'm=neworder&pid='$this)}">{PHP.L.prd_servicesorders_neworder_title}</a>
            <!-- ENDIF -->
            <!-- ELSE -->
            <a class="uk-button uk-button-default uk-button-large uk-width-1-1" uk-tooltip="{PHP.L.prd_servicesorders_neworder_descr}" href="#AuthModal" uk-toggle>{PHP.L.prd_servicesorders_neworder_title}</a>
            <!-- ENDIF -->
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
              <!-- IF {PHP.cot_plugins_active.locationselector} -->
              <li>
                <span uk-icon="world" class="uk-text-warning uk-margin-small-right uk-icon"></span>
                <span class="uk-text-middle uk-link-text" uk-tooltip="{PHP.L.country_tpl}">{SERV_COUNTRY}</span>
              </li>
              <li>
                <span uk-icon="location" class="uk-text-warning uk-margin-small-right uk-icon"></span>
                <span class="uk-text-middle uk-link-text" uk-tooltip="{PHP.L.region_tpl}">{SERV_REGION}</span>
              </li>
              <li>
                <img class="uk-margin-small-right" width="27" height="27" alt="" uk-img="data-src: themes/{PHP.theme}/img/icon/university.svg" uk-svg="uk-preserve">
                <span class="uk-text-bold uk-text-middle uk-link-text" uk-tooltip="{PHP.L.city_tpl}">{SERV_CITY}</span>
              </li>
              <!-- ENDIF -->
            </ul>
          </div>
          <div class="uk-card uk-card-small uk-card-body uk-background-default uk-border-rounded uk-margin-top">
            <span class="uk-button uk-button-success uk-width-1-1">Продавец [{SERV_OWNER_USERSELECTED_GROUP_TITLE}]</span>
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
<!-- END: MAIN -->