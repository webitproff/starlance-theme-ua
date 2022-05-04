<!-- BEGIN: MAIN -->
<div class="uk-section uk-padding-remove-vertical uk-background-primary">
	<div class="uk-container uk-container-small uk-padding-small">
		<form action="{SEARCH_ACTION_URL}" method="get" class="uk-form-stacked">
			<input type="hidden" name="f" value="search" />
			<input type="hidden" name="e" value="users" />
			<input type="hidden" name="group" value="{PHP.group}" />
			<input type="hidden" name="cat" value="{PHP.cat}" />
			<input type="hidden" name="l" value="{PHP.lang}" />
			<div uk-grid>
				<div class="uk-width-expand">
					<div class="uk-inline">
						<input class="uk-input uk-width-1-1 uk-border-rounded-mdm" name="sq" value=""  placeholder="Поиск по никнейму">
						<a href="#" class="uk-form-icon uk-form-icon-flip" data-uk-icon="icon: settings" data-uk-toggle="target: #filter"></a>
					</div>
				</div>
				<div class="uk-width-auto uk-flex uk-flex-middle">
					<a uk-tooltip="Открыть специализации пользователей" href="#userstructure" uk-toggle class="uk-icon-button  uk-button-default" uk-icon="thumbnails"></a>
				</div>
			</div>
			<div class="uk-animation-slide-bottom" id="filter" hidden>
				<div class="uk-grid-small uk-child-width-1-1@s uk-child-width-1-2@m uk-margin-top" data-uk-grid>
					<div>
						<label class="uk-form-label">{PHP.L.Category}:</label>
						<div class="uk-form-controls">{SEARCH_CAT}</div>
					</div>
				</div>
				<!-- IF {PHP.cot_plugins_active.locationselector} -->
				<div class="uk-position-relative">
					<div class="uk-inline uk-width-1-1">
					{SEARCH_LOCATION}
					</div>
				</div>
				<!-- ENDIF -->
				<div class="uk-margin">
					<input type="submit" name="search" class="uk-button uk-button-default" value="{PHP.L.Search}" />
				</div>
			</div>
		</form>
	</div>
