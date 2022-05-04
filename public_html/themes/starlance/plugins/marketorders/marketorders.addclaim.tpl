<!-- BEGIN: MAIN -->
<div class="uk-section uk-padding-remove-vertical uk-background-primary uk-visible@m">
	<div class="uk-container uk-container-large uk-padding-small uk-link-text">
		<ul class="uk-breadcrumb">
            {BREADCRUMBS}
		</ul>
	</div>
</div>
<div class="uk-section uk-padding-small uk-background-muted">
	<div class="uk-container uk-container-large">
		<div class="uk-grid-small" uk-grid>
			<div class="uk-width-1-4@m">
				<div class="uk-card uk-card-small uk-card-body uk-background-default uk-border-rounded">
					{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/plugins/marketorders/marketorders.sidemenu.tpl"}
				</div>
			</div>
			<div class="uk-width-3-4@m">
				<div class="uk-card uk-card-small uk-card-body uk-background-default uk-border-rounded">
					<h3 class="uk-heading-bullet uk-text-uppercase uk-text-bold">{PHP.L.marketorders_addclaim_marketorders_title} <span class="uk-text-danger"> № {PHP.marketorder.order_id}</span></h3>
					<h4 class="uk-heading-bullet uk-margin-remove"><a class="uk-text-warning" href="{PHP.marketorder.order_id|cot_url('marketorders','&id='$this)}">{PHP.marketorder.order_title}</a></h4>					
					<div class="customform">
						{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
						<form class="uk-form-stacked" action="{CLAIM_FORM_SEND}" method="post" name="neworderform">
						<div class="uk-margin">
							<h4 class="uk-heading-divider uk-text-primary uk-margin-remove">Текст Вашей жалобы:</h4>
							<label class="uk-form-label uk-margin-remove-top">Максимально подробно изложите суть жалобы, указывая на факты, - кто, что, где, когда, как?</label>
							<div class="uk-form-controls">
								{CLAIM_FORM_TEXT}
							</div>
						</div>
						<div class="uk-margin uk-text-center">
							<button type="submit" class="uk-button uk-button-danger uk-button-large">{PHP.L.marketorders_addclaim_button}</button>
						</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/plugins/marketorders/marketorders.quicksupport.tpl"}
<!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
<div class="uk-margin-remove-vertical uk-alert-primary" uk-alert>
    <a class="uk-alert-close" uk-close></a>
    <p>Расположение файла, формирующего шаблон страницы:</p>
	<div class="uk-panel uk-text-break uk-text-secondary">{PHP.mskin}</div>
</div>
<!-- ENDIF -->
<!-- END: MAIN -->