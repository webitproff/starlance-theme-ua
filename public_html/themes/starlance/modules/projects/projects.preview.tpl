<!-- BEGIN: MAIN -->
<div class="uk-section uk-padding-remove-vertical uk-background-primary uk-visible@m">
	<div class="uk-container uk-container-large uk-padding-small uk-link-text">
		<ul class="uk-breadcrumb">
            <li><a href="{PHP.cfg.mainurl}">{PHP.L.Home}</a></li>
            {PRJ_TITLE|ul_transform($this)}
		</ul>
	</div>
</div>
<div class="uk-section uk-background-muted uk-height-viewport">
	<div class="uk-container">
		<!-- IF {PRJ_STATE} == 2 -->
		<div class="uk-alert-warning" uk-alert>{PHP.L.projects_forreview}</div>
		<!-- ENDIF -->
		<!-- IF {PRJ_STATE} == 1 -->
		<div class="uk-alert-warning" uk-alert>{PHP.L.projects_hidden}</div>
		<!-- ENDIF -->
		<a href="{PRJ_SAVE_URL}" class="uk-button uk-button-success"><span>{PHP.L.Publish}</span></a> 

		<div class="uk-card uk-card-default uk-card-small uk-margin-bottom uk-border-rounded">
			<!-- IF {PRJ_USER_IS_ADMIN} -->
			<div class="uk-position-top-right uk-position-z-index">
				<a class="uk-icon-button uk-button-danger uk-icon" uk-icon="icon: cog; ratio: 1.5"></a>
				<div uk-dropdown="mode: click; animation: uk-animation-slide-left;">
					<ul class="uk-nav uk-dropdown-nav uk-list uk-list-divider">
						<li><a href="{PRJ_EDIT_URL}" class="uk-link-text"><span>{PHP.L.Edit}</span></a></li>
					<!-- IF {PRJ_STATE} != 2 -->
						<li><a href="{PRJ_HIDEPROJECT_URL}" class="uk-link-text">{PRJ_HIDEPROJECT_TITLE}</a></li> 
						<!-- IF {PRJ_PERFORMER} -->
						<li><a href="{PRJ_REALIZEDPROJECT_URL}" class="uk-link-text">{PRJ_REALIZEDPROJECT_TITLE}</a></li>					
						<!-- ENDIF -->
					<!-- ENDIF -->									
					</ul>
				</div>
			</div>
			<!-- ENDIF -->	
			<div class="uk-grid-small uk-grid-divider" uk-grid>
				<div class="uk-width-3-4@m">
					<div class="uk-panel uk-padding-small">
						<h1 class="uk-heading-bullet uk-text-success uk-h3">{PRJ_SHORTTITLE} - {PRJ_CATTITLE}<!-- IF {PRJ_COUNTRY} OR {PRJ_REGION} OR {PRJ_CITY} -->, {PRJ_COUNTRY} {PRJ_REGION} {PRJ_CITY}<!-- ENDIF --></h1>
					</div>
				</div>
				<div class="uk-width-1-4@m">
					<div class="uk-panel uk-padding-small">
					<!-- IF {PRJ_COST} > 0 -->
					<div class="">
					<span class="uk-link-text">{PHP.L.projects_price}: </span>
					<span class="uk-button uk-button-small uk-button-success">{PRJ_COST}</span>
					<span class="uk-text-warning"> {PHP.cfg.payments.valuta}</span>
					</div>
					<!-- ELSE -->
					не указано
					<!-- ENDIF -->
					</div>
				</div>
			</div>
			<hr>
			<div class="uk-panel uk-padding-small">
				{PRJ_TEXT}
			</div>
			<div class="uk-card-body">
				<!-- IF {PRJ_REALIZED} -->
				<div class="uk-text-bold uk-text-danger">{PHP.L.projects_isrealized}</div>
				<!-- ENDIF -->
				<h4 class="uk-heading-line"><span>{PHP.cot_groups.7.title} / {PHP.L.Date}: {PRJ_DATE}</span></h4>
				<div class="uk-comment-header">
					<div class="uk-grid-medium uk-flex-middle" uk-grid>
						<div class="uk-width-auto">
						<!-- IF {PRJ_OWNER_AVATAR_SRC} -->
							<img class="uk-comment-avatar uk-border-rounded" src="{PRJ_OWNER_AVATAR_SRC}" width="150" height="150" alt="">
							<!-- ELSE -->
							<img class="uk-border-rounded" width="150" height="150" alt="{PRJ_OWNER_AVATAR_SRC}" src="themes/{PHP.theme}/img/avatar.png">
						<!-- ENDIF -->
						</div>
						<div class="uk-width-expand">
							<h4 class="uk-comment-title uk-margin-remove">{PRJ_OWNER_NAME}</h4>
							<div class="uk-comment-meta uk-margin-remove-top">
								<!-- IF {PRJ_PERFORMER_TEXT} -->
								<span class="uk-text-muted">О себе: </span><span class="">{PRJ_OWNER_TEXT}</span>  
								<!-- ENDIF -->
								<p><span class="uk-icon uk-text-warning" uk-icon="icon: users; ratio: 1.2"></span><span class="uk-text-bold uk-link-text uk-margin-small-left uk-text-middle" uk-tooltip="Количество просмотров">{PRJ_COUNT}</span>
								</p>
							</div>
						</div>
					</div>
				</div>
				<!-- IF {PRJ_ID|att_count('projects',$this)} > 0 -->
				<hr class="uk-divider-icon" style="margin: auto;">
				<div data-att-display="all">
					<p>{PHP.L.att_attachments}<span class="uk-margin-small-left uk-icon uk-text-warning" uk-icon="icon: image; ratio: 1.2"></span><span class="uk-text-bold uk-link-text uk-margin-small-left uk-text-middle" uk-tooltip="Всего прикрепленно файлов / из них картинок / другие">{PRJ_ID|att_count('projects',$this)}/{PRJ_ID|att_count('projects',$this,'','images')}/{PRJ_ID|att_count('projects',$this,'','files')}</span>
					</p>
					{PRJ_ID|att_display('projects',$this,'','attacher.display.projects','all')}
				</div>
				<!-- ENDIF -->
			</div>
			<!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
			<div class="uk-margin-remove-vertical uk-alert-primary" uk-alert>
				<a class="uk-alert-close" uk-close></a>
				<p>Расположение файла, формирующего шаблон страницы:</p>
				<div class="uk-panel uk-text-break uk-text-secondary">{PHP.mskin}</div>
			</div>
			<!-- ENDIF -->
		</div>
	</div>
</div>
<!-- END: MAIN -->