</div>
<div class="uk-background-default uk-section uk-padding-small">
	<div class="uk-container uk-container-large">

			<h1 class="uk-heading-bullet uk-text-uppercase uk-text-bold uk-link-text uk-h2">
				 <!-- IF {PHP.cat} -->{CATTITLE} - {USERS_TITLE}<!-- ELSE -->{USERS_TITLE}<!-- ENDIF -->
			</h1>

		<div class="uk-child-width-1-2@m uk-child-width-1-2@l uk-child-width-1-2@xl uk-margin-small-top uk-grid uk-flex-top uk-flex-wrap-top" data-uk-grid="masonry: true" data-uk-scrollspy="cls: uk-animation-fade; target: .uk-card; delay: 150; repeat: true">
			<!-- BEGIN: USERS_ROW -->
			<div>
				<div class="uk-card uk-background-muted uk-card-body uk-card-small uk-border-rounded uk-scrollspy-inview uk-animation-fade" style="">
					<div data-uk-grid="" class="uk-grid">
						<div class="uk-width-1-3@m uk-text-center uk-first-column">
							<a href="{USERS_ROW_DETAILSLINK}" uk-tooltip="Смотреть страницу пользователя">
							<!-- IF {USERS_ROW_AVATAR_SRC} -->
							<img class="uk-border-rounded"  width="250" height="250" alt="{USERS_ROW_NICKNAME}" src="{USERS_ROW_AVATAR_SRC}">
							<!-- ELSE -->
							<img class="uk-border-rounded"  width="250" height="250" alt="{USERS_ROW_NICKNAME}" src="themes/{PHP.theme}/img/avatar.png">
							<!-- ENDIF -->
							</a>
					<div class="uk-position-top">
					<div class="uk-grid-small uk-flex-right" uk-grid>
					<!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
						<div>
							<a uk-tooltip="Администрирование профиля «{USERS_ROW_NICKNAME}»" class="uk-icon-button uk-button-danger" href="{USERS_ROW_ID|cot_url('users','m=edit&id='$this)}" uk-icon="icon: file-edit; ratio: 1.2" title=""></a>
						</div>
						<!-- {PHP.cot_plugins_active.loginAsUser} -->
						<div>
							<a uk-tooltip="Войти как «{USERS_ROW_NICKNAME}»" class="uk-icon-button uk-button-secondary" href="{USERS_ROW_ID|cot_url('loginAsUser', 'uid=$this')}" uk-icon="icon: sign-in; ratio: 1.2" title=""></a>
						</div>
						<!-- ENDIF -->
						<!-- ENDIF -->
						<!-- IF {PHP.usr.id} == {PHP.urr.user_id} -->
						<div>
							<a uk-tooltip="Настройка и заполненние данных Вашего профиля" class="uk-icon-button uk-button-danger" href="{PHP|cot_url('users', 'm=profile')}" uk-icon="icon: cog; ratio: 1.2" ></a>
						</div>
						<!-- ENDIF -->
					</div>
					</div>
						</div>
						<div class="uk-width-expand@m">
							<a class="uk-link-text" href="{USERS_ROW_DETAILSLINK}"><span class="uk-text-emphasis uk-text-bold uk-margin-small-right">[{USERS_ROW_NICKNAME}]</span><!-- IF {USERS_ROW_FIRST_SECOND_NAME} --><span class="uk-text-warning uk-margin-small-left">{USERS_ROW_FIRST_SECOND_NAME}</span><!-- ENDIF --></a>
		<hr class="uk-margin-small">
		<!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
		<div class="uk-grid-collapse uk-child-width-expand@s uk-text-center" uk-grid>
			<div>
				<span uk-tooltip="{PHP.L.Registered}" class="uk-text-bold uk-text-danger">{USERS_ROW_REGDATE_STAMP|cot_date('d.m.Y H:i', $this)}</span>
			</div>
			<div>
				<span  uk-tooltip="{PHP.L.Lastlogged}" class="uk-text-bold uk-text-danger">{USERS_ROW_LASTLOG_STAMP|cot_date('d.m.Y H:i', $this)}</span>
			</div>
		</div>
		<!-- ENDIF -->
							<p class="uk-text-justify uk-margin-remove uk-font-face uk-dropcap">
							<!-- IF {PHP.urr.user_text} -->
							{PHP.urr.user_text|cot_string_truncate($this,211)}
							<!-- ELSE -->
							{PHP.cfg.maintitle} - {PHP.cfg.subtitle} ( в настройках профиля смените текст на свой)
							<!-- ENDIF -->
							</p>

							<!-- IF {USERS_ROW_ISPRO} --><span class="uk-text-bold uk-text-danger">PRO</span><!-- ENDIF -->
							<div class="uk-margin-remove">
							{USERS_ROW_COUNTRY} {USERS_ROW_REGION} {USERS_ROW_CITY}
							</div>
							<div class="uk-margin-remove">
							<span class="uk-label uk-label-success" uk-tooltip="Основная группа">{USERS_ROW_MAINGRPNAME}</span> <span class="uk-label uk-label-warning" uk-tooltip="Рейтинг пользователя">{USERS_ROW_USERPOINTS}</span>
							</div>
							<p class="uk-margin-remove-bottom uk-text-truncate">{USERS_ROW_CATS|cot_usercategories_tree($this, '', 'listlev1')}</p>
						</div>
					</div>
				</div>
			</div>
			<!-- END: USERS_ROW -->
		</div>
		<!-- IF {USERS_TOP_TOTALUSERS} > 0 -->
		<ul class="uk-pagination uk-flex-center uk-margin-large-bottom">{USERS_TOP_PAGEPREV}{USERS_TOP_PAGNAV}{USERS_TOP_PAGENEXT}
		</ul>
		<!-- ELSE -->
		<div class="uk-alert">{PHP.L.Noitemsfound}</div>
		<!-- ENDIF -->
	</div>
</div>
<div id="userstructure" uk-offcanvas="flip: true; overlay: true">
    <div class="uk-offcanvas-bar">
        {USERCATEGORIES_CATALOG}
    </div>
</div>
<!-- END: MAIN -->
