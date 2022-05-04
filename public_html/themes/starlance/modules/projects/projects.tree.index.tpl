<!-- BEGIN: MAIN -->
<div class="uk-background-primary uk-section">
	<div class="uk-container uk-container-large uk-margin-top uk-margin-bottom" id="index-projects-cats">
		<header>
		<h3 class="uk-heading-bullet uk-text-uppercase uk-text-bold uk-link-text"><span uk-tooltip="{PHP.L.Prj_Depart_title}">{PHP.L.Prj_Depart_Name}</span></h3>
		</header>
		<ul class="uk-list uk-list-divider uk-column-1-2@s uk-column-1-3@m uk-column-1-4@l">
		<!-- BEGIN: CATS -->
			<li>
				<!-- IF {ROW_ICON} -->
					<img class="uk-border-rounded" width="27" height="27" alt="{ROW_TITLE}" src="{ROW_ICON}">
				<!-- ELSE -->
					<img width="27" height="27" alt="" src="{PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/icon/036-edit.svg">
				<!-- ENDIF -->
			
			<a class="uk-link-text" uk-tooltip="{PHP.L.Prj_Cat_tooltip_look} «{ROW_TITLE}»" href="{ROW_HREF}"><span class="uk-text-middle uk-margin-small-left">{ROW_TITLE} <!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->({ROW_COUNT})<!-- ENDIF --></span></a></li>
		<!-- END: CATS -->
		</ul>
	</div>
</div>
<!-- END: MAIN -->