<!-- BEGIN: MAIN -->
<!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
<div class="uk-section uk-padding-remove-vertical uk-background-primary uk-visible@m">
	<div class="uk-container uk-padding-small uk-link-text">
		<ul class="uk-breadcrumb">
            <li><a href="{PHP.cfg.mainurl}">{PHP.L.Home}</a></li>
			<li>{USERS_DETAILS_MAINGRP}</li>
			<li><span class="uk-link-text">{USERS_DETAILS_NICKNAME}</span></li>
		</ul>
	</div>
</div>
<!-- ENDIF -->
<div class="uk-section uk-padding-remove-vertical uk-background-muted"> 
	<div class="uk-container uk-margin-top uk-margin-bottom" uk-height-viewport="expand: true">
	<h3 class="uk-heading-bullet uk-margin-bottom">
	<span class="uk-link-text uk-text-uppercase uk-text-bold">
	<!-- IF {USERS_DETAILS_NAME_COMPANY} -->
	{USERS_DETAILS_NAME_COMPANY}
	<!-- ELSE -->
	[{USERS_DETAILS_NICKNAME}]
	<!-- ENDIF -->
	</span> <span class="uk-text-muted uk-visible@s">- личная страница участника сообщества </span><span class="uk-text-uppercase uk-text-bold uk-link-text uk-visible@s">{PHP.cfg.maintitle}</span></h3>

<div id="tabs">
<div class="tabs uk-margin">
<div class="uk-grid-small uk-child-width-1-2@s uk-child-width-1-4@l uk-text-center" uk-grid>
	<div>
		<div v-on:click="activetab='1'" v-bind:class="[ activetab === '1' ? 'active' : '' ]">
		<a href="{USERS_DETAILS_DETAILSLINK}" class="uk-button uk-button-details uk-width-1-1 <!-- IF !{PHP.tab} -->active uk-active<!-- ENDIF -->"><span class="uk-margin-small-right" uk-icon="user"></span><span class="uk-text-middle">{PHP.L.User_account}</span></a>	
		</div>
	</div>
	<div>
		<div v-on:click="activetab='2'" v-bind:class="[ activetab === '2' ? 'active' : '' ]">
		<a href="{USERS_DETAILS_PROJECTS_URL}" class="uk-button uk-button-details uk-width-1-1 <!-- IF {PHP.tab} == 'projects' -->active uk-active<!-- ENDIF -->"><span class="uk-margin-small-right" uk-icon="cart"></span><span class="uk-text-middle">{PHP.L.Prj_My_List_on_site} </span><span class="uk-label uk-label-details">{USERS_DETAILS_PROJECTS_COUNT}</span></a>	
		</div>
	</div>
	<div>
		<li v-on:click="activetab='3'" v-bind:class="[ activetab === '4' ? 'active' : '' ]">
		<a href="{USERS_DETAILS_REVIEWS_URL}" class="uk-button uk-button-details uk-width-1-1 <!-- IF {PHP.tab} == 'reviews' -->active uk-active<!-- ENDIF -->"><span class="uk-margin-small-right" uk-icon="commenting"></span><span class="uk-text-middle">{PHP.L.reviews_reviews} </span><span class="uk-label uk-label-details">{USERS_DETAILS_REVIEWS_COUNT}</span></a>
		</li>
	</div>

