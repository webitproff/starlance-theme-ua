<!-- BEGIN: MAIN -->
<div class="uk-margin-top uk-margin-bottom">
	<div class="" uk-grid>
		<div class="uk-width-auto">
			<header>
				<h3 class="uk-heading-bullet uk-text-uppercase uk-text-bold uk-link-text">{PHP.L.projects_projects}</h3>
			</header>
		</div>
		<div class="uk-width-expand">
			<div class="uk-grid-small uk-grid-divider uk-child-width-expand@s uk-text-right" uk-grid>
				<div>
					<!-- IF {PHP.usr.id} == {PHP.urr.user_id} AND {ADDPRJ_SHOWBUTTON} -->
					<a class="uk-button uk-button-small uk-button-default" uk-tooltip="" href="{PHP|cot_url('projects', 'm=add')}">{PHP.L.projects_add_to_catalog}</a>
					<!-- ENDIF -->
				</div>
				<div>
				<!-- IF {PAGENAV_COUNT} > 0 -->
					<span class="uk-icon-button uk-button-primary" uk-tooltip="Количество публикаций в разделе {PHP.L.projects_projects}">{PHP.pagenav.entries}</span>
					<!-- ENDIF -->
					<a uk-tooltip="{PHP.L.projects_projects} - публикации по категориям" href="#usersprojectstructure" uk-toggle class="uk-icon-button uk-button-default" uk-icon="thumbnails"></a>
				</div>
			</div>
		</div>
	</div>
</div>

<div id="listprojects">
	<!-- BEGIN: PRJ_ROWS -->
		<div class="uk-card uk-card-default uk-card-body uk-card-small uk-border-rounded uk-scrollspy-inview uk-animation-fade uk-margin-bottom uk-box-shadow-small">
			<!-- IF {PRJ_ROW_USER_IS_ADMIN} -->
			<div class="uk-position-top-right uk-position-z-index">
				<a class="uk-icon-button uk-button-danger uk-icon" uk-icon="icon: cog; ratio: 1.5"></a>
			</div>
				<div uk-dropdown="mode: click; animation: uk-animation-slide-left;">
					<ul class="uk-nav uk-dropdown-nav uk-list uk-list-divider">
						<li><a uk-tooltip="{PHP.L.Edit}" class="uk-margin-right uk-text-danger uk-icon" href="{PRJ_ROW_ID|cot_url('projects','m=edit&id='$this)}" uk-icon="icon:  file-edit; ratio: 1.2" title="">{PHP.L.Edit}</a></li>
					<!-- IF {PRJ_ROW_STATE} != 2 -->
						<li><a href="{PRJ_ROW_HIDEPROJECT_URL}" class="uk-link-text">{PRJ_ROW_HIDEPROJECT_TITLE}</a></li> 
						<!-- IF {PRJ_ROW_PERFORMER} -->
						<li><a href="{PRJ_ROW_REALIZEDPROJECT_URL}" class="uk-link-text">{PRJ_ROW_REALIZEDPROJECT_TITLE}</a></li>					
						<!-- ENDIF -->
					<!-- ENDIF -->									
					</ul>
				</div>
			<!-- ENDIF -->	
			<div class="uk-visible-toggle">
				<div class="uk-grid-divider uk-grid-small" uk-grid="">
					<div class="uk-width-expand@m">
						<h2 class="uk-text-large uk-text-light">
							<a href="{PRJ_ROW_URL}">{PRJ_ROW_SHORTTITLE}</a>
						</h2>
						<p class="uk-margin-remove-top">
							<span class="uk-link-text uk-text-bold">{PRJ_ROW_DATE_STAMP|cot_date('d.m.Y H:i', $this)} </span>
							<!-- IF {PHP.usr.id} == {PHP.urr.user_id} OR {PHP.usr.isadmin} -->
							<span class="uk-label uk-label-warning">{PRJ_ROW_LOCALSTATUS} </span>
							<!-- ENDIF -->
							<span class="uk-link-text uk-text-light">{PRJ_ROW_SHORTTEXT|strip_tags($this)}</span> 
						</p>
						<hr class="uk-divider-icon uk-visible@m">
						<div class="uk-visible@m" uk-grid="">
							<div>
								{PRJ_ROW_COUNTRY} {PRJ_ROW_REGION} {PRJ_ROW_CITY}
							</div>
							<div>
								<a href="{PRJ_ROW_CATURL}" uk-tooltip="{PHP.L.Category}">{PRJ_ROW_CATTITLE}</a>
							</div>
							<div>
								<!-- IF {PRJ_ROW_TYPE} --><span uk-tooltip="Тип проекта" class="">{PRJ_ROW_TYPE}</span><!-- ENDIF -->
							</div>
						</div>
						<div class="uk-hidden@m">
								<!-- IF {PHP.cot_plugins_active.paypro} AND {PRJ_ROW_FORPRO} -->
								<span uk-tooltip="Только c PRO аккаунтом" class="uk-label uk-label-danger">PRO</span>
								<!-- ENDIF -->
						</div>
					</div>
					<div class="uk-width-1-4@m">
						<div class="uk-margin-top uk-text-center">
							<div class="uk-margin-small uk-text-center">
							<span class="uk-text-success">{PHP.L.avaleble_money}</span><br>
							<!-- IF {PRJ_ROW_COST} > 0 -->
							<span class="uk-badge uk-padding-small">{PRJ_ROW_COST} {PHP.cfg.payments.valuta}</span>
							<!-- ENDIF -->
							</div>
							<div>
							<span class="uk-text-danger" uk-tooltip="{PHP.L.offers_count}" uk-icon="icon: commenting"> {PRJ_ROW_OFFERS_COUNT|cot_declension($this, '')}</span>

							</div>
							
							<!-- IF {PHP.usr.maingrp} == 4 -->
								<a class="uk-button uk-button-small uk-button-default" href="{PRJ_ROW_OFFERS_ADDOFFER_URL}">
								<span uk-tooltip="Предложить свои услуги">{PHP.L.offers_ostavit_predl}</span></a>
								<!-- ELSE -->
								<a class="uk-button uk-button-small uk-button-linear" href="{PRJ_ROW_URL}">
								<span uk-tooltip="{PRJ_ROW_SHORTTITLE}">{PHP.L.More}</span></a>
							<!-- ENDIF -->
							
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- END: PRJ_ROWS -->
</div>
<!-- IF {PAGENAV_COUNT} > 0 -->
<div class="uk-margin-top">
	<ul class="uk-pagination">
	{PAGENAV_PAGES}
	</ul>
