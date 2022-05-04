
<!-- BEGIN: MAIN -->
<section class="uk-background-muted">
	<div class="uk-container uk-container-large uk-flex uk-flex-center uk-padding-large" data-uk-scrollspy="cls: uk-animation-fade; target: .uk-card; delay: 250; repeat: true">
		<div class="uk-width-1-3@m uk-width-1-2@s uk-card uk-card-default uk-text-center uk-border-rounded uk-card-hover"> 
		{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
			<form action="{TOP_FORM_ACTION}" method="post" class="form-horizontal">
				<div class="uk-card-header"> 
					<span class="uk-text-uppercase uk-text-bold uk-text-success">{PHP.L.paytop_buytop_title}</span>
					<h2 class="uk-heading-bullet uk-text-uppercase uk-text-bold uk-link-text uk-margin-remove-top">"{TOP_FORM_AREA_NAME}"</h2> 
				</div> 
				<div class="uk-card-body"> 
					<h2 class="uk-text-success uk-text-bold">{PHP.L.paytop_cost}: {TOP_FORM_COST} {PHP.cfg.payments.valuta}</h2>
					{TOP_FORM_COUNT}
				</div> 
				<div class="uk-card-footer"> 
					<button class="uk-button uk-button-primary uk-button-large">{PHP.L.paytop_buy}</button> 
				</div>
			</form>
		</div>
	</div> 
</section>
<!-- END: MAIN -->


