<!-- BEGIN: MAIN -->
<div class="uk-section uk-section-muted" uk-height-viewport="expand: true">
    <div class="uk-container">
    <div class="uk-card uk-padding-large uk-background-muted uk-border-rounded">
            <header class="uk-text-bold">
                <h2 class="uk-heading-bullet uk-text-uppercase uk-link-text">{PASSRECOVER_TITLE}</h2>
            </header>
			
			<!-- IF {PHP.msg} == 'request' --><h5 class="uk-heading-bullet">{PHP.L.pasrec_mailsent}</h5><!-- ENDIF -->
			<!-- IF {PHP.msg} == 'auth' --><h5 class="uk-heading-bullet">{PHP.L.pasrec_mailsent2}</h5><!-- ENDIF -->
			<!-- IF !{PHP.msg} -->
			<ul class="uk-list uk-list-divider">
				<li>{PHP.L.pasrec_explain1}</li>
				<li>{PHP.L.pasrec_explain2}</li>
				<li>{PHP.L.pasrec_explain3}</li>
			</ul>
			<form name="reqauth" action="{PASSRECOVER_URL_FORM}" method="post" class="uk-form-stacked">
			<div class="uk-margin">
				<label class="uk-form-label uk-text-uppercase">{PHP.L.pasrec_youremail}</label>
				<div class="uk-form-controls">
				<input type="text" class="uk-input text" name="email" value="" size="20" maxlength="64" placeholder="my_real_email@gmail.com" />
				</div>
			</div>
				 
            <div class="uk-margin uk-text-center">
                <button class="uk-button uk-button-warning uk-button-large"type="submit">{PHP.L.pasrec_request}</button>
            </div>
			</form>
			<h5 class="uk-heading-bullet">{PHP.L.pasrec_explain4} <span class="uk-text-muted"> {PHP.cfg.adminemail}</span></h5>
			<!-- ENDIF -->
    </div>
 </div>
</div>
<!-- END: MAIN -->