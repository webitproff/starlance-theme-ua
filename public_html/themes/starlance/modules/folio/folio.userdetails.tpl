<!-- BEGIN: MAIN -->
<div class="uk-margin-top uk-margin-bottom">
	<div class="uk-grid-collapse uk-child-width-expand@s" uk-grid>
		<div>
			<header>
				<h3 class="uk-heading-bullet uk-text-uppercase uk-text-bold uk-link-text">{PHP.L.folio}</h3>
			</header>
		</div>
		<div class="uk-visible@m">
		<div>
			<!-- IF {PHP.usr.id} == {PHP.urr.user_id} AND {RPD_ADDPRD_SHOWBUTTON} -->
			<a class="uk-button uk-button-small uk-button-default" uk-tooltip="" href="{PRD_ADDPRD_URL}"><span class="uk-text-success">{PHP.L.folio_add_work}</span></a>
			<!-- ENDIF -->
		</div>
		</div>
		<div>
			<div class="uk-align-right">
			<!-- IF {PAGENAV_COUNT} > 0 -->
				<span class="uk-icon-button uk-button-primary" uk-tooltip="Количество публикаций в разделе {PHP.L.folio}">{PHP.pagenav.entries}</span>
				<!-- ENDIF -->
				<a uk-tooltip="{PHP.L.folio} - публикации по категориям" href="#usersfoliostructure" uk-toggle class="uk-icon-button uk-button-default" uk-icon="thumbnails"></a>
			</div>
		</div>
	</div>
</div>
		<div id="listfolio">
		<div class="uk-margin uk-grid-medium uk-child-width-1-2@s uk-child-width-1-3@m uk-child-width-1-4@l"  uk-grid="masonry: true">
			<!-- BEGIN: PRD_ROWS -->
			<div>
				<div class="uk-card uk-background-default">

					<!-- IF {PHP.usr.id} == {PHP.urr.user_id} OR {PHP.usr.isadmin} OR {PHP.usr.maingrp} == 5 -->
					<div class="uk-position-top-right uk-position-z-index">
						<a uk-tooltip="{PHP.L.Edit}" class="uk-icon-button uk-button-danger" href="{PRD_ROW_ID|cot_url('folio','m=edit&id='$this)}" uk-icon="icon:  file-edit; ratio: 1.2" title=""></a>
					</div>
					<!-- ENDIF -->
				
				<!-- IF {PRD_ROW_ID|att_count('folio',$this)} > 0 -->
				<div class="uk-card uk-background-default">			
					<div data-att-display="all">
						{PRD_ROW_ID|att_display('folio',$this,'','attacher.display.foliousersdetails','all')}
					</div>
				</div>
				<!-- ENDIF -->
				<div class="uk-card-body uk-padding-small uk-background-default">
				
						<h4 class="uk-margin-remove uk-text-truncate"><a class="uk-link-text" href="{PRD_ROW_URL}" title="{PRD_ROW_SHORTTITLE}" uk-tooltip="{PRD_ROW_SHORTTITLE}"><span>{PRD_ROW_SHORTTITLE}</span></a></h4>
						<div class="uk-flex uk-flex-center uk-flex-middle" uk-grid>
							<!-- IF {PRD_ROW_COST} > 0 -->
							<div class="uk-width-1-2">
								<span class="uk-link-text" uk-icon="icon: credit-card"></span><span class="uk-margin-small-left uk-text-middle uk-text-warning">{PRD_ROW_COST} {PHP.cfg.payments.valuta}</span>
							</div>
							<!-- ENDIF -->
							<div class="uk-width-1-4" uk-tooltip="Количество просмотров {PRD_ROW_COUNT}">
								<span class="uk-link-text" uk-icon="icon: happy"></span>
							</div>
							<div class="uk-width-1-4" uk-tooltip="дата размещения {PRD_ROW_DATE_STAMP|cot_date('j F Y', $this)}">
								<span class="uk-link-text" uk-icon="icon: history"></span>
							</div>
						</div>

						<h5 class="uk-margin-remove uk-text-truncate"></h5>
						<p class="uk-font-face uk-margin-remove-top">{PRD_ROW_TEXT|strip_tags($this)|mb_substr($this, 0, 74, 'UTF-8')}...</p>
