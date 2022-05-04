<div id="aut_user" uk-offcanvas="flip: true; overlay: true">
    <div class="uk-offcanvas-bar">
        <button class="uk-offcanvas-close" type="button" uk-close></button>
				<ul class="uk-nav uk-list uk-light">
				<li><span class="uk-text-warning uk-text-center uk-h3">{PHP.cfg.maintitle}</span></li>


        <form action="{PHP|cot_url('login','a=check')}" method="post">
			<hr class="uk-margin-small">
				<div class="uk-margin">
					<div class="uk-inline">
						<span class="uk-form-icon" uk-icon="icon: user"></span>
						<input class="uk-input uk-border-rounded-mdm"  type="text" name="rusername" placeholder="Логін чи email" required />
					</div>
				</div>
				<div class="uk-margin">
					<div class="uk-inline">
						<span class="uk-form-icon" uk-icon="icon: lock"></span>
						<input class=" uk-border-rounded-mdm uk-input" type="password" name="rpassword" placeholder="Пароль" required />
					</div>
				</div>
				<button class="uk-width-1-1 uk-button uk-button-default" type="submit" uk-tooltip="{PHP.L.aut_login_acc_title}">{PHP.L.aut_login_acc}</button>


					

        </form>
					<hr class="uk-divider-icon uk-margin-small">

					<li><a class="uk-width-1-1 uk-button uk-button-primary" uk-tooltip="{PHP.L.register_acc_title}" href="{PHP|cot_url('users','m=register')}">{PHP.L.Register}</a></li>
<!-- IF {PHP.usr.id} == 0 -->
						<li><a rel="nofollow" class="" href="{PHP|cot_url('users', 'm=passrecover')}"><span class="uk-text-middle uk-margin-small-right uk-text-warning uk-h2"><i class="ti ti-refresh-alert"></i></span><span class="uk-light uk-text-middle" uk-tooltip="Відновити доступ до особистого профілю">Забув пароль</span></a></li>
						<!-- ENDIF -->
				</ul>
    </div>
</div>
