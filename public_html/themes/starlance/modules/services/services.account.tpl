<!-- BEGIN: SERVICES -->
<div class="uk-text-center uk-margin">
  <h4 class="uk-heading-bullet uk-text-uppercase uk-text-bold uk-link-text">{PHP.L.services_title}: <span class="uk-text-muted" uk-tooltip="">Новые предложения от исполнителей, мастеров и специалистов</span>
  </h4>
</div>
<div id="listservices">
  <!-- BEGIN: SERV_ROWS -->
  <div class="uk-card uk-card-default uk-card-body uk-margin-bottom">
    <div class="" uk-grid>
      <div class="uk-width-1-4@m">
              <!-- IF {SERV_ROW_ID|att_count('services',$this,'','images')} > 0 -->
              <div data-att-display="all"> {SERV_ROW_ID|att_display('services',$this,'','attacher.display.servicestlist','images',1)}
			  </div>
              <!-- ELSE -->
        <div class="uk-inline thumbnail uk-cover-container uk-visible@s">
          <canvas width="330" height="320"></canvas>
          <img uk-cover class="" alt="" uk-img="data-src: themes/{PHP.theme}/img/icon/gallery-empty.svg" uk-svg="uk-preserve">
        </div>
        <!-- ENDIF -->
      </div>
      <div class="uk-width-3-4@m">
        <!-- IF {PHP.usr.id} == {SERV_ROW_OWNER_ID} OR {PHP.usr.isadmin} OR {PHP.usr.maingrp} == 5 -->
        <div class="uk-position-top-right uk-position-z-index">
          <a uk-tooltip="{PHP.L.Edit}" class="uk-icon-button uk-button-danger" href="{SERV_ROW_ID|cot_url('services','m=edit&id='$this)}" uk-icon="icon:  file-edit; ratio: 1.2" title=""></a>
        </div>
        <!-- ENDIF -->
        <h3 class="uk-heading-bullet uk-margin-remove uk-text-truncate">
          <a class="uk-link-text" href="{SERV_ROW_URL}" title="{SERV_ROW_SHORTTITLE}" uk-tooltip="{SERV_ROW_SHORTTITLE} - Открыть полную страницу карточки услуги">
            <span>{SERV_ROW_SHORTTITLE}</span>
          </a>
        </h3>
        <div>
          <p class="uk-text-justify">{SERV_ROW_TEXT|strip_tags($this)|mb_substr($this, 0, 107, 'UTF-8')}...</p>
        </div>
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
      </div>
    </div>
  </div>
  <!-- END: SERV_ROWS -->
</div>
<!-- END: SERVICES -->