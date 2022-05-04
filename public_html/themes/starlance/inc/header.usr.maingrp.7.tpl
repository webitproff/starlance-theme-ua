<!-- Если пользователь не из группы ЗАКАЗЧИКИ - шлём его на Аляску! -->
<!-- IF !{PHP.usr.maingrp} == 7 -->
{PHP.sys.xk|cot_url('login', 'out=1&x=$this')|cot_redirect()}
<!-- ELSE -->
<header class="uk-position-relative">
	<div class="starlance-bg-darkgreenblue uk-sticky" uk-sticky="top: 10; animation: uk-animation-slide-top">
		<nav class="uk-navbar-height uk-navbar-container uk-container uk-container-large uk-navbar-transparent" uk-navbar>
			<div class="uk-navbar-left uk-hidden@m">
				<a class="uk-navbar-toggle uk-icon uk-navbar-toggle-icon" uk-navbar-toggle-icon uk-toggle="target: #AppMenu" href="#"></a>
			</div>
			<div class="uk-navbar-left uk-visible@m">
				<a class="uk-icon-button uk-button-warning" href="{PHP|cot_url('index')}" uk-tooltip="{PHP.L.Home} {PHP.cfg.separator} {PHP.cfg.maintitle} {PHP.cfg.separator} {PHP.cfg.subtitle}" uk-icon="icon: home"></a>
				<ul class="uk-navbar-nav uk-light">
					<!-- IF {PHP.cot_modules.projects} -->
					<li><a uk-tooltip="{PHP.L.Prj_Depart_title}" href="{PHP|cot_url('projects')}">{PHP.L.Prj_Depart_Name}</a></li>
					<!-- ENDIF -->
					<!-- IF {PHP.cot_modules.services} -->
					<li><a uk-tooltip="{PHP.L.services_descr}" href="{PHP|cot_url('services')}">{PHP.L.services_title}</a></li>
					<!-- ENDIF -->
					<!-- IF {PHP.cot_modules.market} -->
					<li><a uk-tooltip="{PHP.L.market_descr}" href="{PHP|cot_url('market')}">{PHP.L.market_title}</a></li>
					<!-- ENDIF -->
					<li><a class="<!-- IF {PHP.m} == 'users' AND ({PHP.group} == {PHP.cot_groups.4.alias} OR {PHP.urr.user_maingrp} == 4) --> active<!-- ENDIF -->" href="{PHP.cot_groups.4.alias|cot_url('users', 'group='$this)}">{PHP.cot_groups.4.name}</a></li>
					<!-- IF {PHP.cot_modules.folio} -->
					<li><a uk-tooltip="{PHP.L.Folio_Menu_descr}" href="{PHP|cot_url('folio')}">{PHP.L.Folio_Menu_Name}</a></li>
					<!-- ENDIF -->
					<!-- IF {PHP.cot_modules.forums} -->
					<li><a href="{PHP|cot_url('forums')}">{PHP.L.Forums}</a></li>
					<!-- ENDIF -->
					<!-- IF {PHP.cot_modules.page} -->
					<li><a href="{PHP|cot_url('page', 'c=news')}">{PHP.L.News}</a></li>
					<!-- ENDIF -->
					<button class="uk-button uk-button-small uk-button-success" uk-tooltip="{PHP.L.Maingroup}" >{PHP.cot_groups.7.name}</button>
				</ul>
			</div>
			<div class="uk-navbar-right">
				<!-- IF {PHP.cot_modules.ds} -->
				<a class="" href="#"><span class="uk-margin-small-right uk-label uk-label-primary">{HEADER_USER_PM_COUNT}</span><span uk-icon="comments" class="uk-margin-small-right uk-animation-shake"></span></a>
				<div class="uk-navbar-dropdown uk-border-rounded">
					<ul class="uk-nav uk-list uk-list-divider uk-navbar-dropdown-nav">
						<li><span class="uk-link-text uk-text-middle">{HEADER_USER_PMS}</span></li>
					</ul>
				</div>
				<!-- ENDIF -->
				<ul class="uk-navbar-nav">
					<li>
						<a href="#User-Account" uk-toggle>
							<!-- IF {PHP.usr.profile.user_avatar} -->
							<img class="uk-border-circle" src="{PHP.usr.profile.user_avatar}" alt="{PHP.usr.name}" width="50" height="50" /><span class="uk-text-middle uk-light uk-margin-left">{PHP.usr.name}</span>
							<!-- ELSE -->
							<img class="uk-border-circle" src="themes/{PHP.theme}/img/avatar.png" alt="{PHP.usr.name}" width="50" height="50" /><span class="uk-text-middle uk-light uk-margin-left">{PHP.usr.name}</span>
							<!-- ENDIF -->
						</a>
					</li>
				</ul>
			</div>
		</nav>
	</div>