</div> 
    </div>

    <div class="content">
        <div v-if="activetab ==='1'" class="tabcontent" id="tab_info">
			<div>
		<div class="uk-card">
			<div class="uk-margin uk-grid-match uk-grid-small" uk-grid>
				<div class="uk-width-1-3@m uk-width-1-4@l">
					<div class="uk-card uk-card-small uk-card-default uk-card-body">
					<div class="uk-position-top">
					<div class="uk-grid-small uk-flex-center uk-text-center" uk-grid>
					<!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
						<div>
							<a uk-tooltip="Администрирование профиля «{USERS_DETAILS_NICKNAME}»" class="uk-icon-button uk-button-danger" href="{USERS_DETAILS_ID|cot_url('users','m=edit&id='$this)}" uk-icon="icon: file-edit; ratio: 1.2" title=""></a>
						</div>
						<!-- {PHP.cot_plugins_active.loginAsUser} -->
						<div>
							<a uk-tooltip="Войти как «{USERS_DETAILS_NICKNAME}»" class="uk-icon-button uk-button-danger" href="{USERS_DETAILS_ID|cot_url('loginAsUser', 'uid=$this')}" uk-icon="icon: sign-in; ratio: 1.2" title=""></a>
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
						<div class="uk-text-center"> 
							<div>
							<!-- IF {USERS_DETAILS_AVATAR_SRC} -->
							<img class="uk-border-rounded uk-box-shadow-small" width="250" height="250" alt="{USERS_DETAILS_NICKNAME}" src="{USERS_DETAILS_AVATAR_SRC}">
							<!-- ELSE -->
							<img class="uk-border-rounded uk-box-shadow-small" width="250" height="250" alt="{USERS_DETAILS_NICKNAME}" src="themes/{PHP.theme}/img/avatar.png">
							<!-- ENDIF -->
							</div>		
						</div>
						<hr class="uk-divider-icon uk-margin-remove">
						<div class="uk-text-center">
							<h3 class="uk-text-truncate uk-text-uppercase uk-margin-remove">
								<span class="uk-text-middle uk-link-text"><!-- IF {USERS_DETAILS_NAME_COMPANY} -->{USERS_DETAILS_NAME_COMPANY}<!-- ELSE -->[{USERS_DETAILS_NICKNAME}]<!-- ENDIF --></span><img class="uk-margin-small-left" width="27" height="27" alt="" uk-img="data-src: themes/{PHP.theme}/img/iconuserdet/verification.png">
							</h3>
						</div>
					</div>
				</div>
				<div class="uk-width-2-3@m uk-width-expand@l">
			<div class="uk-grid-small uk-child-width-1-2@m" uk-grid>
				<div class="uk-grid-item-match ">
					<div class="uk-card uk-card-default">
						<div class="uk-margin uk-margin-auto uk-margin-auto-left@m uk-card-body">
							<ul class="uk-list uk-list-divider">
								<!-- IF {USERS_DETAILS_FIRST_SECOND_NAME} -->
								<li><img class="uk-margin-small-right" width="27" height="27" alt="" uk-img="data-src: themes/{PHP.theme}/img/iconuserdet/otvet-person.svg" uk-svg="uk-preserve" ><span class="uk-text-middle uk-margin-small-right">{USERS_DETAILS_FIRST_SECOND_NAME_TITLE}</span><span class="uk-text-middle uk-link-text">{USERS_DETAILS_FIRST_SECOND_NAME}</span></li>
								<!-- ELSE -->
								<li><img class="uk-margin-small-right" width="27" height="27" alt="" uk-img="data-src: themes/{PHP.theme}/img/iconuserdet/otvet-person.svg" uk-svg="uk-preserve"><span class="uk-text-middle uk-link-text">{USERS_DETAILS_FIRST_SECOND_NAME_TITLE}</span>
								<span class="uk-text-middle uk-text-muted">
								{PHP.L.no_data_by_user}
								</span></li>
								<!-- ENDIF -->
								<!-- IF {USERS_DETAILS_BIRTHDATE} -->
								<li><img class="uk-margin-small-right" width="27" height="27" alt="" uk-img="data-src: themes/{PHP.theme}/img/iconuserdet/speedometer.svg" uk-svg="uk-preserve" ><span class="uk-text-middle uk-margin-small-right">{PHP.L.Age}:</span><span class="uk-text-middle uk-link-text">{USERS_DETAILS_AGE}</span></li>
								<!-- ELSE -->
								<li><img class="uk-margin-small-right" width="27" height="27" alt="" uk-img="data-src: themes/{PHP.theme}/img/iconuserdet/speedometer.svg" uk-svg="uk-preserve">
								<span class="uk-text-middle uk-text-muted">
								{PHP.L.no_data_by_user}
								</span></li>
								<!-- ENDIF -->
								<!-- IF {PHP.cot_plugins_active.paypro} -->
								<!-- IF {USERS_DETAILS_ISPRO} -->
								<li><img class="uk-margin-small-right" width="27" height="27" alt="" uk-img="data-src: themes/{PHP.theme}/img/icon/star.svg" uk-svg="uk-preserve" ><span class="uk-text-middle uk-margin-small-right">{PHP.L.User_account}:</span><span class="uk-text-middle uk-link-text">{PHP.L.Pro_account}</span></li>
								<!-- ELSE -->
								<li><img class="uk-margin-small-right" width="27" height="27" alt="" uk-img="data-src: themes/{PHP.theme}/img/icon/star.svg" uk-svg="uk-preserve" ><span class="uk-text-middle uk-margin-small-right">{PHP.L.User_account}:</span><span class="uk-text-middle uk-link-text">{PHP.L.Base_account}</span></li>
								<!-- ENDIF -->
								<!-- ENDIF -->
							</ul>
						</div>
					</div>
				</div>
				<div class="uk-grid-item-match ">
					<div class="uk-card uk-card-default">
			
			<div class="uk-position-top-right uk-position-z-index">
			<!-- IF {PHP.usr.id} == {PHP.urr.user_id} OR {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
				<a class="uk-icon-button uk-button-danger uk-icon" uk-icon="icon: cog; ratio: 1.5"></a>
			<!-- ENDIF -->
				<div uk-dropdown="mode: click; animation: uk-animation-slide-left;">
					<ul class="uk-nav uk-dropdown-nav uk-list uk-list-divider">
						<li class="uk-nav-header">Меню профиля пользователя</li>
						<!-- IF {PHP.usr.id} == {PHP.urr.user_id} -->
						<li><a href="{PHP|cot_url('users', 'm=profile')}"><span class="uk-text-danger" uk-icon="icon: file-edit; ratio: 1.2"></span><span class="uk-text-bold uk-link-text uk-margin-small-left uk-margin-small-right uk-text-middle">Настройка данных профиля</span></a></li>
						<!-- ENDIF -->
						<!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
						<li><a href="{USERS_DETAILS_ID|cot_url('users','m=edit&id='$this)}"><span class="uk-text-danger" uk-icon="icon: file-edit; ratio: 1.2"></span><span class="uk-text-bold uk-link-text uk-margin-small-left uk-text-middle">Править как Админ</span></a></li>
						<!-- {PHP.cot_plugins_active.loginAsUser} -->
						<!-- IF {PHP.usr.isadmin} -->
						<li><a href="{USERS_DETAILS_ID|cot_url('loginAsUser', 'uid=$this')}"><span class="uk-text-danger" uk-icon="icon: sign-in; ratio: 1.2"></span><span class="uk-text-bold uk-link-text uk-margin-small-left uk-text-middle">Войти как «{USERS_DETAILS_NICKNAME}»</span></a></li>
						<!-- ENDIF -->
						<!-- ENDIF -->
					</ul>
				</div>
			</div>
			
						<div class="uk-margin uk-margin-auto uk-margin-auto-left@m uk-card-body">
							<ul class="uk-list uk-list-divider">
							<!-- IF {USERS_DETAILS_LASTLOG} -->
							<li><img class="uk-margin-small-right" width="27" height="27" alt="" uk-img="data-src: themes/{PHP.theme}/img/iconuserdet/lastloged.svg" uk-svg="uk-preserve" ><span class="uk-text-middle">{PHP.L.Lastlogged}:</span></br><span class="uk-text-middle uk-link-text">[{USERS_DETAILS_LASTLOG}] </span><span class="uk-text-middle uk-text-success">{USERS_DETAILS_LASTLOG_STAMP|cot_build_timeago()}</span></li>
							<!-- ELSE -->
							<li><img class="uk-margin-small-right" width="27" height="27" alt="" uk-img="data-src: themes/{PHP.theme}/img/iconuserdet/lastloged.svg" uk-svg="uk-preserve"><span class="uk-text-middle">{PHP.L.Lastlogged}:</span>
							<span class="uk-text-middle uk-text-warning">
							{PHP.L.user_acc_not_confirmed}
							</span></li>
							<!-- ENDIF -->
							<!-- IF {USERS_DETAILS_REGDATE} -->
							<li><img class="uk-margin-small-right" width="27" height="27" alt="" uk-img="data-src: themes/{PHP.theme}/img/iconuserdet/networking.svg" uk-svg="uk-preserve" ><span class="uk-text-middle">{PHP.L.Registered}:</span></br><span class="uk-text-middle uk-link-text">[{USERS_DETAILS_REGDATE}] </span><span class="uk-text-middle uk-text-success">{USERS_DETAILS_REGDATE_STAMP|cot_build_timeago()}</span></li>
							<!-- ELSE -->
							<li><img class="uk-margin-small-right" width="27" height="27" alt="" uk-img="data-src: themes/{PHP.theme}/img/iconuserdet/networking.svg" uk-svg="uk-preserve"><span class="uk-text-middle">{PHP.L.Registered}:</span>
							<span class="uk-text-middle uk-text-warning">
							{PHP.L.user_acc_not_confirmed}
							</span></li>
							<!-- ENDIF -->
							<!-- IF {USERS_DETAILS_DETAILCOUNTS} -->
							<li><img class="uk-margin-small-right" width="27" height="27" alt="" uk-img="data-src: themes/{PHP.theme}/img/iconuserdet/clock.svg" uk-svg="uk-preserve" ><span class="uk-text-middle uk-margin-small-right">{USERS_DETAILS_DETAILCOUNTS_TITLE}</span><span class="uk-text-middle uk-link-text">{USERS_DETAILS_DETAILCOUNTS}</span></li>
							<!-- ENDIF -->
							</ul>
						</div>
					</div>
				</div>
			</div>
				</div>
			</div>

			<div class="uk-grid-small uk-grid-match uk-child-width-expand@m" uk-grid>
				<div>
					<div class="uk-card uk-card-default uk-card-body uk-box-shadow-large uk-border-rounded">
					<h3 class="uk-margin uk-heading-line uk-text-center uk-link-text"><span>Небольшой рассказ о себе</span></h3>

					<div class="uk-dropcap uk-text-justify">
					<!-- IF {USERS_DETAILS_TEXT} -->{USERS_DETAILS_TEXT|strip_tags($this)|mb_substr($this, 0, 700, 'UTF-8')}...<!-- ELSE -->На сайте <span class="uk-text-bold uk-link-text ">«{PHP.cfg.maintitle} - {PHP.cfg.subtitle}»</span>, Вы можете немного рассказать о себе, для этого перейдите в настройки личного профиля<!-- ENDIF --></div>
					</div>
				</div>
			</div>				
		</div> 
			</div>
        </div>
<!-- IF {PHP.cot_modules.projects} -->
		<!-- IF {PHP.tab} == 'projects' -->
        <div v-if="activetab ==='2'" class="tabcontent" id="projects"  uk-height-viewport="expand: true">
			<div>
				{PROJECTS}
			</div>
        </div>
		<!-- ENDIF -->
<!-- ENDIF -->

		<!-- IF {PHP.tab} == 'reviews' -->
        <div v-if="activetab ==='3'" class="tabcontent" id="tab_reviews">
			<div>
				{REVIEWS}
				<!-- IF {USERS_DETAILS_REVIEWS_COUNT} == 0 -->
				<div uk-height-viewport="expand: true">
					<div class="uk-alert-warning uk-border-rounded-mdm" uk-alert>
						<span>Отзывов нет</span>
					</div>
				</div>
				<!-- ENDIF -->
			</div>
        </div>
		<!-- ENDIF -->
    </div>
  
</div>
<!-- partial -->

  <script>
  new Vue({
    el: '#tabs',
    data: { activetab: '<!-- IF {PHP.tab} == 'projects' -->2<!-- ENDIF --><!-- IF {PHP.tab} == 'reviews' -->3<!-- ENDIF --><!-- IF !{PHP.tab} -->1<!-- ENDIF -->' },
});
  </script>


	</div>
</div>

	</div>
</div>
<!-- END: MAIN -->