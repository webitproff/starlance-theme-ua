<!-- BEGIN: MAIN -->
<div class="uk-section uk-padding-remove-vertical uk-background-primary uk-box-shadow-medium">
<div class="uk-container uk-container-large">
<div uk-slider="clsActivated: uk-transition-active; center: true">
    <div class="uk-position-relative">
        <div class="uk-slider-container uk-margin-top uk-margin-bottom">
            <ul class="uk-slider-items uk-child-width-1-2@s uk-grid-match uk-grid-small" uk-grid>       
	<!-- BEGIN: TOP_ROW -->
                    <li>
                        <div class="uk-card uk-card-body uk-card-default uk-card-small uk-border-rounded">
                            <div class="uk-grid-small uk-grid" uk-grid="">
                                <div class="uk-width-1-3@m uk-text-center uk-first-column"> 
									<a href="{TOP_ROW_DETAILSLINK}" uk-tooltip="Смотреть страницу пользователя">
									<!-- IF {TOP_ROW_AVATAR_SRC} -->
									<img class="uk-border-rounded"  width="250" height="250" alt="{TOP_ROW_NICKNAME}" src="{TOP_ROW_AVATAR_SRC}">
									<!-- ELSE -->
									<img class="uk-border-rounded"  width="250" height="250" alt="{TOP_ROW_NICKNAME}" src="themes/{PHP.theme}/img/avatar.png">
									<!-- ENDIF -->
									</a>
									<p class="uk-margin-small-top">
									<span class="uk-label uk-label-success" uk-tooltip="Место в ленте по порядку">{TOP_ROW_JJ}</span><span class="uk-label uk-margin-small-left" uk-tooltip="Срок действия услуги, пока меня не вытеснят">{TOP_ROW_EXPIRE|cot_date('d.m.Y', $this)}</span></p>
									<!-- IF {PHP.usr.maingrp} == 5 -->
									<div class="uk-position-top-right">
										<a uk-tooltip="{PHP.L.Edit}" class="uk-icon-button  uk-button-default" href="{TOP_ROW_ID|cot_url('users','m=edit&id='$this)}" uk-icon="icon:  file-edit; ratio: 1.2" title=""></a>
									</div>
									<!-- ENDIF -->
								</div>
                                <div class="uk-width-expand@m"> 
									<a class="uk-link-text" href="{TOP_ROW_DETAILSLINK}"><span class="uk-text-bold" uk-tooltip="Мой НикНейм для поиска по логину"> [{TOP_ROW_NICKNAME}]</span><!-- IF {TOP_ROW_FIRST_SECOND_NAME} --><span class="uk-text-warning uk-margin-small-left" uk-tooltip="Меня зовут">{TOP_ROW_FIRST_SECOND_NAME}</span><!-- ENDIF --></a>
									<div class="uk-margin-remove">
									<!-- IF {PHP.cot_plugins_active.paypro} -->
									<!-- IF {TOP_ROW_ISPRO} -->
									<img class="" src="themes/{PHP.theme}/img/icon/star.svg" width="27" height="27" uk-svg="uk-preserve">
									<span class="uk-text-middle uk-text-bold uk-text-warning" uk-tooltip="{PHP.L.User_account} «{PHP.L.Pro_account}» - это расширенные возможности и максимум преимуществ">{PHP.L.Pro_account}</span>
									<!-- ELSE -->
									<span class="uk-text-middle uk-text-bold uk-text-muted">{PHP.L.Base_account}</span>
									<!-- ENDIF -->
									<!-- ENDIF -->
									<span class="uk-label uk-label-success" uk-tooltip="Основная группа">{TOP_ROW_MAINGRPNAME}</span> <span class="uk-label uk-label-warning" uk-tooltip="Рейтинг пользователя">{TOP_ROW_USERPOINTS}</span>
									<!-- IF {PHP.cot_plugins_active.reviews} -->
									{PHP.L.User_reviews}
									<span class="uk-label uk-label-danger" uk-tooltip="Негативных отзывов всего">{TOP_ROW_REVIEWS_NEGATIVE_SUMM}</span>
									<span class="uk-label uk-label-success" uk-tooltip="Положительных отзывов всего">{TOP_ROW_REVIEWS_POZITIVE_SUMM}</span>
									<!-- ENDIF -->	
									</div>		
									<div class="uk-margin-remove">{PHP.L.User_registered} <span class="uk-link-text">{TOP_ROW_REGDATE_STAMP|cot_date('d.m.Y', $this)}</span> | {PHP.L.Lastlogged}: <span class="uk-link-text">{TOP_ROW_LASTLOG_STAMP|cot_date('d.m.Y H:i', $this)}</span>
									</div>
									<p class="uk-margin-remove uk-font-face uk-link-text uk-dropcap">
									<!-- IF {TOP_ROW_TEXT} -->
									{TOP_ROW_TEXT|cot_string_truncate($this,300)}
									<!-- ELSE -->
									{PHP.cfg.maintitle} - {PHP.cfg.subtitle} ( в настройках профиля смените текст на свой)
									<!-- ENDIF -->
									</p>
									<p class="uk-margin-remove uk-text-truncate">{TOP_ROW_CATS|cot_usercategories_tree($this, '', 'listlev1')}</p>
                                </div>
                            </div>
                        </div>
                    </li>
	<!-- END: TOP_ROW -->

	<!-- IF {PAYTOP_COUNT} <= 4 -->
		<!-- FOR {INDEX} IN {PHP|range(1, 4)} -->
			<!-- IF 4 - {INDEX} >= {PAYTOP_COUNT} -->
					<li>
                        <div class="uk-card uk-card-body uk-card-default uk-card-small uk-border-rounded">
                            <div class="uk-grid-small uk-grid" uk-grid="">
                                <div class="uk-width-1-3@m uk-text-center uk-first-column"> 
									<a href="#somelink" uk-tooltip="Смотреть страницу пользователя">
									<img class="uk-border-rounded" alt="Freelancer" src="themes/{PHP.theme}/img/avatar.png" width="250" height="250">
									</a>
									<p class="uk-margin-small-top">
									<span class="uk-label uk-label-success" uk-tooltip="Место в ленте по порядку">2</span><span class="uk-label uk-margin-small-left" uk-tooltip="Срок действия услуги, пока меня не вытеснят">23.12.2020</span></p>
								</div>
                                <div class="uk-width-expand@m"> 
									<a class="uk-link-text" href="#somelink"><span class="uk-text-emphasis uk-text-bold" uk-tooltip="Мой НикНейм для поиска по логину"> [Freelancer]</span><span class="uk-text-warning uk-margin-small-left" uk-tooltip="Меня зовут">Шерлок Холмс</span></a>
									<hr class="uk-margin-remove">
									<div class="uk-margin-remove">
									<img class="" src="themes/{PHP.theme}/img/icon/star.svg" uk-svg="uk-preserve" width="27" height="27">
									<span class="uk-text-middle uk-text-bold uk-text-warning" uk-tooltip="Аккаунт «PRO-аккаунт» - это расширенные возможности и максимум преимуществ">PRO-аккаунт</span>
									
									<span class="uk-label uk-label-success" uk-tooltip="Основная группа">Фрилансеры</span> <span class="uk-label uk-label-warning" uk-tooltip="Рейтинг пользователя">145.2</span>
									Отзывы
									<span class="uk-label uk-label-danger" uk-tooltip="Негативных отзывов всего">0</span>
									<span class="uk-label uk-label-success" uk-tooltip="Положительных отзывов всего">2</span>
									</div>		
									<div class="uk-margin-remove">На сайте с: <span class="uk-link-text">31.10.2020</span> | Последняя авторизация: <span class="uk-link-text">24.11.2020 22:41</span>
									</div>
									<p class="uk-margin-remove uk-font-face uk-link-text uk-dropcap">
									<span>
									О СЕБЕ Краткий рассказ пользователя. Какой-то текст пользователя "Freelancer" о себе. Отредактируйте свой в настройках личного профиля, если нужно, и примените изменения.</span>
									</p>
									<p class="uk-margin-remove uk-text-truncate">
									<span class="uk-label" uk-tooltip="Навыки и специализации">Программирование</span>
									<span class="uk-label" uk-tooltip="Навыки и специализации">Менеджмент</span>
									<span class="uk-label" uk-tooltip="Навыки и специализации">Маркетинг и реклама</span>
									<span class="uk-label" uk-tooltip="Навыки и специализации">Дизайн</span>
									<span class="uk-label" uk-tooltip="Навыки и специализации">Тексты</span>
									<span class="uk-label" uk-tooltip="Навыки и специализации">Фотография</span>
									<span class="uk-label" uk-tooltip="Навыки и специализации">Разработка игр</span>
									</p>
                                </div>
                            </div>
                        </div>
                    </li>
			<!-- ENDIF -->
		<!-- ENDFOR -->
	<!-- ENDIF -->
        </div>
		<div class="uk-visible@s">
		<a class="uk-position-center-left uk-position-small uk-icon-button uk-button-linear uk-hidden-hover" href="#" uk-slidenav-previous uk-slider-item="previous"></a>
		<a class="uk-position-center-right uk-position-small uk-icon-button uk-button-linear uk-hidden-hover" href="#" uk-slidenav-next uk-slider-item="next"></a>
		</div>
    </div>

    <!-- <ul class=" uk-margin-bottom uk-slider-nav uk-dotnav uk-flex-center uk-margin"></ul> -->

</div>
</div>
<!-- IF {PHP.usr.id} > 0 -->
    <div class="uk-margin-top uk-margin-bottom uk-text-center">
        <a class="uk-button uk-button-default" href="{PAYTOP_BUY_URL}">{PHP.L.paytop_how}</a>
    </div>
<!-- ENDIF -->


</div>
<!-- END: MAIN -->