</header>
<div id="User-Account" uk-offcanvas="flip: true; overlay: true">
    <div class="uk-offcanvas-bar">
        <button class="uk-offcanvas-close uk-button-default uk-border-rounded-mdm" type="button" uk-close></button>
        <div class="uk-grid-small" uk-grid>
            <div class="uk-width-1-4">
                <a href="{PHP.usr.name|cot_url('users', 'm=details&u='$this)}">
                    <div class="uk-inline">
					<!-- IF {PHP.usr.profile.user_avatar} -->
                        <img class="uk-border-circle" src="{PHP.usr.profile.user_avatar}" alt="{PHP.usr.name}" width="80" height="80">
					<!-- ELSE -->
					<img class="uk-border-circle" src="themes/{PHP.theme}/img/avatar.png" alt="{PHP.usr.name}" width="80" height="80" />
					<!-- ENDIF -->
					<!-- IF {HEADER_USER_PROEXPIRE} -->
					    <div class="uk-position-top-right">
							<img class="" src="themes/{PHP.theme}/img/icon/star.svg" width="16" height="16" uk-svg="uk-preserve">
						</div>
					<!-- ENDIF -->
                    </div>
                </a>
            </div>
            <div class="uk-width-3-4 uk-flex uk-flex-middle ">
				<p class="uk-font-face">
				<a class=" uk-text-truncate uk-margin-remove-bottom uk-text-warning uk-text-uppercase" href="{PHP.usr.name|cot_url('users', 'm=details&u='$this)}">{HEADER_USER_NAME}</a></p>
            </div>
        </div>
        <div class="uk-panel uk-margin-remove-top">
			<hr class="uk-divider-icon uk-margin-remove">
			<!-- IF {PHP.usr.profile.user_first_second_name} -->
			<p class="uk-font-face uk-margin-remove">
			<a class="uk-icon-button uk-button-danger" href="{PHP.out.loginout_url}" uk-tooltip="Выйти из аккаунта" uk-icon="icon: sign-out"></a>
			<span uk-icon="happy" class="uk-margin-small-right uk-margin-left uk-icon"></span><span class="uk-text-middle uk-color-f5">{PHP.usr.profile.user_first_second_name}</span>
			</p>
			<!-- ENDIF -->
			<hr class="uk-margin-small">
			<p class="uk-margin-remove">
			<span uk-icon="users" class="uk-margin-small-right uk-icon"></span><span class="uk-visible@s uk-text-middle uk-text-success">{PHP.L.Maingroup}:</span> <span class="uk-text-middle uk-text-warning">{PHP.cot_groups.7.name}</span>
			</p>
			<hr class="uk-divider-icon uk-margin-remove">
        </div>	
        <ul class="uk-nav uk-nav-default">
			<ul class="uk-nav-parent-icon" uk-nav>
				<li class="uk-parent">
					<a class="" href="#"><span class="uk-text-lgrey uk-text-uppercase uk-text-middle" uk-tooltip="{PHP.L.User_account}">{PHP.L.User_account}:</span>
					<!-- IF {PHP.cot_plugins_active.paypro} -->
						<!-- IF {HEADER_USER_PROEXPIRE} -->
						<img class="uk-margin-small-left uk-margin-small-right" src="themes/{PHP.theme}/img/icon/star.svg" width="27" height="27" uk-svg="uk-preserve">
						<span class="uk-text-middle uk-text-bold uk-text-warning">{PHP.L.Pro_account}</span>
						<!-- ELSE -->
						<span class="uk-text-middle uk-text-bold uk-text-muted">{PHP.L.Base_account}</span>
						<!-- ENDIF -->
					<!-- ENDIF -->
					</a>
					<ul class="uk-nav-sub uk-list uk-list-divider">
						<li><a class="uk-color-f5" href="{PHP.usr.name|cot_url('users', 'm=details&u='$this)}">{PHP.L.Own_Page}</a></li>
						{EVENTS_HEADER}
						<li><a class="uk-color-f5" href="{PHP|cot_url('users', 'm=profile')}">{PHP.L.Profile}</a></li>
						<!-- IF {HEADER_USER_PROEXPIRE} -->
						<li><a class="uk-color-f5" href="{PHP|cot_url('plug', 'e=paypro')}">{PHP.L.paypro_header_expire_short} {HEADER_USER_PROEXPIRE|cot_date('d.m.Y', $this)}</a></li>
						<!-- ELSE -->
						<li><a class="uk-color-f5" href="{PHP|cot_url('plug', 'e=paypro')}">{PHP.L.paypro_header_buy}</a></li>
						<!-- ENDIF -->
						<!-- IF {PHP.out.notices} -->
						<li>{PHP.out.notices}</li>
						<!-- ENDIF -->
						<!-- IF {PHP.cot_modules.pm} -->
						<li><a class="uk-color-f5" href="{PHP|cot_url('pm')}" title="{PHP.L.Private_messages}">{PHP.L.Private_Messages}<!-- IF {PHP.usr.messages} > 0 --><span class="uk-margin-small-left uk-label uk-label-success">{PHP.usr.messages}</span><!-- ELSE --><span class="uk-label uk-margin-small-left">0</span><!-- ENDIF --></a></li>
						<!-- ENDIF -->
						<li>{HEADER_USER_LOGINOUT}</li>
					</ul>
				</li>
				<li class="uk-nav-divider"></li>			
			<!-- IF {PHP.cot_modules.payments} AND {PHP.cfg.payments.balance_enabled} -->				
				<li class="uk-parent">
					<a class="" href="#"><span class="uk-text-lgrey uk-text-uppercase">Финансы:</span> <span class="uk-text-success" uk-tooltip="{PHP.L.payments_mybalance}">{HEADER_USER_BALANCE|number_format($this, '2', '.', ' ')} {PHP.cfg.payments.valuta}</span></a>
					<ul class="uk-nav-sub uk-list uk-list-divider">
						<li<!-- IF {PHP.n} == 'history' --> class="uk-active"<!-- ENDIF -->><a class="uk-color-f5" href="{PHP.usr.name|cot_url('payments', 'm=balance&n=history')}">{PHP.L.payments_history}</a></li>
						<!-- IF {PHP.cfg.payments.balance_enabled} -->
						<li<!-- IF {PHP.n} == 'billing' --> class="uk-active"<!-- ENDIF -->><a class="uk-color-f5" href="{PHP|cot_url('payments', 'm=balance&n=billing')}">{PHP.L.payments_paytobalance}</a></li>
						<!-- ENDIF -->
						<!-- IF {PHP.cfg.payments.payouts_enabled} -->
						<li<!-- IF {PHP.n} == 'payouts' --> class="uk-active"<!-- ENDIF -->><a class="uk-color-f5" href="{PHP.usr.name|cot_url('payments', 'm=balance&n=payouts')}">{PHP.L.payments_payouts}</a></li>
						<!-- ENDIF -->

						<!-- IF {PHP.cfg.payments.transfers_enabled} -->
						<li<!-- IF {PHP.n} == 'transfers' --> class="uk-active"<!-- ENDIF -->><a class="uk-color-f5" href="{PHP.usr.name|cot_url('payments', 'm=balance&n=transfers')}">{PHP.L.payments_transfer}</a></li>
						<!-- ENDIF -->
					</ul>
				</li>
				<li class="uk-nav-divider"></li>			
			<!-- ENDIF -->
			<!-- IF {PHP.cot_modules.market} AND {PHP.cot_plugins_active.marketorders} -->			
				<li class="uk-parent">
					<a class="" href="#"><span class="uk-text-lgrey uk-text-uppercase">{PHP.L.Prd_My_Marketplace}</span> </a>
					<ul class="uk-nav-sub uk-list uk-list-divider">
						<li><a class="uk-color-f5" href="{PHP|cot_url('marketorders', 'm=purchases')}">{PHP.L.marketorders_mypurchases}</a></li>
					</ul>
				</li>
				<li class="uk-nav-divider"></li>			
			<!-- ENDIF -->
			<!-- IF {PHP.cot_modules.projects} -->			
				<li class="uk-parent">
					<a class="" href="#"><span class="uk-text-lgrey uk-text-uppercase">{PHP.L.Prj_My_linklist_on_site}</span> </a>
					<ul class="uk-nav-sub uk-list uk-list-divider">
						<li><a class="uk-color-f5" href="{PHP.usr.id|cot_url('users', 'm=details&id=$this&tab=projects')}" data-offset="50">{PHP.L.Prj_My_List_on_site}</a></li>
						<!-- IF {PHP.cot_plugins_active.sbr} -->
						<li><a class="uk-color-f5" href="{PHP|cot_url('sbr')}">{PHP.L.sbr_mydeals}</a></li>
						<!-- ENDIF -->
						<li><a class="uk-color-f5" href="{PHP|cot_url('projects', 'm=add')}">{PHP.L.Prj_My_Add_Prj_on_site}</a></li>
					</ul>
				</li>
				<li class="uk-nav-divider"></li>			
			<!-- ENDIF -->
			<!-- IF {PHP.cot_plugins_active.sbr} -->
				<li><a class="uk-color-f5" href="{PHP|cot_url('sbr')}"><img class="uk-margin-small-right" width="27" height="27" alt="" uk-img="data-src: {PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/icon/022-shield-1.svg" uk-svg="uk-preserve"><span class="uk-text-middle uk-text-uppercase">{PHP.L.sbr_mydeals}</span></a></li>
				<!-- ENDIF -->
			</ul>
        </ul>
    </div>
</div>
<!-- ENDIF -->