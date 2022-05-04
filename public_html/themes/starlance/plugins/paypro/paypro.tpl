<!-- BEGIN: MAIN -->
<section class="uk-background-muted">
<div class="alert-success-full uk-margin-remove-vertical" uk-alert>
    <a class="uk-alert-close" uk-close></a>
	<div class="uk-container">
		<h4 class="uk-text-bold uk-animation-slide-right uk-animation-toggle" tabindex="0">
		<img class="uk-animation-shake uk-margin-small-right" width="27" height="27" alt="" uk-img="data-src: /themes/starlance/img/icon/048-notification.svg" uk-svg="uk-preserve" >
		<span class="uk-text-middle">Внимание!</span></h4>
		<p>После оплаты, для обновления статуса - Вам следует выйти и снова зайти в свой аккаунт на сайте, если в личном кабинете Вы не видете свой PRO-аккаунт.<br>Также проверьте свою электронную почту,  - об успешном приобретение ПРО-аккаунта Вы сразу после оплаты получите уведомление. (Про папку СПАМ не забывайте)</p>
	</div>
</div>
	<div class="uk-container uk-flex uk-flex-center uk-padding-large" data-uk-scrollspy="cls: uk-animation-fade; target: .uk-card; delay: 250; repeat: true">
		<div class="uk-width-1-3@m uk-width-1-2@s uk-card uk-card-default uk-text-center uk-border-rounded uk-card-hover"> 
		{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
			<form action="{PRO_FORM_ACTION}" method="post" class="form-horizontal">
				<div class="uk-card-header"> 
					<h2 class="uk-heading-bullet uk-text-uppercase uk-text-bold uk-link-text">{PHP.L.paypro_buypro_title}</h2>
				</div> 
				<div class="uk-card-body"> 
					<h2 class="uk-text-success uk-text-bold">{PRO_FORM_COST} {PHP.cfg.plugin.paypro.cost} {PHP.cfg.payments.valuta}</h2>
					<div class="">
					<div class="uk-margin">
						<label class="uk-form-label">{PHP.L.paypro_error_months}: <span class="uk-text-uppercase uk-text-bold uk-text-danger">{PHP.L.paypro_month}</span></label>
						<div class="uk-form-controls uk-margin-top">
						{PRO_FORM_PERIOD} 
						</div>
					</div>
					</div>
					<!-- IF {PRO_FORM_USER_NAME} -->
					<div class="uk-margin">
						<label class="uk-form-label uk-text-uppercase">{PHP.L.paypro_giftfor}: </label>
						<div class="uk-form-controls">
						{PRO_FORM_USER_NAME}
						</div>
					</div>
					<!-- ENDIF -->
				</div> 
				<div class="uk-card-footer"> 
					<button class="uk-button uk-button-primary uk-button-large">{PHP.L.paypro_buy}</button> 
				</div>
			</form>
		</div>
	</div> 
</section>
<!-- END: MAIN -->
