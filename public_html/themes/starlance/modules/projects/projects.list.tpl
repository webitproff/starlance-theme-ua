<!-- BEGIN: MAIN -->
<!-- IF {PHP.cot_plugins_active.paypro} -->
<!-- IF !{PHP|cot_getuserpro()} AND {PHP.cfg.plugin.paypro.projectslimit} > 0 AND {PHP.cfg.plugin.paypro.projectslimit} <= {PHP.usr.id|cot_getcountprjofuser($this)} -->
<div class="alert-danger-full uk-margin-remove-vertical" uk-alert>
	<div class="uk-container">
		<h4 class="uk-text-bold uk-animation-slide-right uk-animation-toggle" tabindex="0">
		<img class="uk-animation-shake uk-margin-small-right" width="36" height="36" alt="" uk-img="data-src: /themes/starlance/img/icon/048-notification.svg" uk-svg="uk-preserve" >
		<span class="uk-text-middle">{PHP.L.Warning}</span></h4>
		<p>{PHP.L.paypro_warning_projectslimit_empty}</p>
	</div>
</div>
<!-- ENDIF -->
<!-- IF !{PHP|cot_getuserpro()} AND {PHP.cfg.plugin.paypro.offerslimit} > 0 AND {PHP.cfg.plugin.paypro.offerslimit} <= {PHP.usr.id|cot_getcountoffersofuser($this)} -->
<div class="alert-danger-full uk-margin-remove-vertical" uk-alert>
	<div class="uk-container">
		<h4 class="uk-text-bold uk-animation-slide-right uk-animation-toggle" tabindex="0">
		<img class="uk-animation-shake uk-margin-small-right" width="36" height="36" alt="" uk-img="data-src: /themes/starlance/img/icon/048-notification.svg" uk-svg="uk-preserve" >
		<span class="uk-text-middle">{PHP.L.Warning}</span></h4>
		<p>{PHP.L.paypro_warning_offerslimit_empty}</p>
	</div>
</div>
<!-- ENDIF -->
<!-- IF {PHP.usr.id} == 0 AND !{PHP|cot_getuserpro()} AND {PHP.cfg.plugin.paypro.offerslimit} > 0 -->
<div class="alert-danger-full uk-margin-remove-vertical" uk-alert>
	<div class="uk-container">
		<h4 class="uk-text-bold uk-animation-slide-right uk-animation-toggle" tabindex="0">
		<img class="uk-animation-shake uk-margin-small-right" width="36" height="36" alt="" uk-img="data-src: /themes/starlance/img/icon/048-notification.svg" uk-svg="uk-preserve" >
		<span class="uk-text-middle">{PHP.L.Warning}</span></h4>
		<p>{PHP.L.paypro_warning_projectslimit_guest}</p>
	</div>
</div>
<!-- ENDIF -->
<!-- ENDIF -->
<!-- partial:index.partial.html -->
<div class="uk-offcanvas-content">
<div class="uk-section uk-padding-remove-vertical uk-background-primary">
	<div class="uk-container uk-container-small uk-padding-small">
		<div class="uk-grid-small" uk-grid>
			<div class="uk-width-auto uk-flex">
				<a uk-tooltip="Опции фильтра" uk-toggle="target: #sidebar" class="uk-icon-button  uk-button-default" uk-icon="settings"></a>
				<!-- IF {PHP.usr.auth_write} -->
				<a rel="nofollow" href="{SUBMITNEWPROJECT_URL}" title="{PHP.L.projects_add_to_catalog}" class="uk-margin-small-left uk-icon-button uk-button-warning" uk-icon="plus-circle"></a>
				<!-- ENDIF -->
			</div>
			<div class="uk-width-expand">
				<h1 class="uk-heading-bullet uk-text-uppercase uk-text-bold uk-link-text uk-h4 uk-margin-remove-vertical">
					 <span class="uk-text-middle"><!-- IF {PHP.c} -->{CATTITLE}<!-- ELSE -->{PHP.L.Prj_Depart_Name}<span class=" uk-visible@m"> - {PHP.cfg.maintitle}</span><!-- ENDIF --></span>
				</h1>
			</div>
		</div>
	</div>
