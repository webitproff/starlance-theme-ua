<!-- BEGIN: MAIN -->
<div class="uk-section uk-padding-remove-vertical uk-background-primary">
  <div class="uk-container uk-padding-small">
    <div class="uk-grid-small" uk-grid>
      <div class="uk-width-1-2@m">
        <form action="{SEARCH_ACTION_URL}" method="get" class="uk-form-stacked">
          <input type="hidden" name="e" value="services" />
          <input type="hidden" name="l" value="{PHP.lang}" />
          <div uk-grid>
            <div class="uk-width-expand">
              <div class="uk-inline">
                <input class="uk-input uk-width-1-1 uk-border-rounded-mdm" name="sq" value="" placeholder="{PHP.L.Search}">
                <a href="#" class="uk-form-icon uk-form-icon-flip" uk-icon="icon: settings" uk-toggle="target: #filter"></a>
              </div>
            </div>
            <div class="uk-width-auto uk-flex uk-flex-middle uk-hidden@m">
              <a uk-tooltip="{PHP.L.services_catalog}" href="#listservicesstructure" uk-toggle class="uk-icon-button uk-button-default" uk-icon="thumbnails"></a>
              <!-- IF {PHP.usr.auth_write} -->
              <a uk-tooltip="{PHP.L.services_add_product}" href="{PHP|cot_url('services', 'm=add')}" class="uk-margin-small-left uk-icon-button uk-button-warning" uk-icon="plus-circle"></a>
              <!-- ENDIF -->
            </div>
          </div>
          <div class="uk-animation-slide-bottom" id="filter" hidden>
            <div class="uk-grid-small uk-child-width-1-1@s uk-child-width-1-2@m uk-margin-top" uk-grid>
              <div>
                <label class="uk-form-label">{PHP.L.Category}:</label>
                <div class="uk-form-controls">{SEARCH_CAT}</div>
              </div>
              <div>
                <label class="uk-form-label">{PHP.L.Order}:</label>
                <div class="uk-form-controls">{SEARCH_SORTER}</div>
              </div>
            </div>
            <!-- IF {PHP.cot_plugins_active.locationselector} -->
            <div class="uk-position-relative">
              <div class="uk-inline uk-width-1-1"> {SEARCH_LOCATION} </div>
            </div>
            <!-- ENDIF -->
            <div class="uk-margin">
              <input type="submit" name="search" class="uk-button uk-button-default" value="{PHP.L.Search}" />
            </div>
          </div>
        </form>
      </div>
      <div class="uk-width-1-2@m uk-flex uk-flex-middle uk-visible@m">
        <a uk-tooltip="Выбрать отдел маркетплейса и перейти" href="#listservicesstructure" uk-toggle class="uk-button uk-button-default">
          <span uk-icon="thumbnails" class="uk-margin-small-right uk-icon"></span>
          <span class=" uk-text-truncate uk-text-middle">
            <!-- IF {PHP.c} -->{CATTITLE}
            <!-- ELSE -->{PHP.L.services_catalog}
            <!-- ENDIF -->
          </span>
        </a>
        <!-- IF {PHP.usr.auth_write} -->
        <a uk-tooltip="{PHP.L.services_add_product}" href="{PHP|cot_url('services', 'm=add')}" class="uk-margin-small-left uk-visible@l uk-icon-button uk-button-warning" uk-icon="plus-circle"></a>
        <!-- ENDIF -->
      </div>
    </div>
  </div>
</div>
<!-- IF {PHP.cot_plugins_active.paypro} -->
<!-- IF !{PHP|cot_getuserpro()} AND {PHP.cfg.plugin.paypro.serviceslimit} > 0 AND {PHP.cfg.plugin.paypro.serviceslimit} <= {PHP.usr.id|cot_getcountservicesofuser($this)} -->
<div class="alert-danger-full uk-margin-remove-vertical" uk-alert>
  <div class="uk-container">
    <h4 class="uk-text-bold uk-animation-slide-right uk-animation-toggle" tabindex="0">
      <img class="uk-animation-shake uk-margin-small-right" width="36" height="36" alt="" uk-img="data-src: /themes/starlance/img/icon/048-notification.svg" uk-svg="uk-preserve">
      <span class="uk-text-middle">{PHP.L.Warning}</span>
    </h4>
    <p>{PHP.L.paypro_warning_serviceslimit_empty}</p>
  </div>
