<!-- BEGIN: MAIN -->
<!-- пояснения по тэгам и экстраполям шаблона настройки и редактирования АДМИНИСТРАТОРОМ учетных записей профиля пользователя поставщика, находятся в файле users.edit.supplier.tpl.xlsx проверка сделана 19.03.2021 
Помощь и поддержка https://t.me/webitproff -->
<div class="uk-section uk-padding-remove-vertical uk-background-primary uk-visible@m">
	<div class="uk-container uk-padding-small uk-link-text">
		<ul class="uk-breadcrumb">
			<!-- <li>{USERS_EDIT_TITLE}</li> -->
			<li><span class="uk-text-uppercase uk-text-bold uk-link-text">{USERS_EDIT_SUBTITLE}</span> - <span class="uk-text-uppercase uk-text-bold uk-text-warning"> {PHP.urr.user_name}</span> ID# {USERS_EDIT_ID}</li>
            					
		</ul>
	</div>
</div>
<div class="uk-section uk-section-muted">
    <div class="uk-container">
		<div class="uk-tile uk-tile-default uk-padding-small uk-border-rounded">
        <h3 class="uk-heading-bullet">Редактирование карточки профиля - <span class="uk-text-bold uk-text-success">{PHP.cot_groups.4.title}</span></h3>
		<div class="tm-timeout" data-timeout="5000">
			<div class="uk-alert uk-visible@m" uk-alert>
				<a class="uk-alert-close" uk-close></a>
				<h4 class="uk-heading-bullet"><span class="uk-text-bold uk-text-warning">Информация для Администратора</span></h4>
				<p>Этот шаблон находится по адресу<br><code> {PHP.mskin} </code><br>Не изменяйте настройки данной группы в админке, если не знаете, что к чему.</p>
			</div>
		</div>
			<div class="uk-alert-success" uk-alert>
				<a class="uk-alert-close" uk-close></a>
				<p><span class="uk-link-text">{PHP.L.User_balance}: </span><span class="uk-text-bold uk-text-primary">{USERS_EDIT_ID|cot_payments_getuserbalance($this)} {PHP.cfg.payments.valuta}</span></p>
			</div>
		<h5 class="uk-heading-bullet uk-margin-remove-top">Текущая группа: {USERS_EDIT_MAINGRP}</h5>
		<div class="uk-grid-small uk-child-width-expand@s" uk-grid uk-height-match="target: > div > .uk-card">
			<div>
				<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
					<div class="uk-grid-small" uk-grid>
						<div class="uk-width-auto">
							<a uk-tooltip="Открыть страницу пользователя" href="{USERS_EDIT_DETAILSLINK}" class="uk-icon-button uk-margin-small-right" uk-icon="user"></a>

						</div>
						<div class="uk-child-width-expand">
							<h4 class="uk-text-bold uk-text-primary" uk-tooltip="Логин в системе можно изменить ниже и только Администратор">{PHP.urr.user_name}</h4>
						</div>
					</div>
				</div>

			</div>
			<div>
				<div class="uk-card uk-card-default uk-padding-small uk-flex uk-flex-middle uk-border-rounded">
					<label class="uk-margin-small-right">{PHP.L.Registered}:</label>
					<span class="uk-text-bold uk-text-danger">{USERS_EDIT_REGDATE}</span>
				</div>
			</div>
			<div>
				<div class="uk-card uk-card-default uk-padding-small uk-flex uk-flex-middle uk-border-rounded">
					<label class="uk-margin-small-right">{PHP.L.Lastlogged}:</label>
					<span class="uk-text-bold uk-text-danger">{USERS_EDIT_LASTLOG}</span>
				</div>
			</div>
		</div>
		<div class="uk-grid-small uk-child-width-expand@s" uk-grid uk-height-match="target: > div > .uk-card">
			<div>
				<div class="uk-card uk-card-default uk-padding-small uk-flex uk-flex-middle uk-border-rounded">
					<label class="uk-margin-small-right">Персональный номер ID #:</label>
					<span class="uk-text-bold uk-text-danger">{USERS_EDIT_ID}</span>
				</div>
			</div>
			<div>
				<div class="uk-card uk-card-default uk-padding-small uk-flex uk-flex-middle uk-border-rounded">
					<label class="uk-margin-small-right">{PHP.L.users_logcounter}:</label>
					<span class="uk-text-bold uk-text-danger">{USERS_EDIT_LOGCOUNT}</span>
				</div>
			</div>
			<div>
				<div class="uk-card uk-card-default uk-padding-small uk-flex uk-flex-middle uk-border-rounded">
					<label class="uk-margin-small-right">{PHP.L.users_lastip}:</label>
					<span class="uk-text-bold uk-text-danger">{USERS_EDIT_LASTIP}</span>
				</div>
			</div>
		</div>
		<hr class="uk-divider-icon">
		{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
		<form action="{USERS_EDIT_SEND}" method="post" name="useredit" enctype="multipart/form-data" class="form-horizontal">
			<input type="hidden" name="id" value="{USERS_EDIT_ID}" />
			<div class="uk-margin">
			<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
			<!-- IF !{PHP.urr.user_avatar|file_exists($this)} -->
				<div class="uk-text-center">
					<img class="uk-border-rounded" src="themes/{PHP.theme}/img/avatar.png" alt="" width="200" height="200" />
				</div>
			<!-- ENDIF -->
			<!-- IF {USERS_EDIT_AVATAR} -->
				<div class="uk-text-center">
					{USERS_EDIT_AVATAR}
				</div>
				<div class="uk-margin-top uk-text-center">   
					<span class="uk-text-small">Логотип компании или Avatar, - минимальный размер фотографии 200x200px</span>
				</div>
			<!-- ENDIF -->
			</div>
			</div>
			<div class="uk-margin">
			<div class="uk-grid-small uk-child-width-expand@m" uk-grid uk-height-match="target: > div > .uk-card">
				<div>
					<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
						<label class="uk-form-label">{PHP.L.Username}:</label>
						<div class="uk-form-controls">
							{USERS_EDIT_NAME}
						</div>
					</div>
				</div>
				<!-- IF {USERS_EDIT_NAME_COMPANY} -->
				<div>
				<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
					<label class="uk-form-label">{USERS_EDIT_NAME_COMPANY_TITLE}</label>
					<div class="uk-form-controls">
						{USERS_EDIT_NAME_COMPANY}
					</div>
				</div>
				</div>
				<!-- ENDIF -->
			</div>
			</div>
			<!-- IF {USERS_EDIT_BIRTHDATE} -->
			<div class="uk-margin">
				<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
					<label class="uk-form-label">Дата основания компании</label>
					<div class="uk-form-controls">
						{USERS_EDIT_BIRTHDATE}
					</div>
				</div>
			</div>
			<!-- ENDIF -->
			<!-- IF {USERS_EDIT_ADRESS_LOCAL} -->
			<div class="uk-margin">
				<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
					<label class="uk-form-label">{USERS_EDIT_ADRESS_LOCAL_TITLE}</label>
					<div class="uk-form-controls">
						{USERS_EDIT_ADRESS_LOCAL}
					</div>
				</div>
			</div>
			<!-- ENDIF -->

			<!-- IF {PHP.cot_plugins_active.locationselector} -->
			<div class="uk-margin-top">
				<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
				{USERS_EDIT_LOCATION}
				</div>
			</div>
			<!-- ENDIF -->
			<div class="uk-margin">
			<div class="uk-grid-small uk-child-width-1-2@s" uk-grid uk-height-match="target: > div > .uk-card">
				<!-- IF {USERS_EDIT_TIME_WORKING} -->
				<div>
					<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
						<label class="uk-form-label"><span class="uk-text-danger" uk-icon="icon: clock; ratio: 1.2"></span><span class="uk-text-bold uk-link-text uk-margin-small-left uk-text-middle">{USERS_EDIT_TIME_WORKING_TITLE}</span></label>
						<div class="uk-form-controls">
							{USERS_EDIT_TIME_WORKING} 
						</div>
					</div>
				</div>
				<!-- ENDIF -->
				<!-- IF {USERS_EDIT_FIRST_SECOND_NAME} -->
				<div>
					<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
						<label class="uk-form-label">{USERS_EDIT_FIRST_SECOND_NAME_TITLE}</label>
						<div class="uk-form-controls">
							{USERS_EDIT_FIRST_SECOND_NAME}
						</div>
					</div>
				</div>
				<!-- ENDIF -->
				<!-- IF {USERS_EDIT_PHONE_CONTACT} -->
				<div>
					<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
						<label class="uk-form-label">{USERS_EDIT_PHONE_CONTACT_TITLE}</label>
						<div class="uk-form-controls">
							{USERS_EDIT_PHONE_CONTACT} 
						</div>
					</div>
				</div>
				<!-- ENDIF -->
				<!-- IF {USERS_EDIT_WHATS_APP} -->
				<div>
					<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
						<label class="uk-form-label">{USERS_EDIT_WHATS_APP_TITLE}</label>
						<div class="uk-form-controls">
							{USERS_EDIT_WHATS_APP} 
						</div>
					</div>
				</div>
				<!-- ENDIF -->
				<!-- IF {USERS_EDIT_TELEGRAM} -->
				<div>
					<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
						<label class="uk-form-label">{USERS_EDIT_TELEGRAM_TITLE}</label>
						<div class="uk-form-controls">
							{USERS_EDIT_TELEGRAM} 
						</div>
					</div>
				</div>
				<!-- ENDIF -->
				<!-- IF {USERS_EDIT_FACEBOOK} -->
				<div>
					<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
						<label class="uk-form-label">{USERS_EDIT_FACEBOOK_TITLE}</label>
						<div class="uk-form-controls">
							{USERS_EDIT_FACEBOOK}
						</div>
					</div>
				</div>
				<!-- ENDIF -->
				<!-- IF {USERS_EDIT_INSTAGRAM} -->
				<div>
					<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
						<label class="uk-form-label">{USERS_EDIT_INSTAGRAM_TITLE}</label>
						<div class="uk-form-controls">
							{USERS_EDIT_INSTAGRAM}
						</div>
					</div>
				</div>
				<!-- ENDIF -->
				<!-- IF {USERS_EDIT_WWW_SITE} -->
				<div>
					<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
						<label class="uk-form-label">{USERS_EDIT_WWW_SITE_TITLE}</label>
						<div class="uk-form-controls">
							{USERS_EDIT_WWW_SITE} 
						</div>
					</div>
				</div>
				<!-- ENDIF -->
				<!-- IF {USERS_EDIT_YOUTUBE_LINK} -->
				<div>
					<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
						<label class="uk-form-label"><img class="uk-margin-small-right" width="27" height="27" alt="" uk-img="data-src: themes/{PHP.theme}/img/iconsoclogo/YouTube_soc.svg" uk-svg="uk-preserve"  uk-tooltip="YouTube">
						<span class="uk-text-middle">
							{USERS_EDIT_YOUTUBE_LINK_TITLE}
						</span>
						</label>
						<div class="uk-form-controls" uk-tooltip="Ссылка на ваш YouTube видео канал или видеообзор">
							{USERS_EDIT_YOUTUBE_LINK}
						</div>
					</div>
				</div>
				<!-- ENDIF -->
			</div>
			</div>
			<hr class="uk-divider-icon">
			<div class="uk-margin">
			<div class="uk-grid-small uk-child-width-expand@s" uk-grid uk-height-match="target: > div > .uk-card">
				<div>
					<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
						<label class="uk-form-label">{PHP.L.Email}:</label>
						<div class="uk-form-controls">
							{USERS_EDIT_EMAIL} 
						</div>
					</div>
				</div>
				<div>
					<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
						<label class="uk-form-label">{PHP.L.users_newpass}:</label>
						<div class="uk-form-controls">
							{USERS_EDIT_NEWPASS} 
						</div>
						{PHP.L.users_newpasshint1}
					</div>
				</div>
			</div>
			</div>


			<div class="uk-margin-top">
				<div class="uk-grid-small uk-child-width-expand@s" uk-grid uk-height-match="target: > div > .uk-card">
					<div>
						<div class="uk-card uk-card-default">
							 <div class="uk-card-header">
								<h4 class="uk-text-warning">{PHP.L.User_Edit_Maing_member_group}</h4>
							 </div>
							<div class="uk-card-body">
								{USERS_EDIT_GROUPS}
							</div>							
						</div>
					</div>
					<div>
						<div class="uk-card uk-card-default">
							<!-- IF {USERS_EDIT_GROUPSELECT} -->
							 <div class="uk-card-header">
								<h4 class="">{PHP.L.User_Edit_Maing_group}:</h4>
							 </div>
							<div class="uk-card-body">
								{USERS_EDIT_GROUPSELECT}
							</div>
							<!-- ENDIF -->
						</div>
					</div>
				</div>
			</div>

			<div class="uk-margin-top">
				<div class="uk-grid-small uk-child-width-expand@s" uk-grid uk-height-match="target: > div > .uk-card">
					<div>
						<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
							<h4 class="uk-text-warning">{PHP.L.Categories} ({PHP.L.User_Skills}):</h4>		
							<div class="uk-form-controls uk-panel uk-panel-scrollable">
								{USERS_EDIT_CAT}
							</div>														
						</div>
					</div>	
					<div>
						<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
							<label class="uk-form-label">{PHP.L.users_hideemail}:</label>
							<div class="uk-form-controls">
								{USERS_EDIT_HIDEEMAIL}
							</div>
							<!-- IF {PHP.cot_modules.pm} -->
							<hr>
							<label class="uk-form-label">{PHP.L.users_pmnotify}:</label>
							<div class="uk-form-controls">
								{USERS_EDIT_PMNOTIFY} 
							</div>
							<!-- ENDIF -->
							<!-- IF {PHP.cot_modules.cwsender} -->
							<hr>
							<label class="uk-form-label">Рассылка (modules cwsender):</label>
							<div class="uk-form-controls">
								{USERS_EDIT_SENDMAIL} 
							</div>
							<!-- ENDIF -->
						</div>
					</div>
					<div>

					</div>
				</div>
			</div>
            <div class="uk-margin">
				<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
                <h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.Signature}:</h4>
				<label class="uk-form-label uk-margin-remove-top">{PHP.L.User_Edit_Signature}</label>
                <div class="uk-form-controls">
                    {USERS_EDIT_TEXT} 
                </div>
                <span id="rusertext" class="uk-text-success tp-text-small"></span> <span class="uk-text-danger tp-text-small"> знаков осталось </span>
                <span class="uk-text-primary tp-text-small">лимит символов - {PHP.cfg.users.usertextmax} | Устанавливается в Админке</span>
                <script type="text/javascript">
                    $(document).ready(function(){
                        $('textarea[name=rusertext]').limit('{PHP.cfg.users.usertextmax}','#rusertext');
                    });
                </script>
				</div>
			</div>
			<!-- IF {USERS_EDIT_VIDEO_COMPANY_MP4} -->
			<div class="uk-margin">
				<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
					<label class="uk-form-label">{USERS_EDIT_VIDEO_COMPANY_MP4_TITLE}</label>
					<div class="uk-width-1-2@m uk-align-center">
					<div class="uk-form-controls">
						{USERS_EDIT_VIDEO_COMPANY_MP4} 
					</div>
					</div>
				</div>
			</div>
			<!-- ENDIF -->
			<div class="uk-margin-top">
				<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
					<label class="uk-form-label uk-text-bold uk-text-danger">{PHP.L.users_deleteuser}:</label>
					<div class="uk-form-controls uk-margin-small">
						{USERS_EDIT_DELETE}
					</div>
				</div>
			</div>
			<div class="uk-margin uk-text-center">
			<button type="submit" class="uk-button uk-button-success uk-button-large">{PHP.L.apply_changes}</button>
			</div>
		</form>
		</div>	
	</div>
</div>
<script>
 (function ($) {
    $.fn.extend({
        limit:function (limit, element) {
            var interval;
            var self = $(this);

            var check_limit = function () {
                var val = self.val();
                var length = val.length;
                if (length > limit) {
                    self.val(val.substring(0, limit));
                }
                if ($(element).html() !== limit - length) {
                    $(element).html((limit - length <= 0) ? '0' : limit - length);
                }
            };
            self.focus(function () {
                interval = window.setInterval(check_limit, 100);
            });

            self.blur(function () {
                clearInterval(interval);
                check_limit();
            });

            check_limit();
        }
    });
})(jQuery);
</script>
<script>
document.addEventListener('DOMContentLoaded', function () {

	var Alerts = document.querySelectorAll(".tm-timeout");
		if (Alerts.length > 0) {
			Alerts.forEach(function(el) {
				var Timeout = el.getAttribute('data-timeout');
				console.log(Timeout);
				alertTimeout = setTimeout(function() {
	         		UIkit.alert(el).close();
	    		}, Timeout)
			});
		}

});
</script>
<!-- END: MAIN -->