<!-- BEGIN: SERVICES -->
<div class="uk-background-muted uk-section" id="index-services">
  <div class="uk-container uk-container-large">
    <div class="uk-margin">
		<h3 class="uk-heading-bullet uk-text-bold uk-link-text uk-margin-remove">{PHP.L.services_title}:</h3>
		<span class="uk-text-light uk-margin-remove">{PHP.L.services_descr}</span>
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
              <div data-att-display="all"> {SERV_ROW_ID|att_display('services',$this,'','attacher.display.servicestlist','images',1)}
			  </div>
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
                <p class="uk-text-justify uk-text-light">{SERV_ROW_TEXT|mb_strtolower($this)|strip_tags($this)|mb_substr($this, 0, 107, 'UTF-8')}...</p>
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
                      <div class="uk-grid-small uk-child-width-1-2@s  uk-flex-center uk-text-center" uk-grid>
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
                        <!-- IF {PHP.cot_plugins_active.orderform} -->
                        <div>
                          <a class="uk-button uk-button-success uk-width-1-1" href="{SERV_ROW_ID|cot_url('orderform', 'area=services&code='$this)}">
                            <span uk-icon="mail" class="uk-margin-small-right"></span>
                            <span class="uk-text-middle" uk-tooltip="{PHP.L.Prd_Orderlink_desc}" title="">{PHP.L.Prd_Orderlink}</span>
                          </a>
                        </div>
                        <!-- ENDIF -->
						<!-- IF {PHP.cot_plugins_active.servicesorders} -->
                        <!-- IF {SERV_ROW_COST} > 0 -->
                        <div>
                          <a class="uk-button uk-button-danger uk-width-1-1" <!-- IF {PHP.usr.id}> 0 -->href="{SERV_ROW_ID|cot_url('servicesorders', 'm=neworder&pid='$this)}"
                            <!-- ELSE -->href="#AuthModal" uk-toggle
                            <!-- ENDIF -->> <span uk-icon="cart" class="uk-margin-small-right"></span>
                            <span class="uk-text-middle" uk-tooltip="{PHP.L.prd_servicesorders_neworder_descr}" title="">{PHP.L.prd_servicesorders_neworder_title}</span>
                          </a>
                        </div>
                        <!-- ENDIF -->
						<!-- ENDIF -->
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
</div>
<!-- END: SERVICES -->