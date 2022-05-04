<!-- BEGIN: MAIN -->
<div class="uk-container uk-container-large">
  <h3 class="uk-heading-bullet">{ACCOUNT_TITLE}</h3>
  <div class="uk-margin-top"></div>
</div>
<div class="uk-container uk-container-large">
  <div class="uk-flex" uk-grid>
    <div class="uk-width-2-3@m">
      <a href="{PHP|cot_url('market')}" class="uk-margin-small-bottom uk-background-center-center uk-background-muted uk-height-small uk-panel uk-padding-small uk-flex uk-flex-center uk-flex-middle" style="background-image: url(themes/starlance/img/starlance_bg_01.jpg);">
        <h1>
          <span class="uk-light uk-text-center">Рекламная надпись на баннере</span>
        </h1>
      </a>
      <div class="uk-grid-small uk-child-width-1-2@s" uk-grid>
        <div class="uk-flex-first">
          <h3 class="uk-heading-bullet uk-float-left">{PHP.L.News}</h3>
        </div>
        <div class="uk-flex-last">
          <!-- IF {PHP.usr.auth.page.news} == 255 -->
          <div class="uk-float-right">
            <a href="{PHP|cot_url('page','m=add&c=news')}" class="uk-button uk-button-linear">Добавить новость</a>
          </div>
          <!-- ENDIF -->
        </div>
      </div>
      <div class="uk-margin-top"> {PHP|cot_page_enum('news',5,'account','page_date DESC','',true,true,false,'','',3600)} </div>
      <hr class="uk-divider-icon">
      <div class="uk-margin-top">
        <!-- IF {PHP.cot_modules.projects} --> {PHP|cot_getprojectslist('account', '4')}
        <!-- ENDIF -->
      </div>
      <!-- IF {PHP.cot_modules.services} -->
      <hr class="uk-divider-icon">
      <div class="uk-margin-top">
        <a href="{PHP|cot_url('services')}" class="uk-margin-small-bottom uk-background-center-center uk-background-muted uk-height-small uk-panel uk-padding-small uk-flex uk-flex-center uk-flex-middle" style="background-image: url(themes/starlance/img/starlance_bg_02.jpg);">
          <h1>
            <span class="uk-light uk-text-center">Рекламная надпись на баннере</span>
          </h1>
        </a>
        <hr class="uk-divider-icon"> {PHP|cot_getserviceslist('account', '4')}
      </div>
      <!-- ENDIF -->
	  <!-- IF {PHP.cot_modules.market} -->
      <hr class="uk-divider-icon">
      <div class="uk-margin-top">
        <a href="{PHP|cot_url('market')}" class="uk-margin-small-bottom uk-background-center-center uk-background-muted uk-height-small uk-panel uk-padding-small uk-flex uk-flex-center uk-flex-middle" style="background-image: url(themes/starlance/img/starlance_bg_02.jpg);">
          <h1>
            <span class="uk-light uk-text-center">Рекламная надпись на баннере</span>
          </h1>
        </a>
        <hr class="uk-divider-icon">
         {PHP|cot_getmarketlist('account', '4')}
      </div>
	  <!-- ENDIF -->
    </div>
    <div class="uk-width-1-3@m uk-flex-first uk-flex-last@m">
      <div class="uk-card uk-card-default">
        <div class="uk-card-body uk-card-small">
          <div class="uk-position-top-right">
            <a uk-tooltip="Руководство пользователя" class="uk-icon-button uk-button-primary" href="{PHP|cot_url('page', 'c=user-guide')}" uk-icon="icon:  question; ratio: 1.2" title="Руководство пользователя"></a>
          </div>
          <div uk-grid>
            <div class="uk-width-1-4">
              <!-- IF {ACCOUNT_USER_AVATAR_SRC} -->
              <img class="uk-border-rounded" width="50" height="50" alt="{ACCOUNT_USER_NICKNAME}" src="{ACCOUNT_USER_AVATAR_SRC}">
              <!-- ELSE -->
              <img class="uk-border-rounded" width="50" height="50" alt="{ACCOUNT_USER_NICKNAME}" src="themes/{PHP.theme}/img/avatar.png">
              <!-- ENDIF -->
            </div>
            <div class="uk-width-3-4">
              <p>
                <span class="uk-text-middle uk-text-muted">Привет</span>
                <span class="uk-text-middle uk-text-bold uk-link-text uk-text-uppercase">
                  <!-- IF {PHP.usr.profile.user_first_second_name} --> {PHP.usr.profile.user_first_second_name}
                  <!-- ELSE -->{ACCOUNT_USER_NICKNAME}
                  <!-- ENDIF -->
                </span>
              </p>
            </div>
          </div>
          <div class="uk-margin-top">
            <ul class="uk-list uk-list-striped">
              <li>
                <span class="uk-text-uppercase uk-text-middle" uk-tooltip="{PHP.L.User_account}">{PHP.L.User_account}:</span>
                <!-- IF {PHP.cot_plugins_active.paypro} -->
                <!-- IF {ACCOUNT_USER_ISPRO} -->
                <img class="uk-margin-small-left uk-margin-small-right" src="themes/{PHP.theme}/img/icon/star.svg" width="27" height="27" uk-svg="uk-preserve">
                <span class="uk-text-middle uk-text-bold uk-text-warning">{PHP.L.Pro_account}</span>
                <span class="uk-text-middle uk-text-bold uk-text-secondary"> До: {ACCOUNT_USER_PROEXPIRE|cot_date('d.m.Y', $this)}</span>
                <!-- ELSE -->
                <a class="uk-color-f5" href="{PHP|cot_url('plug', 'e=paypro')}">
                  <span class="uk-text-middle uk-text-bold uk-text-muted">{PHP.L.Base_account}</span>
                </a>
                <!-- ENDIF -->
                <!-- ENDIF -->
              </li>
              <!-- IF {PHP.cfg.payments.balance_enabled} -->
              <li>
                <a class="uk-link-text" href="{ACCOUNT_BALANCE_URL}">
                  <span>{PHP.L.User_balance}: </span>
                  <span class="uk-text-bold uk-text-primary">{PHP.usr.id|cot_payments_getuserbalance($this)} {PHP.cfg.payments.valuta}</span>
                </a>
              </li>
              <!-- ENDIF -->
              <li>
                <img class="uk-margin-small-left uk-margin-small-right" src="modules/account/images/profile-set.svg" width="27" height="27" uk-svg="uk-preserve">
                <a class="uk-link-text uk-text-middle uk-text-uppercase" href="{PHP.usr.name|cot_url('users', 'm=profile')}">{PHP.L.Profile_Account_Set}</a>
              </li>
              <li>
                <a class="uk-link-text" href="{PHP.usr.name|cot_url('users', 'm=details&u='$this)}">{PHP.L.Own_Page}</a>
              </li>
              <!-- IF {PHP.out.notices} -->
              <li>{PHP.out.notices}</li>
              <!-- ENDIF -->
			  <!-- IF {PHP.cot_modules.ds} -->
              <li id="updatecountmsg">
                <a class="uk-link-text uk-text-uppercase" href="{PHP|cot_url('ds')}" title="{PHP.L.Private_messages}">{PHP.L.Private_Messages}
                  <!-- IF {PHP.usr.messages} > 0 -->
                  <span class="uk-margin-small-left uk-label uk-label-success">{PHP.usr.messages}</span>
                  <!-- ELSE -->
                  <span class="uk-label uk-margin-small-left">0</span>
                  <!-- ENDIF -->
                </a>
              </li>
			  <!-- ENDIF -->
              <li>
                <a class="uk-button uk-button-danger uk-width-1-1" href="{PHP.out.loginout_url}" uk-tooltip="Выйти из аккаунта">
                  <span class="uk-margin-small-right" uk-icon="icon: sign-out"></span>
                  <span class="uk-text-middle uk-text-bold">Выйти из аккаунта</span>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
      <div class="uk-card uk-card-small uk-card-default uk-margin-top">
        <div class="uk-card-header">
          <h3 class="uk-margin-remove-bottom uk-text-uppercase">Мой бизнес</h3>
        </div>
        <div class="uk-card-body">
          <!-- IF {PHP.cot_modules.market} -->
          <div>
            <h4>{PHP.L.market_title}</h4>
            <ul class="uk-list uk-list-square">
              <li>
                <a class="uk-link-text" href="{PHP.usr.id|cot_url('users', 'm=details&id=$this&tab=market')}" data-offset="50">{PHP.L.market_myproducts}</a>
              </li>
              <li>
                <a class="uk-link-text" href="{PHP|cot_url('market', 'm=add')}">{PHP.L.market_add_product}</a>
              </li>
            </ul>
          </div>
          <!-- ENDIF -->
          <!-- IF {PHP.cot_modules.services} -->
		  <hr class="uk-divider-icon uk-margin-small">
          <div>
            <h4>{PHP.L.services_title}</h4>
            <ul class="uk-list uk-list-square">
              <li>
                <a class="uk-link-text" href="{PHP.usr.id|cot_url('users', 'm=details&id=$this&tab=services')}" data-offset="50">{PHP.L.services_myproducts}</a>
              </li>
              <li>
                <a class="uk-link-text" href="{PHP|cot_url('services', 'm=add')}">{PHP.L.services_add_product}</a>
              </li>
            </ul>
          </div>
          <!-- ENDIF -->
          <!-- IF {PHP.cot_modules.projects} -->
          <hr class="uk-divider-icon uk-margin-small">
          <div>
            <h4 class="uk-text-primary uk-text-uppercase"><img class="uk-margin-small-right" width="27" height="27" alt="" uk-img="data-src: {PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/icon/note.svg" uk-svg="uk-preserve"><span class="uk-text-middle">{PHP.L.projects}</span></h4>
            <ul class="uk-list uk-list-square uk-list-divider">
              <li>
                <a class="uk-link-text uk-text-middle uk-text-light" href="{PHP.usr.id|cot_url('users', 'm=details&id=$this&tab=projects')}" data-offset="50">{PHP.L.projects_myprojects}</a><span class="uk-align-right uk-text-primary" uk-icon="icon: info;" uk-tooltip="{PHP.L.projects_myprojects_tooltip}"></span>
              </li>
              <li>
                <a class="uk-link-text uk-text-light" href="{PHP|cot_url('projects', 'm=add')}">{PHP.L.projects_add_to_catalog}</a><span class="uk-align-right  uk-flex-middle uk-text-primary" uk-icon="icon: info;" uk-tooltip="{PHP.L.projects_add_tooltip}"></span>
              </li>
            </ul>
          </div>
          <!-- ENDIF -->
        </div>
      </div>
    </div>
  </div>
</div>
<!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
<!-- ENDIF -->
<!-- END: MAIN -->