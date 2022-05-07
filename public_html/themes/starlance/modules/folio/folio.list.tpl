<!-- BEGIN: MAIN -->
<div class="uk-section uk-padding-remove-vertical uk-background-primary">
  <div class="uk-container uk-padding-small">
    <div class="uk-grid-small" uk-grid>
      <div class="uk-width-expand@m">
        <form action="{SEARCH_ACTION_URL}" method="get" class="uk-form-stacked">
          <input type="hidden" name="c" value="{PHP.c}" />
          <input type="hidden" name="type" value="{PHP.type}" />
          <input type="hidden" name="e" value="folio" />
          <input type="hidden" name="l" value="{PHP.lang}" />
          <div uk-grid>
            <div class="uk-width-expand">
              <div class="uk-inline">
                <input class="uk-input uk-width-1-1 uk-border-rounded-mdm" name="sq" value="" placeholder="{PHP.L.Search}">
                <a href="#" class="uk-form-icon uk-form-icon-flip" uk-icon="icon: settings" uk-toggle="target: #filter"></a>
              </div>
            </div>
            <div class="uk-width-auto uk-flex uk-flex-middle uk-hidden@m">
              <a uk-tooltip="Выбрать отдел маркетплейса и перейти" href="#listfoliostructure" uk-toggle class="uk-icon-button uk-button-default" uk-icon="thumbnails"></a>
              <!-- IF {PHP.usr.auth_write} -->
              <a uk-tooltip="{PHP.L.Folio_My_Add_List}" href="{PHP|cot_url('folio', 'm=add')}" class="uk-margin-small-left uk-icon-button uk-button-warning" uk-icon="plus-circle"></a>
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
      <div class="uk-width-auto@m uk-flex uk-flex-middle uk-visible@m">
        <a uk-tooltip="Выбрать отдел маркетплейса и перейти" href="#listfoliostructure" uk-toggle class="uk-button uk-button-default">
          <span uk-icon="thumbnails" class="uk-margin-small-right uk-icon"></span>
          <span class=" uk-text-truncate uk-text-middle">
            <!-- IF {PHP.c} -->{CATTITLE}
            <!-- ELSE -->{PHP.L.Folio_Menu_Name}
            <!-- ENDIF -->
          </span>
        </a>
        <!-- IF {PHP.usr.auth_write} -->
        <a uk-tooltip="{PHP.L.Folio_My_Add_List}" href="{PHP|cot_url('folio', 'm=add')}" class="uk-margin-small-left uk-visible@l uk-icon-button uk-button-warning" uk-icon="plus-circle"></a>
        <!-- ENDIF -->
      </div>
    </div>
  </div>
