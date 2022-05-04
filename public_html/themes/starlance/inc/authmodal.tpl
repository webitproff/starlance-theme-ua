<!-- IF {PHP.usr.id} == 0 -->
<div id="AuthModal" class="uk-flex-top" uk-modal>
    <div class="uk-modal-dialog uk-modal-body uk-background-primary uk-border-rounded-mdm uk-margin-auto-vertical">
        <button class="uk-modal-close-default uk-button-secondary uk-border-rounded-mdm" type="button" uk-close></button>
		<div class="uk-alert-success uk-border-rounded-mdm uk-text-center" uk-alert>
			 <h3 class="uk-modal-title">{PHP.L.auth_login_user}</h3>
		</div>
        <form action="{PHP|cot_url('login','a=check')}" method="post">
			<hr class="uk-margin-small">
				<div class="uk-margin">
					<div class="uk-inline">
						<span class="uk-form-icon" uk-icon="icon: user"></span>
						<input class="uk-input uk-border-rounded-mdm"  type="text" name="rusername" placeholder="Логин или email" required />
					</div>
				</div>
				<div class="uk-margin">
					<div class="uk-inline">
						<span class="uk-form-icon" uk-icon="icon: lock"></span>
						<input class=" uk-border-rounded-mdm uk-input" type="password" name="rpassword" placeholder="Пароль" required />
					</div>
				</div>
			<hr class="uk-divider-icon uk-margin-small">
			<div class="uk-grid-small uk-child-width-1-2@s uk-text-center" uk-grid>
				<div>
					<a class="uk-width-1-1 uk-button uk-button-primary uk-visible@s" uk-tooltip="{PHP.L.register_acc_title}" href="{PHP|cot_url('users','m=register')}">{PHP.L.Register}</a>
				</div>
				<div>
					<button class="uk-width-1-1 uk-button uk-button-default" type="submit" uk-tooltip="{PHP.L.aut_login_acc_title}">{PHP.L.aut_login_acc}</button>
				</div>
			</div>
        </form>
    </div>
</div>
<!-- ENDIF -->