<a class="" href="#modal-overflow-{PRD_ROW_ID}" uk-toggle><span class="uk-text-primary">Показать текст полностью</span></a>						
<div id="modal-overflow-{PRD_ROW_ID}" uk-modal>
    <div class="uk-modal-dialog">
        <button class="uk-modal-close-default" type="button" uk-close></button>
        <div class="uk-modal-header">
			<h3 class="uk-heading-bullet uk-margin-remove uk-text-truncate"><a class="uk-link-text" href="{PRD_ROW_URL}" title="{PRD_ROW_SHORTTITLE}"><span>{PRD_ROW_SHORTTITLE}</span></a></h3>
        </div>
        <div class="uk-modal-body" uk-overflow-auto>
			<p class="uk-font-face">{PRD_ROW_TEXT}</p>
        </div>
        <div class="uk-modal-footer uk-text-right">
            <button class="uk-button uk-button-danger uk-modal-close" type="button">Закрыть</button>
            <a class="uk-button uk-button-success" href="{PRD_ROW_URL}">Открыть полностью</a>
        </div>

    </div>
</div>
					</div>
				</div>
			</div>
			<!-- END: PRD_ROWS -->
		</div>	
		</div>
<!-- IF {PAGENAV_COUNT} > 0 -->
	<div class="uk-margin-top">
		<ul class="uk-pagination">
		{PAGENAV_PAGES}
		</ul>
	</div>
<!-- ELSE -->
<div uk-height-viewport="expand: true">
	<div class="uk-alert-warning uk-border-rounded-mdm" uk-alert>
		<span>{PHP.L.Folio_My_Empty}</span>
	</div>
</div>
<!-- ENDIF -->
<div id="usersfoliostructure" uk-offcanvas="flip: true; overlay: true">
    <div class="uk-offcanvas-bar">
	<button class="uk-offcanvas-close uk-light uk-button-default uk-border-rounded-mdm" type="button" uk-close></button>
	<!-- IF {PAGENAV_COUNT} > 0 -->
	<ul class="uk-list uk-list-divider">
	  <li>
	 	  <a href="{PHP.urr.user_id|cot_url('users', 'm=details&id=$this&tab=portfolio')}">{PHP.L.folio} - {PHP.L.All}: {PHP.pagenav.entries}</a>
	  </li>
	  	<!-- BEGIN: CAT_ROW -->
	  		<li class=" <!-- IF {PRD_CAT_ROW_SELECT} -->uk-active<!-- ENDIF -->">
	  				<a href="{PRD_CAT_ROW_URL}">
	  						<!-- IF {PRD_ROW_CAT_ICON} -->
	  							<img src="{PRD_CAT_ROW_ICON}" alt="{PRD_CAT_ROW_TITLE} ">
	  						<!-- ENDIF -->
	  						{PRD_CAT_ROW_TITLE}
	  					<span class="uk-badge">{PRD_CAT_ROW_COUNT_FOLIO}</span>
	  				</a>
	  		</li>
	  	<!-- END: CAT_ROW -->
	</ul>
	<!-- ELSE -->
	<div class="uk-alert-warning uk-border-rounded-mdm" uk-alert>
		<span>{PHP.L.folio_empty}</span>
	</div>
	<!-- ENDIF -->
	<hr>
	<!-- IF {PHP.usr.id} == {PHP.urr.user_id} AND {RPD_ADDPRD_SHOWBUTTON} -->
	<div class="uk-margin-top">
		<a class="uk-button uk-button-warning uk-width-expand" uk-tooltip="" href="{PHP|cot_url('folio', 'm=add')}"><span>{PHP.L.folio_add_work}</span></a>
	</div>
	<!-- ENDIF -->
    </div>
</div>
<!-- END: MAIN -->