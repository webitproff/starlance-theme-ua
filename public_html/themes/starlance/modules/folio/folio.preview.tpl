<!-- BEGIN: MAIN -->
<link rel='stylesheet' href='https://unpkg.com/plyr@3/dist/plyr.css'>
<script src='https://unpkg.com/plyr@3'></script>
<div class="uk-section uk-padding-remove-vertical uk-background-primary uk-visible@m">
	<div class="uk-container uk-container-large uk-padding-small uk-link-text">
		<ul class="uk-breadcrumb">
            <li><a href="{PHP.cfg.mainurl}">{PHP.L.Home}</a></li>
            {PRD_TITLE|ul_transform($this)}
		</ul>
	</div>
</div>
<div class="uk-background-muted uk-section uk-padding-remove-vertical"> 
	<div class="uk-container uk-container-large">  
	<div class="uk-margin-top uk-margin-large-bottom">
		<div uk-grid>
			<div class="uk-width-expand">
				<h3 class="uk-heading-bullet uk-text-truncate">{PRD_SHORTTITLE}</h3>
			</div>
			<!-- IF {PHP.usr.id} == {PRD_OWNER_ID} OR {PHP.usr.isadmin} OR {PHP.usr.maingrp} == 5 -->
			<div class="uk-width-auto">
				<a uk-tooltip="{PHP.L.Edit}" class="uk-icon-button uk-button-warning" href="{PRD_ID|cot_url('folio','m=edit&id='$this)}" uk-icon="icon:  file-edit; ratio: 1.2" title=""></a>
			</div>
			<!-- ENDIF -->
		</div>
		<!-- IF {PRD_STATE} == 2 -->
		<div class="uk-card uk-card-body uk-card-small uk-background-default uk-margin-small uk-border-rounded">
			<div class="uk-alert uk-alert-warning">
			{PHP.L.market_forreview}
			</div>

		</div>
		<!-- ENDIF -->
		<!-- IF {PRD_STATE} == 1 -->
		<div class="uk-card uk-card-body uk-card-small uk-background-default uk-margin-small uk-border-rounded">
			<div class="uk-alert uk-alert-warning">
			{PHP.L.market_hidden}
			</div>
			<a href="{PRD_SAVE_URL}" class="uk-button uk-button-success"><span>{PHP.L.Publish}</span></a> 
		</div>
		<!-- ENDIF -->
		<div class="uk-grid-small" uk-grid> 
			<div class="uk-width-2-3@m">
				<!-- IF {PRD_ID|att_count('folio',$this)} > 0 -->
				<div class="uk-card"> 
					<div data-att-display="all">
						{PRD_ID|att_display('folio',$this,'','attacher.display.folio','all')}
					</div>
				</div>
				<!-- ENDIF -->
				<div class="uk-card uk-card-small uk-card-body uk-background-default uk-border-rounded uk-margin-small-top"> 
					{PRD_TEXT}
				</div> 
			</div> 
			<div class="uk-width-1-3@m"> 
				<div class="uk-card uk-card-small uk-card-body uk-background-default uk-border-rounded">

				<ul class="uk-list uk-list-divider">
					<!-- IF {PRD_COST} > 0 -->
					<li>
					<div class="uk-grid-small" uk-grid>
						<div class="uk-width-expand uk-flex uk-flex-bottom" uk-leader="fill: -">
							<span class="uk-text-large uk-link-text">{PHP.L.prd_cost_card}:</span>
						</div>
						<div>
							<button class="uk-button uk-button-primary uk-width-1-1">{PRD_COST} {PHP.cfg.payments.valuta}</button>
						</div>
					</div>
					</li>
					<!-- ENDIF -->
					<!-- IF {PHP.usr.id} == {PRD_OWNER_ID} OR {PHP.usr.isadmin} OR {PHP.usr.maingrp} == 5 -->
					<li>
					<div class="uk-grid-small" uk-grid>
						<div class="uk-width-expand uk-flex uk-flex-bottom" uk-leader="fill: -">
							<span class="uk-link-text">Статус:</span>
						</div>
						<div>
							<span class="uk-label">{PRD_LOCALSTATUS}</span>
						</div>
					</div>
					</li>
					<!-- ENDIF -->
					<!-- IF {PRD_USER_IS_ADMIN} -->
					<li>{PRD_ADMIN_EDIT}</li>
					<!-- IF {PRD_STATE} != 2 -->
					<li><a href="{PRD_HIDEPRODUCT_URL}">{PRD_HIDEPRODUCT_TITLE}</a></li>
					<!-- ENDIF -->
					<!-- ENDIF -->
					<li>
					<div class="uk-grid-small" uk-grid>
						<div class="uk-width-expand uk-flex uk-flex-bottom" uk-leader="fill: -">
							<span class="uk-link-text">Количество просмотров:</span>
						</div>
						<div>
							<span class="uk-label">{PRD_COUNT}</span>
						</div>
					</div>
					</li>
					<li>
					<div class="uk-grid-small" uk-grid>
						<div class="uk-width-expand uk-flex uk-flex-bottom" uk-leader="fill: -">
							<span class="uk-link-text">ID карточки в маркетплейсе:</span>
						</div>
						<div>
							<span class="uk-label">#{PRD_ID}</span>
						</div>
					</div>
					</li>
					<li><p class="uk-font-face uk-heading-bullet">Категория: <a class="uk-link-text" href="{PRD_CATURL}"><span uk-icon="link" class="uk-margin-small-right uk-icon"></span><span class="uk-text-bold uk-text-middle uk-text-truncate">{PRD_CATTITLE}</span></a></p></li>
					<li><p class="uk-font-face uk-heading-bullet">Опубликовано: <span uk-icon="calendar" class="uk-margin-small-right uk-icon"></span><span class="uk-text-middle uk-text-success">{PRD_DATE}</span></p></li>
					<!-- IF {PHP.cot_plugins_active.locationselector} -->
					<li><span uk-icon="world" class="uk-text-warning uk-margin-small-right uk-icon"></span><span class="uk-text-middle uk-link-text" uk-tooltip="{PHP.L.country_tpl}">{PRD_COUNTRY}</span></li>
					<li><span uk-icon="location" class="uk-text-warning uk-margin-small-right uk-icon"></span><span class="uk-text-middle uk-link-text" uk-tooltip="{PHP.L.region_tpl}">{PRD_REGION}</span></li>
					<li><img  class="uk-margin-small-right" width="27" height="27" alt="" uk-img="data-src: themes/{PHP.theme}/img/icon/university.svg" uk-svg="uk-preserve"><span class="uk-text-bold uk-text-middle uk-link-text" uk-tooltip="{PHP.L.city_tpl}">{PRD_CITY}</span></li>
					<!-- ENDIF -->
				</ul>
				</div>
				<div class="uk-card uk-card-small uk-card-body uk-background-default uk-border-rounded uk-margin-top">
					<span class="uk-button uk-button-success uk-width-1-1">Продавец [{PRD_OWNER_USERSELECTED_GROUP_TITLE}]</span>
					<hr class="uk-divider-icon uk-margin-small">
					<div class="uk-grid-small" uk-grid> 
						<div class="uk-width-1-3@m uk-text-center">
							<!-- IF {PRD_OWNER_AVATAR_SRC} -->
							<div class="uk-margin-small-bottom">
								<img class="uk-border-rounded" src="{PRD_OWNER_AVATAR_SRC}" alt="{PRD_OWNER_NICKNAME}"  width="250" height="250" />
							</div>
							<!-- ELSE -->
							<div class="uk-margin-small-bottom">
								<img class="uk-border-rounded" src="themes/{PHP.theme}/img/avatar.png" alt="{PRD_OWNER_NICKNAME}"  width="250" height="250" />
							</div>
							<!-- ENDIF -->
							<p class="uk-font-face uk-text-meta uk-margin-small-top"> 
								<a class="uk-link-text" href="{PRD_OWNER_DETAILSLINK}#tab_reviews">Отзывов: <span class="uk-label">{PRD_OWNER_REVIEWS_SUMM}</span></a>
							</p> 
						</div>
						<div class="uk-width-expand@m"> 
							<h5 class="uk-margin-remove">
								<a class="uk-link-text" uk-tooltip="{PRD_OWNER_NICKNAME}" href="{PRD_OWNER_DETAILSLINK}">
								<!-- IF {PRD_OWNER_FIRST_SECOND_NAME} -->
								<span class="uk-text-warning">{PRD_OWNER_FIRST_SECOND_NAME}</span>
								<hr class="uk-margin-remove">
								<!-- ELSE -->
								<span class="uk-text-emphasis uk-text-bold">[{PRD_OWNER_NICKNAME}]</span>
								<!-- ENDIF -->
								</a>
							</h5> 
							<div class="uk-margin-remove">
							<!-- IF {PRD_OWNER_ISPRO} -->
							<span class="uk-label uk-label-success">PRO</span>
							<!-- ENDIF -->
							<span class="uk-label uk-label-success">{PRD_OWNER_USERPOINTS}</span>
							<!-- IF {PRD_OWNER_TEXT} -->
							<span class="uk-text-emphasis uk-text-small">{PRD_OWNER_TEXT|cot_string_truncate($this,211)}</span>
							<!-- ELSE -->
							{PHP.cfg.maintitle} - {PHP.cfg.subtitle} ( в настройках профиля смените текст на свой)
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
<script>
// Change the second argument to your options:
// https://github.com/sampotts/plyr/#options
const player = new Plyr('video', { captions: { active: true } });

// Expose player so it can be used from the console
window.player = player;
</script>
<!-- END: MAIN -->