<!-- BEGIN: MAIN -->
<div class="uk-section uk-section-muted">
    <div class="uk-container">
		<div class="uk-tile uk-tile-default uk-padding-small uk-border-rounded">
        <h2 class="uk-card-title uk-heading-bullet uk-margin-remove-bottom">{USERS_PROFILE_SUBTITLE}</h2>
		<h5 class="uk-heading-bullet uk-margin-remove-top">Текущая группа: {USERS_PROFILE_MAINGRP}</h5>
		<div class="uk-grid-small uk-child-width-expand@s" uk-grid uk-height-match="target: > div > .uk-card">
			<div>
				<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
					<div class="uk-grid-small" uk-grid>
						<div class="uk-width-auto">
							<a data-uk-tooltip="Открыть свою публичную страницу" href="{USERS_PROFILE_DETAILSLINK}" class="uk-icon-button uk-margin-small-right" uk-icon="user"></a>
						</div>
						<div class="uk-child-width-expand">
							<h3 class="uk-text-bold uk-text-primary" data-uk-tooltip="{PHP.L.users_profile_note_1}">{PHP.urr.user_name}</h3>
						</div>
					</div>
				</div>
			</div>
			<div>
				<div class="uk-card uk-card-default uk-padding-small uk-flex uk-flex-middle uk-border-rounded">
					<label class="uk-margin-small-right">{PHP.L.Registered}:</label>
					<span class="uk-text-bold uk-text-danger">{USERS_PROFILE_REGDATE}</span>
				</div>
			</div>
			<div>
				<div class="uk-card uk-card-default uk-padding-small uk-flex uk-flex-middle uk-border-rounded">
					<label class="uk-margin-small-right">{PHP.L.Lastlogged}:</label>
					<span class="uk-text-bold uk-text-danger">{USERS_PROFILE_LASTLOG}</span>
				</div>
			</div>
		</div>
		<div class="uk-grid-small uk-child-width-expand@s" uk-grid uk-height-match="target: > div > .uk-card">
			<div>
				<div class="uk-card uk-card-default uk-padding-small uk-flex uk-flex-middle uk-border-rounded">
					<label class="uk-margin-small-right">Персональный номер ID #:</label>
					<span class="uk-text-bold uk-text-danger">{USERS_PROFILE_ID}</span>
				</div>
			</div>
			<div>
				<div class="uk-card uk-card-default uk-padding-small uk-flex uk-flex-middle uk-border-rounded">
					<label class="uk-margin-small-right">{PHP.L.users_logcounter}:</label>
					<span class="uk-text-bold uk-text-danger">{USERS_PROFILE_LOGCOUNT}</span>
				</div>
			</div>
			<div>
				<div class="uk-card uk-card-default uk-padding-small uk-flex uk-flex-middle uk-border-rounded">
					<label class="uk-margin-small-right">{PHP.L.users_lastip} и текущ.:</label>
					<span class="uk-text-bold uk-text-danger">{PHP.usr.profile.user_lastip} - {PHP._SERVER.REMOTE_ADDR}</span>
				</div>
			</div>
		</div>
		<hr class="uk-divider-icon">
		{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
		<form action="{USERS_PROFILE_FORM_SEND}" method="post" enctype="multipart/form-data" name="profile" class="uk-form-stacked">
			<input type="hidden" name="userid" value="{USERS_PROFILE_ID}" />
			<div class="uk-margin">
				<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
				<h3 class="uk-heading-bullet">{PHP.L.Security_account}</h3>
					<label class="uk-margin-small-right">{PHP.L.current_youremail}<span class="uk-margin-small-left uk-text-primary"  data-uk-icon="icon: question; ratio: 1.2" data-uk-tooltip="Используется для необходимых авторизованых операций, в том числе для восстановления пароля"></span></label>
					<span class="uk-text-bold uk-text-primary">{PHP.usr.profile.user_email}<span class="uk-margin-small-left uk-text-danger"  data-uk-icon="icon: warning; ratio: 1.2" data-uk-tooltip="Если ниже нет формы для смены E-mail - обратитесь к Администратору"></span></span>
				</div>
			</div>
			<div class="uk-margin">
				<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">		
					<!-- BEGIN: USERS_PROFILE_EMAILCHANGE -->
					<div id="emailtd">
					<div class="uk-grid-small" uk-grid uk-height-match="">
							<div class="uk-width-1-2@m">
								<label class="uk-form-label">Изменить Email вашего аккаунта:<span class="uk-margin-small-left uk-text-primary"  data-uk-icon="icon: question; ratio: 1.2" data-uk-tooltip="Оставьте как есть, если смена Email не требуется"></span>
								</label>
								<div class="uk-form-controls">
									{USERS_PROFILE_EMAIL}
								</div>
							</div>
					<!-- BEGIN: USERS_PROFILE_EMAILPROTECTION -->
							<script type="text/javascript">
								//<![CDATA[
								$(document).ready(function(){
									$("#emailnotes").hide();
									$("#emailtd").click(function(){$("#emailnotes").slideDown();});
								});
								//]]>
							</script>
							<div class="uk-width-1-2@m">
								<label class="uk-form-label">{PHP.themelang.usersprofile_Emailpassword}:<span class="uk-margin-small-left uk-text-primary"  data-uk-icon="icon: question; ratio: 1.2" data-uk-tooltip="Введите текущий пароль для подтверждения смены Email вашего аккаунта"></span>
								</label>
								<div class="uk-form-controls">
									{USERS_PROFILE_EMAILPASS}
								</div>
							</div>
					<!-- END: USERS_PROFILE_EMAILPROTECTION -->	
					</div>
					<div id="emailnotes" class=" uk-alert-warning uk-border-rounded " data-uk-alert>
					<a class="uk-alert-close" data-uk-close></a> 
					{PHP.themelang.usersprofile_Emailnotes}
					</div>
					<!-- END: USERS_PROFILE_EMAILCHANGE -->
					</div>
				</div>
			</div>
			<div class="uk-margin">
				<div class="uk-grid-small uk-child-width-expand@s" uk-grid uk-height-match="target: > div > .uk-card">
					<div>
						<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
							<label class="uk-form-label">{PHP.L.users_newpass}:<span class="uk-margin-small-left uk-text-primary"  data-uk-icon="icon: question; ratio: 1.2" data-uk-tooltip="Если забыли, - пароль можно сбросить по ссылке на форме авторизации"></span>
							</label>
							<div class="uk-form-controls">
								{USERS_PROFILE_OLDPASS}
							</div>
						</div>
					</div>
					<div>
						<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
							<label class="uk-form-label">{PHP.L.users_newpasshint1}</label>
							<div class="uk-form-controls">
								{USERS_PROFILE_NEWPASS1}
							</div>
						</div>
					</div>
					<div>
						<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
							<label class="uk-form-label">{PHP.L.users_newpasshint2}</label>
							<div class="uk-form-controls">
								{USERS_PROFILE_NEWPASS2}
							</div>
						</div>
					</div>
				</div>
			</div>
			<hr class="uk-divider-icon">

			<div class="uk-margin">
			<!-- IF !{PHP.urr.user_avatar|file_exists($this)} -->
				<div class="uk-text-center uk-card uk-card-default uk-padding-small uk-border-rounded">
					<img class="uk-border-rounded" src="themes/{PHP.theme}/img/avatar.png" alt="" width="200" height="200" />
				</div>
			<!-- ENDIF -->
			<!-- IF {USERS_PROFILE_AVATAR} -->
				<div class="uk-text-center uk-card uk-card-default uk-padding-small uk-border-rounded">
					{USERS_PROFILE_AVATAR}
				</div>
				<div class="uk-margin-top uk-text-center">   
					<span class="uk-text-small">{PHP.L.Avatar}: минимальный размер фотографии 200x200px</span>
				</div>
			<!-- ENDIF -->
			</div>
				<!-- IF {USERS_PROFILE_FIRST_SECOND_NAME} -->
				<div>
					<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
						<label class="uk-form-label">{USERS_PROFILE_FIRST_SECOND_NAME_TITLE}</label>
						<div class="uk-form-controls">
							{USERS_PROFILE_FIRST_SECOND_NAME}
						</div>
					</div>
				</div>
				<!-- ENDIF -->
			<!-- IF {PHP.cot_plugins_active.locationselector} -->
			<div class="uk-margin-top">
				<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
				{USERS_PROFILE_LOCATION}
				</div>
			</div>
			<!-- ENDIF -->
			<div class="uk-margin">
			<div class="uk-grid-small uk-child-width-expand@s" uk-grid uk-height-match="target: > div > .uk-card">
				<div>
					<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
						<label class="uk-form-label">{PHP.L.Timezone}:</label>
						<div class="uk-form-controls">
							{USERS_PROFILE_TIMEZONE}
						</div>
					</div>
				</div>
				<div>
					<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
						<label class="uk-form-label">{PHP.L.Theme}:</label>
						<div class="uk-form-controls">
							{USERS_PROFILE_THEME}
						</div>
					</div>
				</div>
				<div>
					<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
						<label class="uk-form-label">{PHP.L.Language}:</label>
						<div class="uk-form-controls">
							{USERS_PROFILE_LANG}
						</div>
					</div>
				</div>
			</div>
			</div>

			<div class="uk-margin-top">
				<div class="uk-grid-small uk-child-width-expand@s" uk-grid uk-height-match="target: > div > .uk-card">
					
			<!-- IF {USERS_PROFILE_GROUPSELECT} -->
			<!-- IF {PHP.cfg.plugin.usergroupselector.allowchange}  -->
			<div>
				<div class="uk-card uk-card-default">
					<div class="uk-card-header">
					
						<h4 class="">{PHP.L.profile_group}:</h4>
						<p class="uk-text-meta">Смена группы в настройках профиля ничего не изменит, если переход в другую группы не разрешен администратором</p> ({PHP.cfg.plugin.usergroupselector.allowchange})
					 </div>
					<div class="uk-card-body">
						{USERS_PROFILE_GROUPSELECT}
					</div>
				</div>
			</div>	
			<!-- ENDIF -->
			<!-- ENDIF -->
					
					<div>
						<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
							<label class="uk-form-label">{PHP.L.users_hideemail}:</label>
							<div class="uk-form-controls">
								{USERS_PROFILE_HIDEEMAIL}
							</div>
							<!-- IF {PHP.cot_modules.pm} -->
							<hr>
							<label class="uk-form-label">{PHP.L.users_pmnotify}:</label>
							<div class="uk-form-controls">
								{USERS_PROFILE_PMNOTIFY}
							</div>
							<!-- ENDIF -->
						</div>
					</div>
					<div>
						<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
							<label class="uk-form-label">{PHP.L.Birthdate}:</label>
							<div class="uk-form-controls">
								{USERS_PROFILE_BIRTHDATE}
							</div>
							<hr>
							<label class="uk-form-label">{PHP.L.Gender}:</label>
							<div class="uk-form-controls">
								{USERS_PROFILE_GENDER}
							</div>
						</div>
					</div>
				</div>
			</div>

            <div class="uk-margin">
				<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
                <h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.Signature}:</h4>
				<label class="uk-form-label uk-margin-remove-top">{PHP.L.User_Edit_Signature}</label>
                <div class="uk-form-controls">
                    {USERS_PROFILE_TEXT}
                </div>
                <span id="rusertext" class="uk-text-success tp-text-small"></span> <span class="uk-text-danger tp-text-small"> знаков осталось. </span> <span class="uk-text-primary tp-text-small">лимит символов - {PHP.cfg.users.usertextmax}</span>
                <script type="text/javascript">
                    $(document).ready(function(){
                        $('textarea[name=rusertext]').limit('{PHP.cfg.users.usertextmax}','#rusertext');
                    });
                </script>
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
<!-- END: MAIN -->
