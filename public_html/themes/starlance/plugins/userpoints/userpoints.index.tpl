<!-- BEGIN: MAIN -->
<div class="uk-background-default">
	<section class="uk-padding-small">
		<div class="uk-container uk-container-large">
			<h3 class="uk-heading-bullet uk-text-uppercase uk-text-bold uk-link-text">
				 Топ активных пользователей сайта
			</h3>
		<div class="uk-child-width-1-2@m uk-child-width-1-2@l uk-child-width-1-2@xl uk-margin-small-top uk-grid-match" uk-grid="" uk-scrollspy="target: > div; cls: uk-animation-fade; delay: 300">
			<!-- BEGIN: TOP_ROW -->
			<div>
				<div class="uk-card uk-background-muted uk-card-body uk-card-small uk-border-rounded uk-scrollspy-inview uk-animation-fade" style="">
					<div uk-grid="" class="uk-grid">
						<div class="uk-width-1-3@m uk-text-center uk-first-column">
							<a href="{TOP_ROW_DETAILSLINK}" uk-tooltip="Смотреть страницу пользователя">
							<!-- IF {TOP_ROW_AVATAR_SRC} -->
							<img class="uk-border-rounded"  width="250" height="250" alt="{TOP_ROW_NICKNAME}" src="{TOP_ROW_AVATAR_SRC}">
							<!-- ELSE -->
							<img class="uk-border-rounded"  width="250" height="250" alt="{TOP_ROW_NICKNAME}" src="themes/{PHP.theme}/img/avatar.png">
							<!-- ENDIF -->
							</a>
						<!-- IF {PHP.usr.maingrp} == 5 -->
						<div class="uk-position-top-right">
							<a uk-tooltip="{PHP.L.Edit}" class="uk-icon-button  uk-button-default" href="{TOP_ROW_ID|cot_url('users','m=edit&id='$this)}" uk-icon="icon:  file-edit; ratio: 1.2" title=""></a>
						</div>
						<!-- ENDIF -->
						</div>
						<div class="uk-width-expand@m">
							<a class="uk-link-text" href="{TOP_ROW_DETAILSLINK}"><span class="uk-text-emphasis uk-text-bold uk-margin-small-right">[{TOP_ROW_NICKNAME}]</span><!-- IF {TOP_ROW_FIRST_SECOND_NAME} --><span class="uk-text-warning uk-margin-small-left">{TOP_ROW_FIRST_SECOND_NAME}</span><!-- ENDIF --></a>
							<p class="uk-text-justify uk-margin-remove uk-font-face uk-dropcap">
							<!-- IF {TOP_ROW_TEXT} -->
							{TOP_ROW_TEXT|strip_tags($this)|mb_substr($this, 0, 255, 'UTF-8')} ...
							<!-- ELSE -->
							{PHP.cfg.maintitle} - {PHP.cfg.subtitle} ( в настройках профиля смените текст на свой)
							<!-- ENDIF -->
							</p>

							<!-- IF {TOP_ROW_ISPRO} --><span class="uk-text-bold uk-text-danger">PRO</span><!-- ENDIF -->
<!--
<div class="uk-margin-remove">
{TOP_ROW_COUNTRY} {TOP_ROW_REGION} {TOP_ROW_CITY}
</div> 
-->
							<div class="uk-margin-remove">
							<span class="uk-label uk-label-success" uk-tooltip="Основная группа">{TOP_ROW_MAINGRPNAME}</span> <span class="uk-label uk-label-warning" uk-tooltip="Рейтинг пользователя">{TOP_ROW_USERPOINTS}</span>
							</div>
							<p class="uk-margin-remove-bottom uk-text-truncate">{TOP_ROW_CATS|cot_usercategories_tree($this, '', 'listlev1')}</p>
						</div>
					</div>
				</div>
			</div>
			<!-- END: TOP_ROW -->
		</div>
		</div>
	</section>
</div>


<!-- END: MAIN -->