</div>
<!-- ENDIF -->
<!-- IF {PHP.usr.id} == 0 AND !{PHP|cot_getuserpro()} AND {PHP.cfg.plugin.paypro.serviceslimit} > 0 -->
<div class="alert-danger-full uk-margin-remove-vertical" uk-alert>
  <div class="uk-container">
    <h4 class="uk-text-bold uk-animation-slide-right uk-animation-toggle" tabindex="0">
      <img class="uk-animation-shake uk-margin-small-right" width="36" height="36" alt="" uk-img="data-src: /themes/starlance/img/icon/048-notification.svg" uk-svg="uk-preserve">
      <span class="uk-text-middle">{PHP.L.Warning}</span>
    </h4>
    <p>{PHP.L.paypro_warning_serviceslimit_guest}</p>
  </div>
</div>
<!-- ENDIF -->
<!-- ENDIF -->
<div class="uk-background-muted uk-section">
  <div class="uk-container uk-container-large">
    <div class="uk-margin-small-bottom">
      <h1 class="uk-heading-bullet uk-text-uppercase uk-text-bold uk-link-text uk-h4 uk-margin-remove-vertical">
        <!-- IF {PHP.c} -->{CATTITLE}
        <!-- ELSE -->{PHP.L.services_title} - {PHP.cfg.maintitle}
        <!-- ENDIF -->
      </h1>
      <!-- IF {CATDESC} -->
      <span class="uk-text-muted">{CATDESC}</span>
      <!-- ELSE -->
      <span class="uk-text-muted">{PHP.cfg.services.description}</span>
      <!-- ENDIF -->
    </div>
    <div id="listservices">
      <div class="uk-margin uk-grid-medium uk-child-width-1-2@s uk-child-width-1-3@m uk-child-width-1-4@l" uk-grid="masonry: true">
        <!-- BEGIN: SERV_ROWS -->
        <div>
          <div class="uk-card uk-background-default">
            <!-- IF {PHP.usr.id} == {SERV_ROW_OWNER_ID} OR {PHP.usr.isadmin} OR {PHP.usr.maingrp} == 5 -->
            <div class="uk-position-top-right uk-position-z-index">
              <a uk-tooltip="{PHP.L.Edit}" class="uk-icon-button uk-button-danger" href="{SERV_ROW_ID|cot_url('services','m=edit&id='$this)}" uk-icon="icon:  file-edit; ratio: 1.2" title=""></a>
            </div>
            <!-- ENDIF -->
            <div class="uk-padding-small uk-background-default">
              <!-- IF {SERV_ROW_ID|att_count('services',$this,'','images')} > 0 -->
              <div data-att-display="all"> {SERV_ROW_ID|att_display('services',$this,'','attacher.display.servicestlist','images',1)} </div>
              <!-- ELSE -->
              <div class="uk-inline thumbnail uk-cover-container uk-visible@s">
                <canvas width="330" height="320"></canvas>
                <img uk-cover class="" alt="" uk-img="data-src: themes/{PHP.theme}/img/icon/gallery-empty.svg" uk-svg="uk-preserve">
              </div>
              <!-- ENDIF -->
              <h3 class="uk-heading-bullet uk-margin-remove uk-h5">
                <a class="uk-link-text" href="{SERV_ROW_URL}" title="{SERV_ROW_SHORTTITLE}" uk-tooltip="{SERV_ROW_SHORTTITLE} - Открыть полную страницу карточки услуги">
                  <span>{SERV_ROW_SHORTTITLE}</span>
                </a>
              </h3>
              <div class="uk-flex uk-flex-center uk-flex-middle" uk-grid>
                <!-- IF {SERV_ROW_COST} > 0 -->
                <div class="uk-width-1-2">
                  <span class="uk-link-text" uk-icon="icon: credit-card"></span>
                  <span class="uk-margin-small-left uk-text-middle uk-text-warning">{SERV_ROW_COST} {PHP.cfg.payments.valuta}</span>
                </div>
                <!-- ENDIF -->
                <div class="uk-width-1-4" uk-tooltip="Количество просмотров {SERV_ROW_COUNT}">
                  <span class="uk-link-text" uk-icon="icon: happy"></span>
                </div>
                <div class="uk-width-1-4" uk-tooltip="дата размещения {SERV_ROW_DATE_STAMP|cot_date('j F Y', $this)}">
                  <span class="uk-link-text" uk-icon="icon: history"></span>
                </div>
              </div>
              <div class="uk-grid-small uk-flex-middle" uk-grid>
                <div class="uk-width-auto">
                  <!-- IF {SERV_ROW_OWNER_AVATAR_SRC} -->
                  <img class="uk-border-rounded" width="30" height="30" alt="{SERV_ROW_OWNER_NICKNAME}" src="{SERV_ROW_OWNER_AVATAR_SRC}">
                  <!-- ELSE -->
                  <img class="uk-border-rounded" width="30" height="30" alt="{SERV_ROW_OWNER_NICKNAME}" src="themes/{PHP.theme}/img/avatar.png">
                  <!-- ENDIF -->
                </div>
                <div class="uk-width-expand">
                  <h5 class="uk-text-uppercase uk-margin-remove">
                    <a class="uk-link-text" href="{SERV_ROW_OWNER_DETAILSLINK}" uk-tooltip="Открыть полный профиль поставщика">
                      <span class="uk-text-middle">
                        <!-- IF {SERV_ROW_OWNER_NAME_COMPANY} -->{SERV_ROW_OWNER_NAME_COMPANY}
                        <!-- ELSE -->{SERV_ROW_OWNER_NICKNAME}
                        <!-- ENDIF -->
                      </span>
                      <img class="uk-margin-small-left" width="27" height="27" alt="" uk-img="data-src: themes/{PHP.theme}/img/iconuserdet/verification.png">
                    </a>
                  </h5>
                </div>
              </div>
              <div class="uk-visible@s uk-text-center">
                <p class="uk-text-justify">{SERV_ROW_TEXT|mb_strtolower($this)|strip_tags($this)|mb_substr($this, 0, 107, 'UTF-8')}...</p>
                <a class="uk-button uk-button-details uk-width-1-1" rel="nofollow" href="#modal-overflow-{SERV_ROW_ID}" uk-toggle>
                  <span uk-icon="icon: link; ratio: 1.5" class="uk-margin-small-right"></span>
                  <span class="uk-text-middle" uk-tooltip="узнать больше" title="">{PHP.L.Prd_open_more}</span>
                </a>
                <div id="modal-overflow-{SERV_ROW_ID}" uk-modal>
                  <div class="uk-modal-dialog uk-card uk-padding-small uk-background-primary uk-border-rounded-mdm uk-margin-auto-vertical uk-width-2-3@m uk-width-1-2@xl">
                    <button class="uk-modal-close-default uk-button-secondary uk-border-rounded-mdm" type="button" uk-close></button>
                    <div class="uk-modal-header">
                      <h3 class="uk-heading-bullet uk-margin-remove uk-text-truncate">
                        <a class="uk-link-text" href="{SERV_ROW_URL}" title="{SERV_ROW_SHORTTITLE}">
                          <span>{SERV_ROW_SHORTTITLE}</span>
                        </a>
                      </h3>
                    </div>
                    <div class="uk-modal-body uk-background-default" uk-overflow-auto>
                      <span class="">{SERV_ROW_TEXT}</span>
                    </div>
                    <div class="uk-modal-footer">
                      <div class="uk-grid-small uk-child-width-1-2@s uk-child-width-1-2@m uk-child-width-1-3@l uk-flex-center uk-text-center" uk-grid>
                        <div>
                          <a class="uk-button uk-button-primary uk-width-1-1" href="{SERV_ROW_URL}">
                            <span uk-icon="info" class="uk-margin-small-right"></span>
                            <span class="uk-text-middle" uk-tooltip="{PHP.L.Prd_Pagellink_desc}" title="">{PHP.L.Prd_Pagellink}</span>
                          </a>
                        </div>
                        <div>
                          <a class="uk-button uk-button-default uk-width-1-1" href="{SERV_ROW_OWNER_DETAILSLINK}">
                            <span uk-icon="happy" class="uk-margin-small-right"></span>
                            <span class="uk-text-middle" uk-tooltip="{PHP.L.Prd_Pagellink_supplier_desc}" title="">{PHP.L.Prd_Pagellink_supplier}</span>
                          </a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="uk-hidden@s">
                <p id="prd-fulltext-{SERV_ROW_ID}" class="uk-text-justify">{SERV_ROW_TEXT|strip_tags($this)|mb_substr($this, 0, 107, 'UTF-8')}...</p>
                <div class="" id="prd-fulltext-{SERV_ROW_ID}" hidden>
                  <span class="uk-text-light uk-text-justify">{SERV_ROW_TEXT}</span>
                  <a class="uk-button uk-button-primary uk-width-1-1" href="{SERV_ROW_URL}">
                    <span uk-icon="info" class="uk-margin-small-right"></span>
                    <span class="uk-text-middle" uk-tooltip="{PHP.L.Prd_Pagellink_desc}" title="">{PHP.L.Prd_Pagellink}</span>
                  </a>
                </div>
                <div id="prd-fulltext-{SERV_ROW_ID}">
                  <a class="uk-button uk-button-details uk-width-1-1 uk-text-center" rel="nofollow" href="#prd-fulltext-{SERV_ROW_ID}" uk-toggle="target: #prd-fulltext-{SERV_ROW_ID}; animation: uk-animation-fade">
                    <span class="uk-text-middle" uk-tooltip="узнать больше" title="">{PHP.L.Prd_open_full_text}</span>
                  </a>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- END: SERV_ROWS -->
      </div>
    </div>
  </div>
  <div class="uk-container uk-container-expand">
    <!-- IF {PAGENAV_COUNT} > 0 -->
    <ul class="uk-pagination uk-flex-center" uk-margin> {PAGENAV_PAGES} </ul>
    <!-- IF {PHP.cot_plugins_active.tags} AND {PHP.cot_plugins_active.tagslance} AND {PHP.cfg.plugin.tagslance.services} -->
    <div class="uk-card uk-visible@l uk-margin-top">
      <hr class="uk-divider-icon">
      <div class="uk-flex uk-flex-center"> {SERV_TAG_CLOUD} </div>
    </div>
    <!-- ENDIF -->
    <!-- ELSE -->
    <div class="uk-card uk-card-body uk-border-rounded uk-background-default uk-animation-scale-up">
      <h3 class="uk-heading-bullet uk-margin-remove-top">{PHP.L.services_notfound}</h3>
      <ul class="uk-list uk-list-divider">
        <li>
          <span class="uk-button uk-button-default">Исполнителю:</span>
        </li>
        <li>Вы можете стать первым, для это лишь нужно <a <!-- IF {PHP.usr.auth_write} -->href="{PHP|cot_url('services', 'm=add')}"
            <!-- ELSE --> href="#AuthModal" uk-toggle
            <!-- ENDIF --> > <span class="uk-text-bold uk-text-success">{PHP.L.services_add_product}</span>
          </a>
        </li>
        <li>
          <span class="uk-button uk-button-warning">ЗАКАЗЧИКУ:</span>
        </li>
        <li>Не хотите ждать, пока появится нужная услуга? Вам стоит в раздел <a class="" href="{PHP|cot_url('projects')}">«{PHP.L.Prj_Depart_Name}»</a>, <a <!-- IF {PHP.usr.auth_write} -->href="{PHP|cot_url('projects', 'm=add')}"
            <!-- ELSE --> href="#AuthModal" uk-toggle
            <!-- ENDIF --> > <span class="uk-text-bold uk-text-warning">добавить заявку</span>
          </a> о том, что Вы нуждаетесь в конкретных услугах. </li>
      </ul>
    </div>
    <!-- ENDIF -->
  </div>
</div>
<div id="listservicesstructure" uk-offcanvas="flip: true; overlay: true">
  <div class="uk-offcanvas-bar">
    <!-- IF {CATALOG} --> {CATALOG}
    <!-- ENDIF -->
  </div>
</div>
<!-- END: MAIN -->
