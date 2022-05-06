<!-- BEGIN: MAIN -->
<!-- пояснения по тэгам и экстраполям шаблона 
Помощь и поддержка https://t.me/webitproff --> {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"} <div class="uk-section uk-section-muted">
  <div class="uk-container">
    <div class="tm-timeout" data-timeout="5000">
      <div class="uk-alert uk-visible@m" uk-alert>
        <a class="uk-alert-close" uk-close></a>
        <h4 class="uk-heading-bullet">
          <span class="uk-text-bold uk-text-warning">Информация для Администратора</span>
        </h4>
        <p>Этот шаблон находится по адресу <br>
          <code>{PHP.mskin}</code>
          <br>Не изменяйте настройки данной группы в админке, если не знаете, что к чему.
        </p>
      </div>
    </div>
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
                <h3 class="uk-text-bold uk-text-primary" uk-tooltip="Логин в системе может изменить только Администратор">{PHP.urr.user_name}</h3>
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
            <label class="uk-margin-small-right">{PHP.L.users_lastip}:</label>
            <span class="uk-text-bold uk-text-danger">{PHP.usr.profile.user_lastip}</span>
          </div>
        </div>
      </div>
      <hr class="uk-divider-icon">
      <form action="{USERS_PROFILE_FORM_SEND}" method="post" enctype="multipart/form-data" name="profile" class="uk-form-stacked">
        <input type="hidden" name="userid" value="{USERS_PROFILE_ID}" />
        <div class="uk-margin">
          <div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
            <!-- IF !{PHP.urr.user_avatar|file_exists($this)} -->
            <div class="uk-text-center">
              <img class="uk-border-rounded" src="themes/{PHP.theme}/img/avatar.png" alt="" width="200" height="200" />
            </div>
            <!-- ENDIF -->
            <!-- IF {USERS_PROFILE_AVATAR} -->
            <div class="uk-text-center"> {USERS_PROFILE_AVATAR} </div>
            <div class="uk-margin-top uk-text-center">
              <span class="uk-text-small">Логотип компании или Avatar, - минимальный размер фотографии 200x200px</span>
            </div>
            <!-- ENDIF -->
          </div>
        </div>
        <div class="uk-margin">
          <div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
            <h3 class="uk-heading-bullet">{PHP.L.Security_account}</h3>
            <label class="uk-margin-small-right">{PHP.L.current_youremail} <span class="uk-margin-small-left uk-text-primary" data-uk-icon="icon: question; ratio: 1.2" data-uk-tooltip="Используется для необходимых авторизованых операций, в том числе для восстановления пароля"></span>
            </label>
            <span class="uk-text-bold uk-text-primary">{PHP.usr.profile.user_email} <span class="uk-margin-small-left uk-text-danger" data-uk-icon="icon: warning; ratio: 1.2" data-uk-tooltip="Если ниже нет формы для смены E-mail - обратитесь к Администратору"></span>
            </span>
          </div>
        </div>
        <hr class="uk-divider-icon">
        <div class="uk-margin">
          <div class="uk-grid-small uk-child-width-expand@m" uk-grid uk-height-match="target: > div > .uk-card">
            <div>
              <div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
                <label class="uk-form-label">{PHP.L.Username}:</label>
                <div class="uk-form-controls">
                  <h3 class="uk-text-bold uk-text-primary" uk-tooltip="Логин в системе может изменить только Администратор">{USERS_PROFILE_NAME}</h3>
                </div>
              </div>
            </div>
            <!-- IF {USERS_PROFILE_NAME_COMPANY} -->
            <div>
              <div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
                <label class="uk-form-label">{USERS_PROFILE_NAME_COMPANY_TITLE}</label>
                <div class="uk-form-controls"> {USERS_PROFILE_NAME_COMPANY} </div>
              </div>
            </div>
            <!-- ENDIF -->
          </div>
        </div>
        <!-- IF {USERS_PROFILE_BIRTHDATE} -->
        <div class="uk-margin">
          <div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
            <label class="uk-form-label">Дата основания компании</label>
            <div class="uk-form-controls"> {USERS_PROFILE_BIRTHDATE} </div>
          </div>
        </div>
        <!-- ENDIF -->
        <!-- IF {USERS_PROFILE_ADRESS_LOCAL} -->
        <div class="uk-margin">
          <div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
            <label class="uk-form-label">{USERS_PROFILE_ADRESS_LOCAL_TITLE}</label>
            <div class="uk-form-controls"> {USERS_PROFILE_ADRESS_LOCAL} </div>
          </div>
        </div>
        <!-- ENDIF -->
        <!-- IF {PHP.cot_plugins_active.locationselector} -->
        <div class="uk-margin-top">
          <div class="uk-card uk-card-default uk-padding-small uk-border-rounded"> {USERS_PROFILE_LOCATION} </div>
        </div>
        <!-- ENDIF -->
        <div class="uk-margin">
          <div class="uk-grid-small uk-child-width-1-2@s" uk-grid uk-height-match="target: > div > .uk-card">
            <!-- IF {USERS_PROFILE_TIME_WORKING} -->
            <div>
              <div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
                <label class="uk-form-label">
                  <span class="uk-text-danger" uk-icon="icon: clock; ratio: 1.2"></span>
                  <span class="uk-text-bold uk-link-text uk-margin-small-left uk-text-middle">{USERS_PROFILE_TIME_WORKING_TITLE}</span>
                </label>
                <div class="uk-form-controls"> {USERS_PROFILE_TIME_WORKING} </div>
              </div>
            </div>
            <!-- ENDIF -->
            <!-- IF {USERS_PROFILE_FIRST_SECOND_NAME} -->
            <div>
              <div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
                <label class="uk-form-label">{USERS_PROFILE_FIRST_SECOND_NAME_TITLE}</label>
                <div class="uk-form-controls"> {USERS_PROFILE_FIRST_SECOND_NAME} </div>
              </div>
            </div>
            <!-- ENDIF -->
            <!-- IF {USERS_PROFILE_PHONE_CONTACT} -->
            <div>
              <div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
                <label class="uk-form-label">{USERS_PROFILE_PHONE_CONTACT_TITLE}</label>
                <div class="uk-form-controls"> {USERS_PROFILE_PHONE_CONTACT} </div>
              </div>
            </div>
            <!-- ENDIF -->
            <!-- IF {USERS_PROFILE_WHATS_APP} -->
            <div>
              <div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
                <label class="uk-form-label">{USERS_PROFILE_WHATS_APP_TITLE}</label>
                <div class="uk-form-controls"> {USERS_PROFILE_WHATS_APP} </div>
              </div>
            </div>
            <!-- ENDIF -->
            <!-- IF {USERS_PROFILE_TELEGRAM} -->
            <div>
              <div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
                <label class="uk-form-label">{USERS_PROFILE_TELEGRAM_TITLE}</label>
                <div class="uk-form-controls"> {USERS_PROFILE_TELEGRAM} </div>
              </div>
            </div>
            <!-- ENDIF -->
            <!-- IF {USERS_PROFILE_FACEBOOK} -->
            <div>
              <div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
                <label class="uk-form-label">
                  <img class="uk-margin-small-right" width="27" height="27" alt="" src="themes/{PHP.theme}/img/iconsoclogo/facebook.svg" uk-svg="uk-preserve" uk-tooltip="FACEBOOK">
                  <span class="uk-text-middle"> {USERS_PROFILE_FACEBOOK_TITLE} </span>
                </label>
                <div class="uk-form-controls"> {USERS_PROFILE_FACEBOOK} </div>
              </div>
            </div>
            <!-- ENDIF -->
            <!-- IF {USERS_PROFILE_INSTAGRAM} -->
            <div>
              <div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
                <label class="uk-form-label">
                  <img class="uk-margin-small-right" width="27" height="27" alt="" src="themes/{PHP.theme}/img/iconsoclogo/instagram.svg" uk-svg="uk-preserve" uk-tooltip="{USERS_PROFILE_INSTAGRAM_TITLE}">
                  <span class="uk-text-middle"> {USERS_PROFILE_INSTAGRAM_TITLE} </span>
                </label>
                <div class="uk-form-controls"> {USERS_PROFILE_INSTAGRAM} </div>
              </div>
            </div>
            <!-- ENDIF -->
            <!-- IF {USERS_PROFILE_WWW_SITE} -->
            <div>
              <div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
                <label class="uk-form-label">
                  <img class="uk-margin-small-right" width="27" height="27" alt="" src="themes/{PHP.theme}/img/iconuserdet/world-wide-web.svg" uk-svg="uk-preserve" uk-tooltip="{USERS_PROFILE_WWW_SITE_TITLE}">
                  <span class="uk-text-middle"> {USERS_PROFILE_WWW_SITE_TITLE} </span>
                </label>
                <div class="uk-form-controls" uk-tooltip="Введите ссылку на ваш сайт, если таковой имеется. Не имеет значения с HTTP, HTTPS, WWW или вообще без них."> {USERS_PROFILE_WWW_SITE} </div>
              </div>
            </div>
            <!-- ENDIF -->
            <!-- IF {USERS_PROFILE_YOUTUBE_LINK} -->
            <div>
              <div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
                <label class="uk-form-label">
                  <img class="uk-margin-small-right" width="27" height="27" alt="" src="themes/{PHP.theme}/img/iconsoclogo/YouTube_soc.svg" uk-svg="uk-preserve" uk-tooltip="YouTube">
                  <span class="uk-text-middle"> {USERS_PROFILE_YOUTUBE_LINK_TITLE} </span>
                </label>
                <div class="uk-form-controls" uk-tooltip="Ссылка на ваш YouTube видео канал или видеообзор"> {USERS_PROFILE_YOUTUBE_LINK} </div>
              </div>
            </div>
            <!-- ENDIF -->
          </div>
        </div>
        <hr class="uk-divider-icon">
        <div class="uk-margin-top">
          <div class="uk-grid-small uk-child-width-expand@s" uk-grid uk-height-match="target: > div > .uk-card">
            <div>
              <div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
                <h4 class="uk-text-warning">{PHP.L.Categories} ({PHP.L.User_Skills}):</h4>
                <div class="uk-form-controls uk-panel uk-panel-scrollable"> {USERS_PROFILE_CAT} </div>
              </div>
            </div>
            <div>
              <div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
                <label class="uk-form-label">{PHP.L.users_hideemail}:</label>
                <div class="uk-form-controls"> {USERS_PROFILE_HIDEEMAIL} </div>
                <!-- IF {PHP.cot_modules.pm} -->
                <hr>
                <label class="uk-form-label">{PHP.L.users_pmnotify}:</label>
                <div class="uk-form-controls"> {USERS_PROFILE_PMNOTIFY} </div>
                <!-- ENDIF -->
                <!-- IF {PHP.cot_modules.cwsender} -->
                <hr>
                <label class="uk-form-label">Подписаться на уведомления и новости портала:</label>
                <div class="uk-form-controls"> {USERS_PROFILE_SENDMAIL} </div>
                <!-- ENDIF -->
              </div>
            </div>
            <div>
              <!-- IF {USERS_PROFILE_GROUPSELECT} -->
              <div class="uk-margin">
                <div class="uk-card uk-card-default">
                  <div class="form-group row
					<!-- IF !{PHP.cfg.plugin.usergroupselector.allowchange} AND {PHP.cfg.plugin.usergroupselector.required} --> sr-only
					<!-- ENDIF -->">
                    <div class="uk-card-header">
                      <h4 class="">{PHP.L.profile_group}:</h4>
                    </div>
                    <div class="uk-card-body"> {USERS_PROFILE_GROUPSELECT} </div>
                  </div>
                </div>
              </div>
              <!-- ENDIF -->
            </div>
          </div>
        </div>
        <div class="uk-margin">
          <div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
            <h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.Signature}:</h4>
            <label class="uk-form-label uk-margin-remove-top">{PHP.L.User_PROFILE_Signature}</label>
            <div class="uk-form-controls"> {USERS_PROFILE_TEXT} </div>
            <span id="rusertext" class="uk-text-success tp-text-small"></span>
            <span class="uk-text-danger tp-text-small"> знаков осталось. </span>
            <span class="uk-text-primary tp-text-small">лимит символов - {PHP.cfg.users.usertextmax}</span>
            <script type="text/javascript">
              $(document).ready(function() {
                $('textarea[name=rusertext]').limit('{PHP.cfg.users.usertextmax}', '#rusertext');
              });
            </script>
          </div>
        </div>
        <!-- IF {USERS_PROFILE_VIDEO_COMPANY_MP4} -->
        <div class="uk-margin">
          <div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
            <label class="uk-form-label">{USERS_PROFILE_VIDEO_COMPANY_MP4_TITLE}</label>
            <div class="uk-form-controls">
              <div class="uk-width-1-2@m uk-align-center"> {USERS_PROFILE_VIDEO_COMPANY_MP4} </div>
            </div>
          </div>
        </div>
        <!-- ENDIF -->
        <!-- BEGIN: USERS_PROFILE_EMAILCHANGE -->
        <div class="uk-margin">
          <div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
            <div id="emailtd">
              <div class="uk-grid-small" uk-grid uk-height-match="">
                <div class="uk-width-1-2@m">
                  <label class="uk-form-label">Изменить Email вашего аккаунта: <span class="uk-margin-small-left uk-text-primary" uk-icon="icon: question; ratio: 1.2" uk-tooltip="Оставьте как есть, если смена Email не требуется"></span>
                  </label>
                  <div class="uk-form-controls"> {USERS_PROFILE_EMAIL} </div>
                </div>
                <!-- BEGIN: USERS_PROFILE_EMAILPROTECTION -->
                <script type="text/javascript">
                  //
                  < ![CDATA[$(document).ready(function() {
                        $("#emailnotes").hide();
                        $("#emailtd").click(function() {
                          $("#emailnotes").slideDown();
                        });
                      });
                      //]]>
                </script>
                <div class="uk-width-1-2@m">
                  <label class="uk-form-label">{PHP.themelang.usersprofile_Emailpassword}: <span class="uk-margin-small-left uk-text-primary" uk-icon="icon: question; ratio: 1.2" data-uk-tooltip="Введите текущий пароль для подтверждения смены Email вашего аккаунта"></span>
                  </label>
                  <div class="uk-form-controls"> {USERS_PROFILE_EMAILPASS} </div>
                </div>
                <!-- END: USERS_PROFILE_EMAILPROTECTION -->
              </div>
              <div id="emailnotes" class=" uk-alert-warning uk-border-rounded " uk-alert>
                <a class="uk-alert-close" uk-close></a> {PHP.themelang.usersprofile_Emailnotes}
              </div>
            </div>
          </div>
        </div>
        <!-- END: USERS_PROFILE_EMAILCHANGE -->
        <div class="uk-margin">
          <div class="uk-grid-small uk-child-width-expand@s" uk-grid uk-height-match="target: > div > .uk-card">
            <div>
              <div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
                <label class="uk-form-label">{PHP.L.users_newpass}: <span class="uk-margin-small-left uk-text-primary" uk-icon="icon: question; ratio: 1.2" data-uk-tooltip="Если забыли, - пароль можно сбросить по ссылке на форме авторизации"></span>
                </label>
                <div class="uk-form-controls"> {USERS_PROFILE_OLDPASS} </div> {PHP.L.users_newpasshint1}
              </div>
            </div>
            <div>
              <div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
                <label class="uk-form-label">новый пароль </label>
                <div class="uk-form-controls"> {USERS_PROFILE_NEWPASS1} </div>
              </div>
            </div>
            <div>
              <div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
                <label class="uk-form-label">новый пароль еще раз</label>
                <div class="uk-form-controls"> {USERS_PROFILE_NEWPASS2} </div>
              </div>
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
  (function($) {
    $.fn.extend({
      limit: function(limit, element) {
        var interval;
        var self = $(this);
        var check_limit = function() {
          var val = self.val();
          var length = val.length;
          if (length > limit) {
            self.val(val.substring(0, limit));
          }
          if ($(element).html() !== limit - length) {
            $(element).html((limit - length <= 0) ? '0' : limit - length);
          }
        };
        self.focus(function() {
          interval = window.setInterval(check_limit, 100);
        });
        self.blur(function() {
          clearInterval(interval);
          check_limit();
        });
        check_limit();
      }
    });
  })(jQuery);
</script>
<script>
  document.addEventListener('DOMContentLoaded', function() {
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
