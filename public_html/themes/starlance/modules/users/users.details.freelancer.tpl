<!-- BEGIN: MAIN -->
<div class="uk-section uk-padding-remove-vertical uk-background-primary uk-visible@m">
  <div class="uk-container uk-container-large uk-padding-small uk-link-text">
    <ul class="uk-breadcrumb">
      <li>
        <a href="{PHP.cfg.mainurl}">{PHP.L.Home}</a>
      </li>
      <li>
        <a uk-tooltip="{PHP.cot_groups.4.desc}" href="{PHP.cot_groups.4.alias|cot_url('users', 'group='$this)}">{PHP.cot_groups.4.name}</a>
      </li>
      <li>
        <span class="uk-link-text">
          <!-- IF {USERS_DETAILS_FIRST_SECOND_NAME} -->{USERS_DETAILS_FIRST_SECOND_NAME}
          <!-- ELSE -->
          <!-- IF {USERS_DETAILS_NAME_COMPANY} -->{USERS_DETAILS_NAME_COMPANY}
          <!-- ELSE -->[{USERS_DETAILS_NICKNAME}]
          <!-- ENDIF -->
          <!-- ENDIF -->
        </span>
      </li>
    </ul>
  </div>
</div>
<div class="uk-section uk-padding-remove-vertical uk-background-muted">
  <div class="uk-container uk-container-large uk-margin-top uk-margin-bottom" uk-height-viewport="expand: true">
    <h3 class="uk-heading-bullet uk-margin-bottom">
      <span class="uk-link-text uk-text-uppercase uk-text-bold">
        <!-- IF {USERS_DETAILS_FIRST_SECOND_NAME} -->{USERS_DETAILS_FIRST_SECOND_NAME}
        <!-- ELSE -->
        <!-- IF {USERS_DETAILS_NAME_COMPANY} -->{USERS_DETAILS_NAME_COMPANY}
        <!-- ELSE -->[{USERS_DETAILS_NICKNAME}]
        <!-- ENDIF -->
        <!-- ENDIF -->
      </span>
      <span class="uk-text-muted uk-visible@s">- личная веб-страница на </span>
      <span class="uk-text-uppercase uk-text-bold uk-link-text uk-visible@s">{PHP.cfg.maintitle}</span>
    </h3>
    <div id="tabs">
      <!—noindex—>
        <div class="tabs uk-margin">
          <div class="uk-grid-small uk-child-width-expand@s uk-text-center" uk-grid>
            <div>
              <div v-on:click="activetab='1'" v-bind:class="[ activetab === '1' ? 'active' : '' ]"><a rel="ugc nofollow" href="{USERS_DETAILS_DETAILSLINK}" class="uk-button uk-button-details uk-width-1-1 
								
			<!-- IF !{PHP.tab} -->active uk-active
								
			<!-- ENDIF -->">
                  <span class="uk-margin-small-right" uk-icon="user"></span>
                  <span class="uk-text-middle">{PHP.L.User_account}</span>
                </a>
              </div>
            </div>
            <!-- IF {PHP.cot_modules.services} -->
            <div>
              <noindex>
                <div v-on:click="activetab='2'" v-bind:class="[ activetab === '2' ? 'active' : '' ]">
                  <a rel="ugc nofollow" href="{USERS_DETAILS_SERVICES_URL}" class="uk-button uk-button-details uk-width-1-1 
								
				<!-- IF {PHP.tab} == 'services' -->active uk-active
								
				<!-- ENDIF -->">
                    <span class="uk-margin-small-right" uk-icon="cart"></span>
                    <span class="uk-text-middle">{PHP.L.services_myproducts} </span>
                    <span class="uk-label uk-label-details">{USERS_DETAILS_SERVICES_COUNT}</span>
                  </a>
                </div>
              </noindex>
            </div>
            <!-- ENDIF -->
            <!-- IF {PHP.cot_modules.market} -->
            <div>
              <noindex>
                <div v-on:click="activetab='2'" v-bind:class="[ activetab === '3' ? 'active' : '' ]">
                  <a rel="ugc nofollow" href="{USERS_DETAILS_MARKET_URL}" class="uk-button uk-button-details uk-width-1-1 
								
				<!-- IF {PHP.tab} == 'market' -->active uk-active
								
				<!-- ENDIF -->">
                    <span class="uk-margin-small-right" uk-icon="cart"></span>
                    <span class="uk-text-middle">{PHP.L.Prd_My_Marketplace} </span>
                    <span class="uk-label uk-label-details">{USERS_DETAILS_MARKET_COUNT}</span>
                  </a>
                </div>
              </noindex>
            </div>
            <!-- ENDIF -->
            <!-- IF {PHP.cot_modules.folio} -->
            <!-- IF {USERS_DETAILS_FOLIO_COUNT} > 0 -->
            <div>
              <noindex>
                <li v-on:click="activetab='3'" v-bind:class="[ activetab === '4' ? 'active' : '' ]">
                  <a rel="ugc nofollow" href="{USERS_DETAILS_FOLIO_URL}" class="uk-button uk-button-details uk-width-1-1 
								
				<!-- IF {PHP.tab} == 'portfolio' -->active uk-active
								
				<!-- ENDIF -->">
                    <span class="uk-margin-small-right" uk-icon="image"></span>
                    <span class="uk-text-middle">{PHP.L.Folio_My_Menu_Name} </span>
                    <span class="uk-label uk-label-details">{USERS_DETAILS_FOLIO_COUNT}</span>
                  </a>
                </li>
              </noindex>
            </div>
            <!-- ENDIF -->
            <!-- ENDIF -->
            <div>
              <noindex>
                <li v-on:click="activetab='4'" v-bind:class="[ activetab === '5' ? 'active' : '' ]">
                  <a rel="ugc nofollow" href="{USERS_DETAILS_REVIEWS_URL}" class="uk-button uk-button-details uk-width-1-1 
								
				<!-- IF {PHP.tab} == 'reviews' -->active uk-active
								
				<!-- ENDIF -->">
                    <span class="uk-margin-small-right" uk-icon="commenting"></span>
                    <span class="uk-text-middle">{PHP.L.reviews_reviews} </span>
                    <span class="uk-label uk-label-details">{USERS_DETAILS_REVIEWS_COUNT}</span>
                  </a>
                </li>
              </noindex>
            </div>
          </div>
        </div><!— /noindex—>
          <div class="content">
            <div v-if="activetab ==='1'" class="tabcontent" id="tab_info">
              <div>
                <div class="uk-card">
                  <div class="uk-margin uk-grid-match uk-grid-small" uk-grid>
                    <div class="uk-width-1-3@m">
                      <div class="uk-card uk-card-default uk-card-body">
                        <div class="uk-text-center">
                          <div>
                            <!-- IF {USERS_DETAILS_AVATAR_SRC} --><img class="uk-border-rounded uk-box-shadow-small" width="250" height="250" alt="{USERS_DETAILS_NICKNAME}" src="{USERS_DETAILS_AVATAR_SRC}">
                            <!-- ELSE --><img class="uk-border-rounded uk-box-shadow-small" width="250" height="250" alt="{USERS_DETAILS_NICKNAME}" src="themes/{PHP.theme}/img/avatar.png">
                            <!-- ENDIF -->
                            <!-- IF {PHP.cot_plugins_active.paypro} -->
                            <!-- IF {USERS_DETAILS_ISPRO} -->
                            <div class="uk-position-top-right">
                              <img class="" src="themes/{PHP.theme}/img/icon/star.svg" width="36" height="36" alt="{PHP.L.Pro_account}" uk-tooltip="{PHP.L.Pro_account}" uk-svg="uk-preserve">
                            </div>
                            <!-- ENDIF -->
                            <!-- ENDIF -->
                          </div>
                        </div>
                        <hr class="uk-divider-icon uk-margin-remove">
                        <div class="uk-text-center">
                          <h3 class="uk-text-truncate uk-text-uppercase uk-margin-remove">
                            <span class="uk-text-middle uk-link-text">
                              <!-- IF {USERS_DETAILS_NAME_COMPANY} -->{USERS_DETAILS_NAME_COMPANY}
                              <!-- ELSE -->[{USERS_DETAILS_NICKNAME}]
                              <!-- ENDIF -->
                            </span>
                            <img class="uk-margin-small-left" width="27" height="27" alt="" src="themes/{PHP.theme}/img/iconuserdet/verification.png">
                          </h3>
                        </div>
                      </div>
                    </div><div class="uk-width-2-3@m">
                      <div class="uk-card uk-card-default uk-card-body">
                        <h3 class="uk-margin uk-heading-line uk-text-center uk-link-text">
                          <span>{PHP.L.User_Signature_Supplier}</span>
                        </h3>
                        <div class="uk-dropcap uk-text-light uk-text-justify"> {USERS_DETAILS_TEXT|strip_tags($this)|mb_substr($this, 0, 900, 'UTF-8')} </div>
                        <hr class="uk-divider-icon uk-margin-remove">
                        <!-- IF {USERS_DETAILS_CATS} --> {USERS_DETAILS_CATS|cot_usercategories_tree($this, '', 'listlev1')}
                        <!-- ENDIF -->
                        <hr class="uk-divider-icon">
                        <div class="uk-margin" uk-grid>
                          <div class="uk-width-1-2@s">
                            <div class=" uk-animation-slide-left">
                              <!-- IF {PHP.cot_modules.ds} -->
                              <!-- IF {PHP.usr.id} > 0 AND {PHP.usr.id} != {USERS_DETAILS_ID} -->
                              <!-- IF {USERS_DETAILS_DS_CHAT_ID} > 0 -->
                              <a class="uk-button uk-button-linear uk-animation-toggle uk-width-medium-1-1" tabindex="0" href="{USERS_DETAILS_DS_CHAT_ID|cot_url('ds', 'm=dialog&chat='$this)}">
                                <span uk-icon="comments" class="uk-margin-small-right uk-animation-shake"></span>
                                <span class="uk-text-middle">Открыть чат</span>
                              </a>
                              <!-- ELSE -->
                              <a class="uk-button uk-button-primary uk-animation-toggle uk-width-medium-1-1" tabindex="0" href="{USERS_DETAILS_DS_SEND_URL}">
                                <span uk-icon="mail" class="uk-margin-small-right uk-animation-shake"></span>
                                <span class="uk-text-middle">Написать сообщение</span>
                              </a>
                              <!-- ENDIF -->
                              <!-- ENDIF -->
                              <!-- IF {PHP.usr.id} == 0 -->
                              <a rel="ugc nofollow" class="uk-button uk-button-default uk-width-medium-1-1" href="#AuthModal" uk-toggle>
                                <i class="uk-icon-comments-o uk-icon-small uk-margin-right"></i>Войти и написать </a>
                              <!-- ENDIF -->
                              <!-- ENDIF -->
                            </div>
                          </div>
                          <div class="uk-width-1-2@s">
                            <div class=" uk-animation-slide-right">
                              <!-- IF {PHP.cot_plugins_active.sbr} -->
                              <!-- IF {PHP.usr.id} > 0  -->
                              <!-- IF {PHP.usr.id} == {PHP.urr.user_id} -->
                              <a class="uk-width-medium-1-1 uk-button uk-button-success" href="{PHP|cot_url('sbr')}">
                                <img class="uk-margin-small-right" width="27" height="27" alt="" src="{PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/icon/022-shield-1.svg" uk-svg="uk-preserve">
                                <span class="uk-text-middle uk-text-uppercase">{PHP.L.sbr_mydeals}</span>
                              </a>
                              <!-- ELSE -->
                              <a class="uk-width-medium-1-1 uk-button uk-button-linear" href="{USERS_DETAILS_ID|cot_url('sbr', 'm=add&uid='$this)}">
                                <img class="uk-margin-small-right" width="27" height="27" alt="" src="{PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/icon/022-shield-1.svg" uk-svg="uk-preserve">
                                <span class="uk-text-middle uk-text-uppercase" uk-tooltip="Предложить Защищенную Сделку с конкретным бюджетом и отправить исполнителю на согласование">{PHP.L.sbr_createlink}</span>
                              </a>
                              <!-- ENDIF -->
                              <!-- ENDIF -->
                              <!-- IF {PHP.usr.id} == 0 -->
                              <a rel="ugc nofollow" class="uk-button uk-button-primary uk-width-medium-1-1" href="#AuthModal" uk-toggle>{PHP.L.sbr_createlink}</a>
                              <!-- ENDIF -->
                              <!-- ENDIF -->
                            </div>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="uk-position-top-right uk-position-z-index">
                    <!-- IF {PHP.usr.id} == {PHP.urr.user_id} OR {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
                    <a class="uk-icon-button uk-button-danger uk-icon" uk-icon="icon: cog; ratio: 1.5"></a>
                    <!-- ENDIF -->
                    <div uk-dropdown="mode: click; animation: uk-animation-slide-left;">
                      <ul class="uk-nav uk-dropdown-nav uk-list uk-list-divider">
                        <li class="uk-nav-header">Меню профиля пользователя</li>
                        <!-- IF {PHP.usr.id} == {PHP.urr.user_id} -->
                        <li>
                          <a href="{PHP|cot_url('users', 'm=profile')}">
                            <span class="uk-text-danger" uk-icon="icon: file-edit; ratio: 1.2"></span>
                            <span class="uk-text-bold uk-link-text uk-margin-small-left uk-margin-small-right uk-text-middle">Настройка данных профиля</span>
                          </a>
                        </li>
                        <!-- ENDIF -->
                        <!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
                        <li>
                          <a href="{USERS_DETAILS_ID|cot_url('users','m=edit&id='$this)}">
                            <span class="uk-text-danger" uk-icon="icon: file-edit; ratio: 1.2"></span>
                            <span class="uk-text-bold uk-link-text uk-margin-small-left uk-text-middle">Править как Админ</span>
                          </a>
                        </li>
                        <!-- {PHP.cot_plugins_active.loginAsUser} -->
                        <!-- IF {PHP.usr.isadmin} -->
                        <li>
                          <a href="{USERS_DETAILS_ID|cot_url('loginAsUser', 'uid=$this')}">
                            <span class="uk-text-danger" uk-icon="icon: sign-in; ratio: 1.2"></span>
                            <span class="uk-text-bold uk-link-text uk-margin-small-left uk-text-middle">Войти как «{USERS_DETAILS_NICKNAME}»</span>
                          </a>
                        </li>
                        <!-- ENDIF -->
                        <!-- ENDIF -->
                      </ul>
                    </div>
                  </div>
                  <div class="uk-grid-small uk-child-width-1-2@m" uk-grid>
                    <div class="uk-grid-item-match ">
                      <div class="uk-card uk-card-default">
                        <h3 class="uk-margin-top uk-heading-line uk-text-center uk-text-muted">
                          <span>Общая информация</span>
                        </h3>
                        <div class="uk-margin uk-margin-auto uk-margin-auto-left@m uk-card-body">
                          <ul class="uk-list uk-list-divider">
                            <!-- IF {USERS_DETAILS_BIRTHDATE} -->
                            <li>
                              <img class="uk-margin-small-right" width="27" height="27" alt="" src="themes/{PHP.theme}/img/iconuserdet/company-date.svg" uk-svg="uk-preserve">
                              <span class="uk-text-middle">{PHP.L.User_birthday_Supplier}</span>
                              <span class="uk-text-middle uk-link-text">{USERS_DETAILS_BIRTHDATE_STAMP|cot_build_timeago()}</span>
                            </li>
                            <!-- ELSE -->
                            <li>
                              <img class="uk-margin-small-right" width="27" height="27" alt="" src="themes/{PHP.theme}/img/iconuserdet/company-date.svg" uk-svg="uk-preserve">
                              <span class="uk-text-middle uk-text-muted"> {PHP.L.no_data_by_user} </span>
                            </li>
                            <!-- ENDIF -->
                            <!-- IF {USERS_DETAILS_FIRST_SECOND_NAME} -->
                            <li>
                              <img class="uk-margin-small-right" width="27" height="27" alt="" src="themes/{PHP.theme}/img/iconuserdet/otvet-person.svg" uk-svg="uk-preserve">
                              <span class="uk-text-middle uk-margin-small-right">{USERS_DETAILS_FIRST_SECOND_NAME_TITLE}</span>
                              <span class="uk-text-middle uk-link-text">{USERS_DETAILS_FIRST_SECOND_NAME}</span>
                            </li>
                            <!-- ELSE -->
                            <li>
                              <img class="uk-margin-small-right" width="27" height="27" alt="" src="themes/{PHP.theme}/img/iconuserdet/otvet-person.svg" uk-svg="uk-preserve">
                              <span class="uk-text-middle uk-link-text">{USERS_DETAILS_FIRST_SECOND_NAME_TITLE}</span>
                              <span class="uk-text-middle uk-text-muted"> {PHP.L.no_data_by_user} </span>
                            </li>
                            <!-- ENDIF -->
                            <!-- IF {USERS_DETAILS_LASTLOG} -->
                            <li>
                              <img class="uk-margin-small-right" width="27" height="27" alt="" src="themes/{PHP.theme}/img/iconuserdet/lastloged.svg" uk-svg="uk-preserve">
                              <span class="uk-text-middle">{PHP.L.Lastlogged}:</span>
                              <span class="uk-text-middle uk-link-text">[{USERS_DETAILS_LASTLOG}] </span>
                              <span class="uk-text-middle uk-text-success">{USERS_DETAILS_LASTLOG_STAMP|cot_build_timeago()}</span>
                            </li>
                            <!-- ELSE -->
                            <li>
                              <img class="uk-margin-small-right" width="27" height="27" alt="" src="themes/{PHP.theme}/img/iconuserdet/lastloged.svg" uk-svg="uk-preserve">
                              <span class="uk-text-middle">{PHP.L.Lastlogged}:</span>
                              <span class="uk-text-middle uk-text-warning"> {PHP.L.user_acc_not_confirmed} </span>
                            </li>
                            <!-- ENDIF -->
                            <!-- IF {USERS_DETAILS_REGDATE} -->
                            <li>
                              <img class="uk-margin-small-right" width="27" height="27" alt="" src="themes/{PHP.theme}/img/iconuserdet/lastloged.svg" uk-svg="uk-preserve">
                              <span class="uk-text-middle">{PHP.L.Registered}:</span>
                              <span class="uk-text-middle uk-link-text">[{USERS_DETAILS_REGDATE}] </span>
                              <span class="uk-text-middle uk-text-success">{USERS_DETAILS_REGDATE_STAMP|cot_build_timeago()}</span>
                            </li>
                            <!-- ELSE -->
                            <li>
                              <img class="uk-margin-small-right" width="27" height="27" alt="" src="themes/{PHP.theme}/img/iconuserdet/lastloged.svg" uk-svg="uk-preserve">
                              <span class="uk-text-middle">{PHP.L.Registered}:</span>
                              <span class="uk-text-middle uk-text-danger"> {PHP.L.user_acc_not_confirmed} </span>
                            </li>
                            <!-- ENDIF -->
                            <!-- IF {USERS_DETAILS_PHONE_CONTACT} -->
                            <li>
                              <img class="uk-margin-small-right" width="27" height="27" alt="" src="themes/{PHP.theme}/img/iconuserdet/smartphone.svg" uk-svg="uk-preserve">
                              <span class="uk-text-middle uk-margin-small-right">{USERS_DETAILS_PHONE_CONTACT_TITLE}</span>
                              <span class="uk-text-middle uk-link-text">{USERS_DETAILS_PHONE_CONTACT}</span>
                            </li>
                            <!-- ELSE -->
                            <li>
                              <img class="uk-margin-small-right" width="27" height="27" alt="" src="themes/{PHP.theme}/img/iconuserdet/smartphone.svg" uk-svg="uk-preserve">
                              <span class="uk-text-middle uk-link-text">{USERS_DETAILS_PHONE_CONTACT_TITLE}</span>
                              <span class="uk-text-middle uk-text-muted"> {PHP.L.no_data_by_user} </span>
                            </li>
                            <!-- ENDIF -->
                            <!-- IF {USERS_DETAILS_ADRESS_LOCAL} -->
                            <li>
                              <img class="uk-margin-small-right" width="27" height="27" alt="" src="themes/{PHP.theme}/img/iconuserdet/map.svg" uk-svg="uk-preserve">
                              <span class="uk-text-middle uk-margin-small-right">{USERS_DETAILS_ADRESS_LOCAL_TITLE}</span>
                              <span class="uk-text-middle uk-link-text">{USERS_DETAILS_ADRESS_LOCAL}</span>
                            </li>
                            <!-- ELSE -->
                            <li>
                              <img class="uk-margin-small-right" width="27" height="27" alt="" src="themes/{PHP.theme}/img/iconuserdet/map.svg" uk-svg="uk-preserve">
                              <span class="uk-text-middle uk-link-text">{USERS_DETAILS_ADRESS_LOCAL_TITLE}</span>
                              <span class="uk-text-middle uk-text-muted"> {PHP.L.no_data_by_user} </span>
                            </li>
                            <!-- ENDIF -->
                            <!-- IF {USERS_DETAILS_TIME_WORKING} -->
                            <li>
                              <img class="uk-margin-small-right" width="27" height="27" alt="" src="themes/{PHP.theme}/img/iconuserdet/clock.svg" uk-svg="uk-preserve">
                              <span class="uk-text-middle uk-margin-small-right">{USERS_DETAILS_TIME_WORKING_TITLE}</span>
                              <span class="uk-text-middle uk-link-text">{USERS_DETAILS_TIME_WORKING}</span>
                            </li>
                            <!-- ELSE -->
                            <li>
                              <img class="uk-margin-small-right" width="27" height="27" alt="" src="themes/{PHP.theme}/img/iconuserdet/clock.svg" uk-svg="uk-preserve">
                              <span class="uk-text-middle uk-link-text">{USERS_DETAILS_TIME_WORKING_TITLE}</span>
                              <span class="uk-text-middle uk-text-muted"> {PHP.L.no_data_by_user} </span>
                            </li>
                            <!-- ENDIF -->
                            <!-- IF {USERS_DETAILS_DETAILCOUNTS} -->
                            <li>
                              <span class="uk-text-warning uk-margin-small-right" uk-icon="icon: happy; ratio: 1.5"></span>
                              <span class="uk-text-middle uk-margin-small-right">{USERS_DETAILS_DETAILCOUNTS_TITLE}</span>
                              <span class="uk-text-middle uk-link-text">{USERS_DETAILS_DETAILCOUNTS}</span>
                            </li>
                            <!-- ENDIF -->
                          </ul>
                        </div>
                      </div>
                    </div>
                    <div class="uk-grid-item-match ">
                      <div class="uk-card uk-card-default">
                        <h3 class="uk-margin-top uk-heading-line uk-text-center uk-text-muted">
                          <span>Мы в интернете</span>
                        </h3>
                        <div class="uk-margin uk-margin-auto uk-margin-auto-left@m uk-card-body">
                          <ul class="uk-list uk-list-divider">
                            <!-- IF {USERS_DETAILS_TELEGRAM} -->
                            <li>
                              <img class="uk-margin-small-right" width="27" height="27" alt="" src="themes/{PHP.theme}/img/iconsoclogo/telegram.svg" uk-svg="uk-preserve" uk-tooltip="TELEGRAM">
                              <a rel="ugc nofollow" href="tg://resolve?domain={USERS_DETAILS_TELEGRAM}">
                                <span class="uk-text-middle uk-text-primary">Написать в Telegram</span>
                              </a>
                            </li>
                            <!-- ELSE -->
                            <li>
                              <img class="uk-margin-small-right" width="27" height="27" alt="" src="themes/{PHP.theme}/img/iconsoclogo/telegram.svg" uk-svg="uk-preserve" uk-tooltip="TELEGRAM">
                              <span class="uk-text-middle uk-text-muted"> {PHP.L.no_data_by_user} </span>
                            </li>
                            <!-- ENDIF -->
                            <!-- IF {USERS_DETAILS_FACEBOOK_MESSENGER} -->
                            <li>
                              <img class="uk-margin-small-right" width="27" height="27" alt="" src="themes/{PHP.theme}/img/iconsoclogo/facebook.svg" uk-svg="uk-preserve" uk-tooltip="FACEBOOK">
                              <a rel="ugc nofollow" href="{USERS_DETAILS_FACEBOOK_MESSENGER}" target="_blank">
                                <span class="uk-text-middle uk-text-primary">открыть в FACEBOOK</span>
                              </a>
                            </li>
                            <!-- ELSE -->
                            <li>
                              <img class="uk-margin-small-right" width="27" height="27" alt="" src="themes/{PHP.theme}/img/iconsoclogo/facebook.svg" uk-svg="uk-preserve" uk-tooltip="FACEBOOK">
                              <span class="uk-text-middle uk-text-muted"> {PHP.L.no_data_by_user} </span>
                            </li>
                            <!-- ENDIF -->
                            <!-- IF {USERS_DETAILS_WHATS_APP} -->
                            <li>
                              <img class="uk-margin-small-right" width="27" height="27" alt="" src="themes/{PHP.theme}/img/iconsoclogo/whatsapp.svg" uk-svg="uk-preserve" uk-tooltip="WhatsApp">
                              <a rel="ugc nofollow" href="https://wa.me/{USERS_DETAILS_WHATS_APP}?text=Здравствуйте, пишу Вам с сайта {PHP.cfg.mainurl} и хотел бы кое-что обсудить. Вопрос оставлю ниже, пожалуйста свяжитесь со мной, когда будет Вам удобно">
                                <span class="uk-text-middle uk-text-primary">Написать в WhatsApp:</span>
                              </a>
                            </li>
                            <!-- ELSE -->
                            <li>
                              <img class="uk-margin-small-right" width="27" height="27" alt="" src="themes/{PHP.theme}/img/iconsoclogo/whatsapp.svg" uk-svg="uk-preserve" uk-tooltip="WhatsApp">
                              <span class="uk-text-middle uk-text-muted"> {PHP.L.no_data_by_user} </span>
                            </li>
                            <!-- ENDIF -->
                            <!-- IF {USERS_DETAILS_INSTAGRAM} -->
                            <li>
                              <img class="uk-margin-small-right" width="27" height="27" alt="" src="themes/{PHP.theme}/img/iconsoclogo/instagram.svg" uk-svg="uk-preserve" uk-tooltip="INSTAGRAM">
                              <a rel="ugc nofollow" href="{USERS_DETAILS_INSTAGRAM}" target="_blank" class="" uk-tooltip="открыть нашу страницу в новой вкладке">
                                <span class="uk-text-middle uk-text-primary">открыть в Instagram</span>
                              </a>
                            </li>
                            <!-- ELSE -->
                            <li>
                              <img class="uk-margin-small-right" width="27" height="27" alt="" src="themes/{PHP.theme}/img/iconsoclogo/instagram.svg" uk-svg="uk-preserve" uk-tooltip="INSTAGRAM">
                              <span class="uk-text-middle uk-text-muted"> {PHP.L.no_data_by_user} </span>
                            </li>
                            <!-- ENDIF -->
                            <!-- IF {USERS_DETAILS_FACEBOOK} -->
                            <li>
                              <img class="uk-margin-small-right" width="27" height="27" alt="" src="themes/{PHP.theme}/img/iconsoclogo/facebook.svg" uk-svg="uk-preserve" uk-tooltip="FACEBOOK">
                              <a rel="ugc nofollow" href="{USERS_DETAILS_FACEBOOK}" target="_blank" class="" uk-tooltip="открыть нашу страницу в новой вкладке">
                                <span class="uk-text-middle uk-text-primary">открыть в FACEBOOK</span>
                              </a>
                            </li>
                            <!-- ELSE -->
                            <li>
                              <img class="uk-margin-small-right" width="27" height="27" alt="" src="themes/{PHP.theme}/img/iconsoclogo/facebook.svg" uk-svg="uk-preserve" uk-tooltip="FACEBOOK">
                              <span class="uk-text-middle uk-text-muted"> {PHP.L.no_data_by_user} </span>
                            </li>
                            <!-- ENDIF -->
                            <!-- IF {USERS_DETAILS_YOUTUBE_LINK} -->
                            <li>
                              <img class="uk-margin-small-right" width="27" height="27" alt="" src="themes/{PHP.theme}/img/iconsoclogo/YouTube_soc.svg" uk-svg="uk-preserve" uk-tooltip="YouTube">
                              <a rel="ugc nofollow" href="{USERS_DETAILS_YOUTUBE_LINK}" target="_blank" class="" uk-tooltip="открыть нашу страницу в новой вкладке">
                                <span class="uk-text-middle uk-text-primary">открыть нас на YouTube</span>
                              </a>
                            </li>
                            <!-- ELSE -->
                            <li>
                              <img class="uk-margin-small-right" width="27" height="27" alt="" src="themes/{PHP.theme}/img/iconsoclogo/YouTube_soc.svg" uk-svg="uk-preserve" uk-tooltip="YouTube">
                              <span class="uk-text-middle uk-text-muted"> {PHP.L.no_data_by_user} </span>
                            </li>
                            <!-- ENDIF -->
                            <!-- IF {USERS_DETAILS_WWW_SITE} -->
                            <li>
                              <img class="uk-margin-small-right" width="27" height="27" alt="" src="themes/{PHP.theme}/img/iconuserdet/world-wide-web.svg" uk-svg="uk-preserve" uk-tooltip="{USERS_DETAILS_WWW_SITE_TITLE}">
                              <span class="uk-text-middle uk-text-uppercase uk-text-bold uk-link-text" uk-tooltip="{USERS_DETAILS_WWW_SITE_TITLE}">{USERS_DETAILS_WWW_SITE}</span>
                            </li>
                            <!-- ENDIF -->
                            <!-- IF !{USERS_DETAILS_WWW_SITE} -->
                            <li>
                              <img class="uk-margin-small-right" width="27" height="27" alt="" src="themes/{PHP.theme}/img/iconuserdet/world-wide-web.svg" uk-svg="uk-preserve" uk-tooltip="{USERS_DETAILS_WWW_SITE_TITLE}">
                              <span class="uk-text-middle uk-text-muted"> {PHP.L.no_data_by_user} </span>
                            </li>
                            <!-- ENDIF -->
                          </ul>
                        </div>
                      </div>
                    </div>
                  </div>
                  <!-- IF {USERS_DETAILS_VIDEO_COMPANY_MP4} -->
                  <div class="uk-card uk-card-default uk-box-shadow-large uk-border-rounded uk-margin-top uk-padding-small uk-padding-remove-horizontal">
                    <h3 class="uk-heading-line uk-text-center uk-link-text">
                      <span>{USERS_DETAILS_VIDEO_COMPANY_MP4_TITLE}</span>
                    </h3>
                    <div class="uk-width-1-1@s uk-width-1-3@m uk-width-1-2@l uk-align-center">
                      <video controls crossorigin playsinline poster="themes/{PHP.theme}/img/starlance_bg_02.jpg">
                        <source src="datas/videousers_about/{USERS_DETAILS_VIDEO_COMPANY_MP4}" type="video/mp4" size="">
                      </video>
                    </div>
                  </div>
                  <!-- ENDIF -->
                </div>
              </div>
            </div>
            <!-- IF {PHP.cot_modules.services} -->
            <!-- IF {PHP.tab} == 'services' -->
            <div v-if="activetab ==='2'" class="tabcontent" id="tab_services">
              <div> {SERVICES} </div>
            </div>
            <!-- ENDIF -->
            <!-- ENDIF -->
            <!-- IF {PHP.cot_modules.market} -->
            <!-- IF {PHP.tab} == 'market' -->
            <div v-if="activetab ==='3'" class="tabcontent" id="tab_market">
              <div> {MARKET} </div>
            </div>
            <!-- ENDIF -->
            <!-- ENDIF -->
            <!-- IF {PHP.cot_modules.folio} -->
            <!-- IF {PHP.tab} == 'portfolio' -->
            <div v-if="activetab ==='4'" class="tabcontent" id="tab_portfolio">
              <div> {PORTFOLIO} </div>
            </div>
            <!-- ENDIF -->
            <!-- ENDIF -->
            <!-- IF {PHP.tab} == 'reviews' -->
            <div v-if="activetab ==='5'" class="tabcontent" id="tab_reviews">
              <div> {REVIEWS}
                <!-- IF {USERS_DETAILS_REVIEWS_COUNT} == 0 -->
                <div uk-height-viewport="expand: true">
                  <div class="uk-alert-warning uk-border-rounded-mdm" uk-alert>
                    <span>Отзывов нет</span>
                  </div>
                </div>
                <!-- ENDIF -->
              </div>
            </div>
            <script>
              document.title = '{USERS_DETAILS_NICKNAME} {PHP.L.reviews_reviews}';
            </script>
            <!-- ENDIF -->
          </div>
    </div>
    <!-- partial -->
  <script>
	  new Vue({
		el: '#tabs',
		data: { activetab: '<!-- IF {PHP.tab} == 'services' -->2<!-- ENDIF --><!-- IF {PHP.tab} == 'market' -->3<!-- ENDIF --><!-- IF {PHP.tab} == 'portfolio' -->4<!-- ENDIF --><!-- IF {PHP.tab} == 'reviews' -->5<!-- ENDIF --><!-- IF !{PHP.tab} -->1<!-- ENDIF -->' },
	});
  </script>
  </div>
</div>
<script>
  // Change the second argument to your options:
  // https://github.com/sampotts/plyr/#options
  const player = new Plyr('video', {
    captions: {
      active: true
    }
  });
  // Expose player so it can be used from the console
  window.player = player;
</script>
<!-- END: MAIN -->
