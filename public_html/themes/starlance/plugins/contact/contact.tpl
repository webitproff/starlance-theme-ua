<!-- BEGIN: MAIN -->
<div class="uk-background-muted uk-section">
    <div class="uk-container uk-container-large">
	    <h1 class="uk-heading-bullet uk-text-uppercase uk-text-bold uk-link-text uk-h3">{PHP.L.contact_title}</h1>
        <div class="uk-grid-medium" uk-grid>
            <div class="uk-width-1-3@m">
				<div class="uk-card uk-card-default uk-card-body">
				<!-- IF {PHP.cfg.plugin.contact.about} -->
				<div class="uk-margin">
				{PHP.cfg.plugin.contact.about}
				</div>
				<!-- ENDIF -->
				<!-- IF {PHP.cfg.plugin.contact.map} -->
				<div class="uk-margin uk-text-center">
					<div uk-lightbox>
						<a class="uk-button uk-button-large uk-button-success uk-animation-shake uk-animation-reverse" href="{PHP.cfg.plugin.contact.map}" data-caption="Google Maps" data-type="iframe">Google Maps</a>
					</div>
				</div>
				<!-- ENDIF -->
<!-- для того чтобы карта работала, в админке в поле, вставляем просто ссылку типа
https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d152201.77188370386!2d-3.0561416146648845!3d53.412095442415314!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x487adf8a647060b7%3A0x42dc046f3f176e01!2z0JvQuNCy0LXRgNC_0YPQu9GMLCDQktC10LvQuNC60L7QsdGA0LjRgtCw0L3QuNGP!5e0!3m2!1sru!2sua!4v1606260066801!5m2!1sru!2sua -->
				</div>
            </div>
            <div class="uk-width-2-3@m">
				{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
				<!-- BEGIN: FORM -->
				<div class="uk-card uk-background-primary uk-card-body uk-border-rounded uk-animation-scale-up">
				<form action="{CONTACT_FORM_SEND}" method="post" name="contact_form" enctype="multipart/form-data" class="uk-form-stacked uk-margin-large">
                    
                    <div class="uk-margin"> 
					<label class="uk-form-label">{PHP.L.Username}:</label>
                        <div class="uk-form-controls"> 
						{CONTACT_FORM_AUTHOR}
						</div>
                    </div>
                    <div class="uk-margin"> 
					<label class="uk-form-label">{PHP.L.Email}:</label>
                        <div class="uk-form-controls"> 
						{CONTACT_FORM_EMAIL}
						</div>
                    </div>
                    <div class="uk-margin"> 
					<label class="uk-form-label">{PHP.L.Subject}:</label>
                        <div class="uk-form-controls"> 
						{CONTACT_FORM_SUBJECT}
						</div>
                    </div>
                    <div class="uk-margin"> 
					<label class="uk-form-label">{PHP.L.Message}:</label>
                        <div class="uk-form-controls"> 
						{CONTACT_FORM_TEXT|cot_rc_modify($this, 'style="width:100%;"')}
						</div>
                    </div> 
					<!-- BEGIN: EXTRAFLD -->
                    <div class="uk-margin"> 
					<label class="uk-form-label">{CONTACT_FORM_EXTRAFLD_TITLE}:</label>
						<div class="uk-form-controls"> {CONTACT_FORM_EXTRAFLD}</div>
					</div>
					<!-- END: EXTRAFLD -->
					<!-- BEGIN: CAPTCHA -->
                    <div class="uk-margin"> 
					<label class="uk-form-label">{CONTACT_FORM_VERIFY_IMG}</label>
						<div class="uk-form-controls"> {CONTACT_FORM_VERIFY}</div>
					</div>
					<!-- END: CAPTCHA -->
					<div class="uk-margin uk-text-center"> 
						<button class="uk-button uk-button-large uk-button-default" type="submit">Отправить</button>
					</div>
                </form>
				<!-- END: FORM -->
            </div>
			</div>
        </div>
    </div>
</div>
<!-- END: MAIN -->