</div>
<div class="uk-section uk-padding-remove">
	<div class="">
		<div class="uk-grid-collapse" uk-grid>
			<div id="sidebar" class="uk-width-1-5@l uk-width-1-4@m uk-padding-small uk-padding-remove-top uk-animation-slide-left starlance-bg-darkgreenblue uk-light">
				<ul class="uk-nav-default uk-nav-parent-icon" uk-nav>
					<li class="uk-nav-header uk-margin-top"><a href="{PHP|cot_url('projects')}"><span class="uk-margin-small-right" uk-icon="icon: refresh"></span><span class="uk-text-middle">Сбросить фильтр</span></a></li>
					<li class="uk-nav-divider"></li>
					<li class="uk-parent uk-nav-header uk-margin-remove-top">
						<a href=""><span class="uk-margin-small-right" uk-icon="icon: thumbnails"></span><span class="uk-text-middle">Категории заданий</span></a>
						<!-- IF {CATALOG} -->
							{CATALOG}
						<!-- ENDIF -->
					</li>
					<li class="uk-nav-divider"></li>
					<li class="uk-parent uk-nav-header uk-margin-remove-top">
						<a href=""><span class="uk-margin-small-right" uk-icon="icon: album"></span><span class="uk-text-middle">Типы заданий</span></a>
						<!-- BEGIN: PTYPES -->
						<ul class="uk-list uk-list-divider uk-nav-default uk-nav-parent-icon" uk-nav>
							<li></li>
							<li<!-- IF {PTYPE_ALL_ACT} --> class="uk-text-danger"<!-- ENDIF -->><a href="{PTYPE_ALL_URL}">{PHP.L.All}</a></li>
							<!-- BEGIN: PTYPES_ROWS -->
							<li><a <!-- IF {PTYPE_ROW_ACT} --> class="uk-text-danger"<!-- ENDIF -->href="{PTYPE_ROW_URL}">{PTYPE_ROW_TITLE}</a></li>
							<!-- END: PTYPES_ROWS -->
							<!-- IF {PHP.cot_plugins_active.paypro} -->
							<li<!-- IF {PHP.forpro} --> class="uk-text-danger"<!-- ENDIF -->><a href="{FORPRO_URL}"><span class="label label-important">{PHP.L.paypro_forpro}</span></a></li>
							<!-- ENDIF -->
						</ul>	
						<!-- END: PTYPES -->
					</li>
					<li class="uk-nav-divider"></li>
				</ul>
				<form action="{SEARCH_ACTION_URL}" method="get" class="uk-form-stacked">
					<input type="hidden" name="e" value="projects" />
					<input type="hidden" name="type" value="{PHP.type}" />
					<input type="hidden" name="l" value="{PHP.lang}" />
					<div class="uk-margin">
						<label class="uk-form-label">{PHP.L.Search}:</label>
						<div class="uk-form-controls">{SEARCH_SQ}</div>
					</div>
					<div class="uk-margin">
						<label class="uk-form-label">{PHP.L.Category}:</label>
						<div class="uk-form-controls">{SEARCH_CAT}</div>
					</div>
					<div class="uk-margin">
						<label class="uk-form-label">{PHP.L.Order}:</label>
						<div class="uk-form-controls">{SEARCH_SORTER}</div>
					</div>
					<!-- IF {PHP.cot_plugins_active.locationselector} -->
					<div class="uk-margin">
						<label class="uk-form-label">{PHP.L.Location}:</label>
						<div class="uk-form-controls">{SEARCH_LOCATION}</div>
					</div>
					<!-- ENDIF -->

					<div class="uk-margin uk-text-center">
						<input type="submit" name="search" class="uk-button uk-button-warning" value="{PHP.L.Search}" />
					</div>	
				</form>
			</div>
			<div class="uk-width-expand uk-background-default">
				<section class="uk-section uk-padding-remove" uk-height-viewport="offset-top: true">
					<div class="uk-container uk-margin-top">
						<!-- IF {CATDESC} -->
						<span class="uk-text-muted">{CATDESC}</span>
						<!-- ELSE -->
						<span class="uk-text-muted">{PHP.cfg.projects.description}</span>
						<!-- ENDIF -->
					</div>
					<div id="listprojects">
						<div class="uk-container uk-margin-top">
						<!-- BEGIN: PRJ_ROWS -->
							<div class="uk-card uk-background-muted uk-card-body uk-card-small uk-border-rounded uk-scrollspy-inview uk-animation-fade uk-margin-bottom">
								<!-- IF {PHP.usr.id} == {PRJ_ROW_OWNER_ID} OR {PHP.usr.isadmin} -->
								<div class="uk-position-small uk-position-top-right uk-position-z-index">
									<a class="uk-icon-button uk-button-danger uk-icon" uk-icon="icon: cog; ratio: 1.5"></a>
								</div>
									<div uk-dropdown="mode: click; animation: uk-animation-slide-left;">
										<ul class="uk-nav uk-dropdown-nav uk-list uk-list-divider">
											<li><a uk-tooltip="{PHP.L.Edit}" class="uk-margin-right uk-text-danger uk-icon" href="{PRJ_ROW_ID|cot_url('projects','m=edit&id='$this)}">{PHP.L.Edit}</a></li>
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
											<div uk-grid>
												<div class="uk-width-3-4@m">
														<h2 class="uk-text-large uk-text-light">
															<a href="{PRJ_ROW_URL}">{PRJ_ROW_SHORTTITLE}</a>
														</h2>
												</div>
												<div class="uk-text-right uk-width-1-4@m uk-visible@m">
													<!-- <img uk-tooltip="Безопасная сделка" src="themes/{PHP.theme}/img/minisbr.svg" width="32" height="32" title="" alt="Безопасная сделка"> -->
													<!-- IF {PHP.cot_plugins_active.paypro} AND {PRJ_ROW_FORPRO} -->
													<label uk-tooltip="Только c PRO аккаунтом" class="uk-label uk-label-danger">PRO</label>
													<!-- ENDIF -->
												</div>
											</div>
											<p class="uk-text-small uk-margin-remove-top">
												{PRJ_ROW_SHORTTEXT|strip_tags($this)}
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
											<div class="uk-grid-small uk-flex-middle" uk-grid>
												<div class="uk-width-auto">
													<!-- IF {PRJ_ROW_OWNER_AVATAR_SRC} -->
													<img class="uk-border-rounded" width="50" height="50" alt="{PRJ_ROW_OWNER_NICKNAME}" src="{PRJ_ROW_OWNER_AVATAR_SRC}">
													<!-- ELSE -->
													<img class="uk-border-rounded" width="50" height="50" alt="{PRJ_ROW_OWNER_NICKNAME}" src="themes/{PHP.theme}/img/avatar.png">
													<!-- ENDIF -->
												</div>
												<div class="uk-width-expand">
													<h6 class="uk-margin-remove-bottom uk-text-truncate">
													<!-- IF {PRJ_ROW_OWNER_FIRST_SECOND_NAME} -->
														<a class="uk-link-text" href="{PRJ_ROW_OWNER_DETAILSLINK}">
														{PRJ_ROW_OWNER_FIRST_SECOND_NAME}
														<!-- ELSE -->
														[{PRJ_ROW_OWNER_NICKNAME}]
														</a>
													<!-- ENDIF -->
													</h6>
													<div class="uk-text-meta uk-margin-remove-top">
														<span><a class="uk-link" href="{PRJ_ROW_OWNER_DETAILSLINK}#tab_reviews">{PRJ_ROW_OWNER_REVIEWS_SUMM} отзывов</a></span>
														<br>
														<time datetime="{PRJ_ROW_DATE}">{PRJ_ROW_DATE_STAMP|cot_date('j F Y', $this)}</time>
													</div>
												</div>
											</div>
											<div class="uk-margin-top uk-text-center">
												<div class="uk-margin-small uk-text-center">
												<span class="uk-text-success">{PHP.L.avaleble_money}</span><br>
												<!-- IF {PRJ_ROW_COST} > 0 -->
												<span class="uk-badge uk-padding-small">{PRJ_ROW_COST} {PHP.cfg.payments.valuta}</span>
												<!-- ENDIF -->
												</div>
											<!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
												<div>
												<span class="uk-text-danger" uk-tooltip="{PHP.L.offers_count}" uk-icon="icon: commenting"> {PRJ_ROW_OFFERS_COUNT|cot_declension($this, '')}</span>
												</div>
											<!-- ENDIF -->
												<!-- IF {PHP.usr.maingrp} == 4 -->
													<a  class="uk-button uk-button-small uk-button-default" href="{PRJ_ROW_OFFERS_ADDOFFER_URL}">
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
					</div>
					<div class="uk-container" uk-height-viewport="expand: true">
						<!-- IF {PAGENAV_COUNT} > 0 -->
						<nav><ul class="uk-pagination uk-flex-center uk-margin-large-bottom">{PAGENAV_PAGES}</ul></nav>
						<!-- ELSE -->
						<div class="uk-text-muted">{PHP.L.projects_notfound}</div>
						<!-- ENDIF -->
					</div>
				</section>
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