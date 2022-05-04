<!-- BEGIN: MAIN -->
<div class="uk-section uk-padding-remove-vertical uk-background-primary uk-visible@m">
	<div class="uk-container uk-container-large uk-padding-small uk-link-text">
		<ul class="uk-breadcrumb">
            <li><a href="{PHP.cfg.mainurl}">{PHP.L.Home}</a></li>
            {PRD_TITLE|ul_transform($this)}
		</ul>
	</div>
</div>
<div class="uk-section uk-padding-remove-vertical uk-background-default">
    <div class="uk-container uk-container-large uk-margin-top uk-margin-bottom">
		<div class="uk-margin-top uk-margin-bottom uk-text-center">
			<h2 class="uk-heading-bullet uk-text-uppercase uk-text-bold uk-link-text">{PHP.L.orderform_title}</h2>
			<h3 class="uk-text-center uk-margin-remove uk-text-truncate">
			«<a class="tp-color-ts" target="_blank" href="{PRD_URL}">
					{PRD_SHORTTITLE}
			</a>»
			</h3>
			<hr class="uk-divider-icon uk-margin-auto uk-width-1-3@m">    
		</div>
		<div class="uk-card uk-card-small uk-card-body uk-background-muted uk-border-rounded">


{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
<form action="{ORDERFORM_ACTION}" method="post" id="form_orderform" class="uk-form-stacked uk-margin-large">
					<div class="uk-margin">
						<h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.orderform_form_name}:</h4>
						<label class="uk-form-label uk-margin-remove-top"></label>
						<div class="uk-form-controls">
							{ORDERFORM_FORM_NAME}
						</div>
					</div>
	<!-- IF {PHP.usr.id} == 0 -->
					<div class="uk-margin">
						<h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.orderform_form_email}</h4>
						<label class="uk-form-label uk-margin-remove-top"></label>
						<div class="uk-form-controls">
							{ORDERFORM_FORM_EMAIL}
						</div>
					</div>
	<!-- ENDIF -->
					<div class="uk-margin">
						<h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.orderform_form_phone}</h4>
						<label class="uk-form-label uk-margin-remove-top"></label>
						<div class="uk-form-controls">
							{ORDERFORM_FORM_PHONE}
						</div>
					</div>
					<div class="uk-margin">
						<h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.orderform_form_quantity}</h4>
						<label class="uk-form-label uk-margin-remove-top"></label>
						<div class="uk-form-controls">
							 {ORDERFORM_FORM_QUANTITY}
						</div>
					</div>
						<hr>
					<div class="uk-margin">
						<h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.orderform_form_comment}</h4>
						<label class="uk-form-label uk-margin-remove-top"></label>
						<div class="uk-form-controls">
							 {ORDERFORM_FORM_COMMENT}
						</div>
					</div>
                        <div class="uk-margin-top uk-margin-bottom uk-text-center">
							<button class="uk-button uk-button-success" type="submit">{PHP.L.orderform_sendorder}</button>
                        </div>
</form>
		</div>
	</div>
</div>

<!-- END: MAIN -->