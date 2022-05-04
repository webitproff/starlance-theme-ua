<!-- BEGIN: MAIN --> {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"} 
<div class="uk-section-default uk-padding-remove-vertical uk-background-primary">
    <div class="uk-grid-collapse uk-grid-match" uk-grid>
      <div class="uk-visible@m uk-width-1-2@m uk-width-expand@l">
        <div class="uk-padding-large uk-light uk-background-cover" style="background-image: url(themes/starlance/img/webp/bg-register.webp)">
          <div class="uk-container uk-text-center uk-margin-large-top uk-animation-fade">
            <div class="uk-overlay uk-overlay-default uk-border-rounded">
              <div class="uk-visible@m">
                <h1 class="uk-link-text uk-text-uppercase uk-heading-medium uk-text-bold">
                 {PHP.cfg.maintitle}
                </h1>
              </div>
              <h2 class="uk-link-text uk-text-uppercase uk-heading-medium uk-text-bold uk-hidden@m">{PHP.cfg.maintitle}</h2>
              <h5 class="uk-link-text uk-text-uppercase">Уже зарегистрированы?</h5>
              <a class="uk-button uk-button-large uk-button-default uk-light uk-margin-top" href="{PHP|cot_url('login')}">{PHP.L.Login}</a>
            </div>
          </div>
        </div>
      </div>
      <div class="uk-width-1-2@m uk-width-1-3@l">
        <div class="">
          <div class="uk-container uk-container-small uk-margin-large-top uk-margin-large-bottom">
		  <h1 class="uk-heading-line uk-text-center"><span>{USERS_REGISTER_TITLE}</span></h1>
            <form name="login" action="{USERS_REGISTER_SEND}" method="post" enctype="multipart/form-data" class="uk-form-stacked">
              <!-- IF {USERS_REGISTER_GROUPSELECTBOX} -->
              <div class="uk-margin">
                <label class="uk-form-label uk-text-uppercase">{PHP.L.profile_group}:</label>
                <div class="uk-form-controls"> {USERS_REGISTER_GROUPSELECTBOX} </div>
              </div>
              <!-- ENDIF -->
              <div class="uk-margin">
                <label class="uk-form-label">
                  <span class="uk-text-uppercase">{PHP.L.Username}:</span>
                  <span class="uk-text-danger"> {PHP.L.Username_note}</span>
                </label>
                <div class="uk-form-controls"> {USERS_REGISTER_USER|cot_rc_modify($this, 'placeholder="MyNickName"')} </div>
              </div>
              <!-- IF {USERS_REGISTER_NAM} -->
              <div class="uk-margin">
                <label class="uk-form-label uk-text-uppercase">{USERS_REGISTER_NAM_TITLE}</label>
                <div class="uk-form-controls"> {USERS_REGISTER_NAM} </div>
              </div>
              <!-- ENDIF -->
              <!-- IF {USERS_REGISTER_FIRST_SECOND_NAME} -->
              <div class="uk-margin">
                <label class="uk-form-label uk-text-uppercase">{USERS_REGISTER_FIRST_SECOND_NAME_TITLE}</label>
                <div class="uk-form-controls"> {USERS_REGISTER_FIRST_SECOND_NAME} </div>
              </div>
              <!-- ENDIF -->
              <div class="uk-margin">
                <label class="uk-form-label uk-text-uppercase">{PHP.L.Email}:</label>
                <div class="uk-form-controls">
                  <div class="uk-inline uk-width-1-1">
                    <a class="uk-form-icon uk-form-icon-flip" href="#modal-registr-question" uk-toggle>
                      <span class="uk-text-danger" uk-icon="icon: question; ratio: 1.2"></span>
                    </a>
                    <input placeholder="my_real_email@gmail.com" class="uk-input uk-width-1-1" type="text" name="ruseremail" value="" size="24" maxlength="64">
                  </div>
                </div>
                <div id="modal-registr-question" class="uk-flex-top" uk-modal>
                  <div class="uk-modal-dialog uk-modal-body uk-background-muted uk-border-rounded uk-margin-auto-vertical">
                    <button class="uk-modal-close-default uk-button uk-icon-button" type="button" uk-close></button>
                    <div class="">
                      <h4 class="uk-text-bold uk-animation-slide-right uk-animation-toggle" tabindex="0">
                        <img class="uk-animation-shake uk-margin-small-right" width="27" height="27" alt="" uk-img="data-src: {PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/icon/048-notification.svg" uk-svg="uk-preserve">
                        <span class="uk-text-danger uk-margin-small-left uk-text-middle">Внимание!</span>
                      </h4>
                      <ul class="uk-list uk-list-decimal">
                        <li>
                          <span class="uk-text-danger">E-mail</span> должен быть действующим, на него придет письмо для подтверждения регистрации
                        </li>
                        <li>Если письма для подтверждения регистрации нет во входящих, - проверьте папку "СПАМ"</li>
                        <li>Если нет и в папке спама по истечению 5-15 минут, напишите администратору <a class="" href="{PHP|cot_url('contact')}">через форму обратной связи</a>
                        </li>
                      </ul>
                      <div class="uk-text-right">
                        <button class="uk-button uk-button-default uk-modal-close" type="button">Понятно !</button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="uk-margin">
                <label class="uk-form-label uk-text-uppercase">{PHP.L.Password}:</label>
                <div class="uk-form-controls"> {USERS_REGISTER_PASSWORD} </div>
              </div>
              <div class="uk-margin">
                <label class="uk-form-label uk-text-uppercase">{PHP.L.users_confirmpass}:</label>
                <div class="uk-form-controls"> {USERS_REGISTER_PASSWORDREPEAT} </div>
              </div>
              <div class="uk-margin">
                <label class="uk-form-label uk-text-uppercase">{USERS_REGISTER_VERIFYIMG}</label>
                <div class="uk-form-controls">{USERS_REGISTER_VERIFYINPUT}</div>
              </div>
              <div class="uk-margin">
                <!-- IF {PHP.cot_plugins_active.useragreement} -->
                <div class=""> {PHP|cot_checkbox(0, 'ruseragreement', '')} <a href="{PHP|cot_url('plug', 'e=useragreement')}" class="uk-link-reset" target="blank"> {PHP.L.useragreement_agree}</a>
                </div>
                <!-- ENDIF -->
              </div>
              <div class="uk-margin">
                <div class="uk-alert-warning" uk-alert>
                  <a class="uk-alert-close" uk-close></a>
                  <span class="uk-text-small">{PHP.L.login_warning_notice}</span>
                </div>
              </div>
              <div class="uk-margin">
                <button class="uk-button uk-button-default uk-button-large uk-float-right" type="submit" name="submit">{PHP.L.Register} </button>
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
</div>
<!-- END: MAIN -->