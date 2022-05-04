<!-- BEGIN: MAIN -->
<div class="uk-section uk-padding-remove-vertical uk-background-primary uk-visible@m">
	<div class="uk-container uk-container-large uk-padding-small uk-link-text">
		<ul class="uk-breadcrumb">
            <li><a href="{PHP.cfg.mainurl}">{PHP.L.Home}</a></li>
            <li>{PHP.L.easypay_buy_title}</li>
		</ul>
	</div>
</div>
<div class="uk-section uk-padding-remove-vertical uk-background-default">
    <div class="uk-container uk-container-large uk-margin-top uk-margin-bottom">
		<div class="uk-margin-top uk-margin-bottom uk-text-center">
			<h3 class="uk-heading-bullet uk-text-uppercase uk-text-bold uk-link-text">{PHP.L.easypay_buy_title}</h3>
			<hr class="uk-divider-icon uk-margin-auto uk-width-1-3@m">
			<h4 class="uk-text-center uk-text-primary uk-margin-remove">{EASYPAY_FORM_NAME}</h4>			
		</div>
		<div class="uk-flex uk-flex-center">
			<div class="uk-width-1-3@m uk-card uk-card-small uk-card-body uk-background-muted uk-border-rounded uk-margin-bottom">
			{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
			<form action="{EASYPAY_FORM_ACTION}" method="post" class="uk-form-stacked uk-margin-large">
				<!-- IF {PHP.usr.id} == 0 -->
				<div class="uk-margin" uk-margin>
					<label class="uk-form-label"><h4 class="uk-text-primary">Ваш Email:</h4></label>
					<div class="uk-inline">
						<span class="uk-form-icon  uk-text-warning" uk-icon="icon: mail"></span>
						{EASYPAY_FORM_EMAIL} 
					</div>
				</div>
				<!-- ENDIF -->
				<div class="uk-margin" uk-margin>
					<label class="uk-form-label"><h4 class=" uk-margin-remove uk-text-primary">{PHP.L.easypay_cost}:</h4></label>
					<div uk-form-custom="target: true">
						<div class="uk-inline">
							<span class="uk-form-icon uk-text-warning" uk-icon="icon: database"></span>
						{EASYPAY_FORM_COST} 
						</div>
					</div>
					<span class="uk-button uk-button-primary uk-button-small">{PHP.cfg.payments.valuta}</span>
				</div>
				<div class="uk-text-center uk-margin" uk-margin>
					<button class="uk-button uk-button-success" type="submit">{PHP.L.easypay_buy}</button>
				</div>
			</form>
	</div>
	</div>
			</div>
	</div>
<!-- END: MAIN -->

<div class="uk-container uk-container-center uk-text-center">
<div class="breadcrumb">{PHP.L.easypay_buy_title} "{EASYPAY_FORM_NAME}"</div>

<div class="row">
	<div class="span9">
		{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
		<form action="{EASYPAY_FORM_ACTION}" method="post">
			<table class="table">
				<tr>
					<td width="220">{PHP.L.easypay_cost}:</td>
					<td>{EASYPAY_FORM_COST} {PHP.cfg.payments.valuta}</td>
				</tr>
				<!-- IF {PHP.usr.id} == 0 -->
				<tr>
					<td width="220">{PHP.L.easypay_email}:</td>
					<td>{EASYPAY_FORM_EMAIL}</td>
				</tr>
				<!-- ENDIF -->
				<tr>
					<td></td>
					<td><button class="btn btn-success">{PHP.L.easypay_buy}</button></td>
				</tr>
			</table>
		</form>
	</div>
</div>
</div>