</div>
<div class="uk-background-muted uk-section">
  <div class="uk-container uk-container-large">
    <div id="listfolio">
      <div class="uk-margin uk-grid-match uk-grid-medium uk-child-width-1-2@xl" uk-grid>
        <!-- BEGIN: PRD_ROWS -->
        <div>
          <div class="uk-margin uk-card uk-card-small uk-card-default uk-card-hover uk-grid-collapse uk-child-width-1-2@s uk-visible-toggle uk-animation-toggle" tabindex="-1" uk-grid>
            <!-- UIkit CARD IMG -->
            <!-- IF {PRD_ROW_ID|att_count('folio',$this,'','images')} > 0 -->
            <div class="uk-inline thumbnail uk-cover-container">
              <div data-att-display="all"> {PRD_ROW_ID|att_display('folio',$this,'','attacher.display.foliolist','images',1)} </div>
            </div>
            <!-- ELSE -->
            <div class="uk-inline thumbnail uk-cover-container">
              <canvas width="330" height="320"></canvas>
              <img uk-cover class="" alt="" uk-img="data-src: themes/{PHP.theme}/img/icon/gallery-empty.svg" uk-svg="uk-preserve">
            </div>
            <!-- ENDIF -->
            <!-- UIkit CARD HEADER -->
            <div class="uk-card-header">
              <div class="uk-card-badge uk-card-badge-folio uk-label-folio">
                <a class="uk-text-warning" uk-icon="icon: more-vertical; ratio: 1.5"></a>
                <div class="uk-box-shadow-large uk-border-rounded" uk-dropdown="mode: click; animation: uk-animation-slide-left;">
                  <ul class="uk-nav uk-dropdown-nav uk-list uk-list-divider">
                    <!-- IF {PHP.usr.id} == {PRD_ROW_OWNER_ID} OR {PHP.usr.isadmin} OR {PHP.usr.maingrp} == 5 -->
                    <li>
                      <a class="uk-link-text" href="{PRD_ROW_ID|cot_url('folio','m=edit&id='$this)}">
                        <span class="uk-text-danger" uk-icon="icon: file-edit; ratio: 1.2"></span>
                        <span class="uk-margin-small-left uk-text-uppercase uk-text-bold uk-text-middle">{PHP.L.Edit}</span>
                      </a>
                    </li>
                    <!-- ENDIF -->
                    <li>
                      <a class="uk-link-text" href="{PRD_ROW_URL}" title="{PRD_ROW_SHORTTITLE}">
                        <span class="uk-text-primary" uk-icon="icon: more; ratio: 1.2"></span>
                        <span class="uk-margin-small-left uk-text-uppercase uk-text-middle">{PHP.L.open_more}</span>
                      </a>
                    </li>
                    <li>
                      <a class="uk-link-text" href="{PHP.R.Folio_How_Add}" title="{PRD_ROW_SHORTTITLE}">
                        <span class="uk-text-primary" uk-icon="icon: question; ratio: 1.2"></span>
                        <span class="uk-margin-small-left uk-text-uppercase uk-text-middle">Как добавить свои достижения</span>
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
              <h3 class="uk-heading-bullet uk-margin-remove-top uk-text-truncate">
                <a class="uk-link-text" href="{PRD_ROW_URL}" title="{PRD_ROW_SHORTTITLE}">
                  <span>{PRD_ROW_SHORTTITLE}</span>
                </a>
              </h3>
              <h5 class="uk-heading-line uk-margin-remove uk-text-center uk-link-text">
                <span>{PRD_ROW_CATTITLE}</span>
              </h5>
              <div class="uk-grid-small uk-flex-middle" uk-grid>
                <div class="uk-width-auto">
                  <!-- IF {PRD_ROW_OWNER_AVATAR_SRC} -->
                  <img class="uk-border-rounded" width="50" height="50" alt="{PRD_ROW_OWNER_NICKNAME}" src="{PRD_ROW_OWNER_AVATAR_SRC}">
                  <!-- ELSE -->
                  <img class="uk-border-rounded" width="50" height="50" alt="{PRD_ROW_OWNER_NICKNAME}" src="themes/{PHP.theme}/img/avatar.png">
                  <!-- ENDIF -->
                </div>
                <div class="uk-width-expand">
                  <!-- IF {PRD_ROW_OWNER_FIRST_SECOND_NAME} -->
                  <h3 class="uk-card-title uk-margin-remove uk-text-truncate">
                    <a class="uk-link-text" href="{PRD_ROW_OWNER_DETAILSLINK}">
                      <span class="uk-text-warning uk-margin-small-right">{PRD_ROW_OWNER_FIRST_SECOND_NAME}</span>
                    </a>
                  </h3>
                  <!-- ENDIF -->
                  <h4 class="uk-margin-remove">
                    <a class=" uk-margin-remove uk-link-text" href="{PRD_ROW_OWNER_DETAILSLINK}">[{PRD_ROW_OWNER_NICKNAME}]</a>
                  </h4>
                </div>
                <!-- UIkit CARD BODY -->
                <div class="uk-card-body uk-margin-remove-top">
                  <hr class="uk-divider-icon uk-margin-small">
                  <p class="uk-margin-remove-top">{PRD_ROW_SHORTTEXT|strip_tags($this)}</p>
                  <hr>
                  <div class="uk-grid-small uk-flex uk-flex-center uk-flex-middle" uk-grid>
                    <div>
                      <!-- IF {PRD_ROW_COST} > 0 -->
                      <a class="uk-button uk-button-success" href="{PRD_ROW_URL}">
                        <span uk-icon="icon: credit-card"></span>
                        <span class="uk-margin-small-left uk-text-middle uk-text-f5">{PRD_ROW_COST} {PHP.cfg.payments.valuta}</span>
                      </a>
                      <!-- ENDIF -->
                    </div>
                    <!-- IF {PRD_ROW_YOUTUBE_LINK_FOLIO} -->
                    <div uk-lightbox>
                      <a class="uk-icon-button uk-button-danger" uk-icon="youtube" href="https://www.youtube.com/watch?v={PRD_ROW_YOUTUBE_LINK_FOLIO}" data-caption="{PRD_ROW_YOUTUBE_LINK_FOLIO_TITLE}" data-attrs="width: 1280; height: 720;" uk-tooltip="{PRD_ROW_YOUTUBE_LINK_FOLIO_TITLE}"></a>
                    </div>
                    <!-- ENDIF -->
                    <div>
                      <!-- IF {PHP.usr.id} == {PRD_ROW_OWNER_ID} OR {PHP.usr.isadmin} OR {PHP.usr.maingrp} == 5 -->
                      <a uk-tooltip="{PHP.L.Edit}" class="uk-icon-button uk-button-warning" href="{PRD_ROW_ID|cot_url('folio','m=edit&id='$this)}" uk-icon="icon:  file-edit; ratio: 1.2" title=""></a>
                      <!-- ENDIF -->
                    </div>
                  </div>
                </div>
              </div>
            </div>
            <!-- UIkit CARD FOOTER -->
            <div class="uk-card-footer uk-card-footer-folio uk-width-expand">
              <div class="uk-grid-small uk-grid-divider uk-child-expand@s uk-flex-center uk-text-center" uk-grid>
                <div>
                  <div uk-tooltip="Количество просмотров">
                    <span class="uk-icon uk-text-warning" uk-icon="icon: users; ratio: 1.2"></span>
                    <span class="uk-text-bold uk-link-text uk-margin-small-left uk-text-middle">{PRD_ROW_COUNT}</span>
                  </div>
                </div>
                <div>
                  <div uk-tooltip="Всего прикрепленно файлов / из них картинок / другие для бесплатного скачивания">
                    <span class="uk-margin-small-left uk-icon uk-text-warning" uk-icon="icon: image; ratio: 1.2"></span>
                    <span class="uk-text-bold uk-link-text uk-margin-small-left uk-text-middle">{PRD_ROW_ID|att_count('folio',$this)}/{PRD_ROW_ID|att_count('folio',$this,'','images')}/{PRD_ROW_ID|att_count('folio',$this,'','files')}</span>
                  </div>
                </div>
                <div class="uk-visible@m">
                  <div uk-tooltip="Последнее обновление">
                    <span class="uk-margin-small-left uk-icon uk-text-warning" uk-icon="icon: history; ratio: 1.2"></span>
                    <span class="uk-text-bold uk-link-text uk-margin-small-left uk-text-middle">{PHP.item.item_update|date('d.m.Y', $this)}</span>
                  </div>
                </div>
                <div>
                  <div uk-tooltip="Комментариев всего">
                    <span class="uk-margin-small-left uk-icon uk-text-warning" uk-icon="icon: comments; ratio: 1.2"></span>
                    <span class="uk-text-bold uk-link-text uk-margin-small-left uk-text-middle">{LIST_ROW_COMMENTS}</span>
                  </div>
                </div>
              </div>
              <a class="uk-hidden-hover folio-link-more uk-animation-slide-right" href="{PRD_ROW_URL}">
                <span uk-icon="icon: link; ratio: 3"></span>
              </a>
            </div>
          </div>
        </div>
        <!-- END: PRD_ROWS -->
      </div>
    </div>
  </div>
  <div class="uk-container">
    <!-- IF {PAGENAV_COUNT} > 0 -->
    <ul class="uk-pagination uk-flex-center" uk-margin> {PAGENAV_PAGES} </ul>
    <!-- IF {PHP.cot_plugins_active.tags} AND {PHP.cot_plugins_active.tagslance} AND {PHP.cfg.plugin.tagslance.market} -->
    <div class="uk-card uk-visible@l uk-margin-top">
      <hr class="uk-divider-icon">
      <div class="uk-flex uk-flex-center"> {PRD_TAG_CLOUD} </div>
    </div>
    <!-- ENDIF -->
    <!-- ELSE -->
    <div class="uk-card uk-card-body uk-border-rounded uk-background-default uk-animation-scale-up">
      <h3 class="uk-heading-bullet uk-margin-remove-top">{PHP.L.folio_notfound}</h3>
      <ul class="uk-list uk-list-divider">
        <li>
          <span class="uk-button uk-button-default">ПРОДАВЦУ:</span>
        </li>
        <li>Вы можете стать первым продавцом в этом отделе <span class="uk-text-bold">онлайн маркетплейса</span>, для это лишь нужно <a <!-- IF {PHP.usr.auth_write} -->href="{PHP|cot_url('folio', 'm=add')}"
            <!-- ELSE --> href="#AuthModal" uk-toggle
            <!-- ENDIF --> > <span class="uk-text-bold uk-text-success">добавить свои товары или услуги.</span>
          </a>
        </li>
        <li>
          <span class="uk-button uk-button-warning">ЗАКАЗЧИКУ:</span>
        </li>
        <li>Не хотите ждать, пока появится нужный товар или услуга? Вам стоит в раздел <a class="" href="{PHP|cot_url('projects')}">«{PHP.L.Prj_Depart_Name}»</a>, <a <!-- IF {PHP.usr.auth_write} -->href="{PHP|cot_url('projects', 'm=add')}"
            <!-- ELSE --> href="#AuthModal" uk-toggle
            <!-- ENDIF --> > <span class="uk-text-bold uk-text-warning">добавить заявку</span>
          </a> о том, что Вы желаете приобрести конкретный товар или нуждаетесь в конкретных услугах. </li>
      </ul>
    </div>
    <!-- ENDIF -->
  </div>
</div>
<div id="listfoliostructure" uk-offcanvas="flip: true; overlay: true">
  <div class="uk-offcanvas-bar">
    <!-- IF {CATALOG} --> {CATALOG}
    <!-- ENDIF -->
  </div>
</div>
<!-- END: MAIN -->
