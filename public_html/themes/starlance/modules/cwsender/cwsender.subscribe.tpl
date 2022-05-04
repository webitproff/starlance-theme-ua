<!-- BEGIN: MAIN -->
<section class="uk-background-muted">
    <div class="uk-container uk-container-large uk-padding uk-margin-large-top" uk-scrollspy="cls: uk-animation-fade; target: .uk-card; delay: 250; repeat: true">
        <div class="uk-card">
            <header>
                <h3 class="uk-heading-bullet uk-text-uppercase uk-text-bold uk-link-text">Будь всегда в курсе событий</h3>
            </header>
            <form action="{SUBS_ID|cot_url('cwsender', 'm=subscribe&a=send&id='$this)}" method="post" class="uk-form-stacked">
			<div class="uk-grid-small uk-child-width-expand@s" uk-grid>
				<div>
					<label class="uk-form-label uk-text-uppercase">{PHP.L.cwsender_subscribe_name}</label>
					<div class="uk-form-controls">
						<input class="uk-margin-bottom uk-width-1-1 uk-input" type="text" name="rname" placeholder="MyNickName" />
					</div>
				</div>
				<div>
					<label class="uk-form-label uk-text-uppercase">{PHP.L.cwsender_subscribe_email}</label>
					<div class="uk-form-controls">
						<input class="uk-margin-bottom uk-width-1-1 uk-input" type="text" name="remail" placeholder="my_real_email@gmail.com" />
					</div>
				</div>
				<div>
					<label class="uk-form-label uk-visible@s"><span class="uk-flex uk-flex-center" uk-icon="icon: check"></span></label>
					<div class="uk-form-controls">
					<button class="uk-button uk-button-default uk-width-1-1" type="submit" uk-tooltip="{PHP.L.cwsender_notice_title}">{PHP.L.cwsender_notice_ok}</button>
					</div>
				</div>
			</div>
			</form>
        </div>
    </div>
</section>
<!-- END: MAIN -->

