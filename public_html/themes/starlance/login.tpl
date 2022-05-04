<!-- BEGIN: MAIN -->
<!-- IF {PHP.usr.id} > 0 -->
<div class="uk-section uk-section-default">
    <div class="uk-container uk-border-rounded">
        <div class="uk-margin-top uk-margin-large-bottom">
            <div class="uk-card uk-card-default uk-card-body uk-alert-warning uk-border-rounded" uk-alert>
                <h3 class="uk-heading-bullet uk-text-uppercase uk-text-bold uk-link-text">{PHP.usr.name}</h3>
                <p class="uk-font-face">{PHP.L.users_loggedinas} <a href="{PHP.usr.name|cot_url('users','m=details&id=$this')}">{PHP.usr.name}</a>.{PHP.L.users_logoutfirst}</p>
                <a class="uk-button uk-button-default" href="{PHP.sys.xk|cot_url('login','out=1&x=$this', '', 0, 1)}">{PHP.L.Logout}</a>
            </div>
        </div>
    </div>
</div>
<!-- ELSE -->
<!-- BEGIN: USERS_AUTH_MAINTENANCE -->
<div class="uk-alert uk-alert-warning">
    <h3 class="uk-heading-bullet uk-text-uppercase uk-text-bold uk-link-text">{PHP.L.users_maintenance1}</h3>
    <p class="uk-font-face">{PHP.L.users_maintenance2}</p>
</div>
<!-- END: USERS_AUTH_MAINTENANCE -->
<div class="uk-background-fixed uk-background-center-center" style="background-image: url('themes/{PHP.theme}/img/login-bg.jpg');" uk-height-viewport="expand: true">
    <div class="uk-flex-middle uk-grid-collapse" uk-grid>
        <div class="uk-visible@s uk-width-1-2@s uk-width-1-2@m uk-width-expand@l">
            <div class="uk-card">
                <div class="uk-position-absolute uk-transform-center uk-text-center uk-animation-fade" style="left: 50%; top: 50%;">
                    <div class="">
                        <div class="uk-visible@m">
                            <h1 class="uk-link-text uk-text-uppercase uk-heading-large uk-text-bold">
                                <a class="uk-link-reset" href="{PHP|cot_url('index')}">{PHP.cfg.maintitle}</a>
                            </h1>
                        </div>
                        <h3 class="uk-text-uppercase uk-heading-medium uk-text-bold uk-hidden@m">{PHP.cfg.maintitle}</h3>
                        <h5 class="uk-text-uppercase">Вы еще не зарегистрированы?</h5>
                        <a class="uk-button uk-button-large uk-button-default uk-light uk-margin-top" href="{PHP|cot_url('users','m=register')}">{PHP.L.Register}</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="uk-width-1-2@s uk-width-1-2@m uk-width-1-3@l">
            <div class="uk-overlay uk-overlay-warning uk-card uk-card-body">
                <h2 class="uk-text-bold uk-heading-bullet uk-text-uppercase uk-link-text">{USERS_AUTH_TITLE}</h2>
                <form name="login" action="{USERS_AUTH_SEND}" method="post" class="uk-form-stacked">
                    {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
                    <div class="uk-margin">
                        <label class="uk-form-label uk-text-uppercase">{PHP.L.Username}:</label>
                        <div class="uk-form-controls">{USERS_AUTH_USER|cot_rc_modify($this, 'class="uk-input uk-border-rounded-mdm"')}</div>
                    </div>
                    <div class="uk-margin">
                        <label class="uk-form-label uk-text-uppercase">{PHP.L.Password}:</label>
                        <div class="uk-form-controls">{USERS_AUTH_PASSWORD|cot_rc_modify($this, 'class="uk-input uk-border-rounded-mdm"')}</div>
                    </div>
                    <div class="uk-margin">
                        <a class="uk-link-reset uk-text-uppercase" href="{PHP|cot_url('users', 'm=passrecover')}" target="_blank">
                            <span uk-icon="refresh" class="uk-margin-small-right uk-icon uk-text-warning"></span>
                            <span class="uk-text-middle">{PHP.L.users_lostpass}</span>
                        </a>
                    </div>
                    <div class="uk-margin">
                        <div class="uk-alert-warning uk-border-rounded-mdm" uk-alert>
                            <a class="uk-alert-close" uk-close></a>
                            <span class="uk-text-small">{PHP.L.login_warning_notice}</span>
                        </div>
                    </div>
                    <div class="uk-margin uk-text-center">
                        <button class="uk-button uk-button-secondary uk-button-large uk-width-1-2@m" uk-tooltip="{PHP.L.aut_login_acc_title}" type="submit" name="rlogin" value="0">{PHP.L.aut_login_acc}</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- ENDIF -->
<!-- END: MAIN -->
