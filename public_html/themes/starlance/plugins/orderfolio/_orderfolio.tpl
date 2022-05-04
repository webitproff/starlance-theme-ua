<!-- BEGIN: MAIN -->
<div class="uk-block uk-block-muted">
<div class="uk-container-center uk-container">
<h1>{PHP.L.orderfolio_title}</h1>

{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
<form action="{ORDERFOLIO_ACTION}" method="post" id="form_orderfolio" class="uk-form uk-form-stacked  uk-margin-large-top uk-margin-large-bottom">
	<div class="uk-margin-top">
		<div class="uk-form-row">
			<label class="uk-form-label">{PHP.L.orderfolio_form_name}</label>
			<div class="uk-form-controls">
				{ORDERFOLIO_FORM_NAME}
			</div>
		</div>
	</div>
	<!-- IF {PHP.usr.id} == 0 -->
	<div class="uk-margin-top">
		<div class="uk-form-row">
			<label class="uk-form-label">{PHP.L.orderfolio_form_email}</label>
			<div class="uk-form-controls">
				{ORDERFOLIO_FORM_EMAIL}
			</div>
		</div>
	</div>
	<!-- ENDIF -->
	<div class="uk-margin-top">
		<div class="uk-form-row">
			<label class="uk-form-label">{PHP.L.orderfolio_form_phone}</label>
			<div class="uk-form-controls">
				{ORDERFOLIO_FORM_PHONE}
			</div>
		</div>
	</div>
	<div class="uk-margin-top">
		<div class="uk-form-row">
			<label class="uk-form-label">{PHP.L.orderfolio_form_quantity}</label>
			<div class="uk-form-controls">
				{ORDERFOLIO_FORM_QUANTITY}
			</div>
		</div>
	</div>
	<div class="uk-margin-top">
		<div class="uk-form-row">
			<label class="uk-form-label">{PHP.L.orderfolio_form_comment}</label>
			<div class="uk-form-controls">
				{ORDERFOLIO_FORM_COMMENT}
			</div>
		</div>
	</div>
	<div class="uk-container-center uk-text-center uk-margin-top">
	   <button class="uk-button uk-button-large uk-button-success " type="submit">{PHP.L.orderfolio_sendorder}</button>
	</div>
</form>
		</div>
	</div>
<!-- END: MAIN -->