</div>
<!-- ELSE -->
	<div class="uk-alert-warning uk-border-rounded-mdm" uk-alert>
		<span>{PHP.L.Prj_My_Empty}</span>
	</div>
<!-- ENDIF -->
<div id="usersprojectstructure" uk-offcanvas="flip: true; overlay: true">
    <div class="uk-offcanvas-bar">
	<button class="uk-offcanvas-close uk-light uk-button-default uk-border-rounded-mdm" type="button" uk-close></button>
	<!-- IF {PAGENAV_COUNT} > 0 -->
	<ul class="uk-list uk-list-divider">
	  <li>
	 	  <a href="{PHP.urr.user_id|cot_url('users', 'm=details&id=$this&tab=projects')}">{PHP.L.projects_projects} - {PHP.L.All}: {PHP.pagenav.entries}</a>
	  </li>
	  	<!-- BEGIN: CAT_ROW -->
	  		<li class=" <!-- IF {PRJ_CAT_ROW_SELECT} -->uk-active<!-- ENDIF -->">
	  				<a href="{PRJ_CAT_ROW_URL}">
	  						<!-- IF {PRJ_ROW_CAT_ICON} -->
	  							<img src="{PRJ_CAT_ROW_ICON}" alt="{PRJ_CAT_ROW_TITLE} ">
	  						<!-- ENDIF -->
	  						{PRJ_CAT_ROW_TITLE}
	  					<span class="uk-badge">{PRJ_CAT_ROW_COUNT_PROJECTS}</span>
	  				</a>
	  		</li>
	  	<!-- END: CAT_ROW -->
	</ul>
	<!-- ELSE -->
	<div class="uk-alert-warning uk-border-rounded-mdm" uk-alert>
		<span>{PHP.L.Prj_My_Empty}</span>
	</div>
	<!-- ENDIF -->
	<hr>
	<!-- IF {PHP.usr.id} == {PHP.urr.user_id} AND {ADDPRJ_SHOWBUTTON} -->
	<div class="uk-margin-top">
		<a class="uk-button uk-button-warning uk-width-expand" uk-tooltip="" href="{PHP|cot_url('projects', 'm=add')}"><span>{PHP.L.projects_add_to_catalog}</span></a>
	</div>
	<!-- ENDIF -->
    </div>
</div>
<!-- END: MAIN -->
