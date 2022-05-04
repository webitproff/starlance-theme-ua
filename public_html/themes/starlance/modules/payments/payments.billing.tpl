<!-- BEGIN: MAIN -->
<div class="uk-section uk-padding-remove-vertical uk-background-primary uk-visible@m">
	<div class="uk-container uk-container-large uk-padding-small uk-link-text">
		<ul class="uk-breadcrumb">
            <li><a href="{PHP.cfg.mainurl}">{PHP.L.Home}</a></li>
            <li>{PHP.L.payments_billing_title}</li>
		</ul>
	</div>
</div>
<div class="uk-background-muted uk-section uk-padding-remove-vertical"> 
	<div class="uk-container uk-container-large"> 
	<div class="uk-margin-top uk-margin-large-bottom">
	<h3 class="uk-heading-bullet uk-text-truncate">{PHP.L.payments_billing_title}</h3>
		<div class="uk-grid-small" uk-grid>
			<div class="uk-width-1-4@m">
				<div class="uk-card uk-card-small uk-card-body uk-background-default uk-border-rounded uk-margin-bottom">
				<ul class="uk-list uk-list-divider">
					<li><a class="<!-- IF {PHP.n} == 'history' --> uk-button uk-button-small uk-button-warning<!-- ENDIF -->" href="{BALANCE_HISTORY_URL}">{PHP.L.payments_history}</a></li>
					<!-- IF {PHP.cfg.payments.balance_enabled} -->
					<li><a class="<!-- IF {PHP.n} == 'billing' --> uk-button uk-button-small uk-button-success<!-- ENDIF -->" href="{BALANCE_BILLING_URL}">{PHP.L.payments_paytobalance}</a></li>
					<!-- IF {PHP.cfg.payments.payouts_enabled} -->
					<li><a class="<!-- IF {PHP.n} == 'payouts' --> uk-button uk-button-small uk-button-danger<!-- ENDIF -->" href="{BALANCE_PAYOUT_URL}">{PHP.L.payments_payouts}</a></li>
					<!-- ENDIF -->
					<!-- IF {PHP.cfg.payments.transfers_enabled} -->
					<li><a class="<!-- IF {PHP.n} == 'transfers' --> uk-button uk-button-small uk-button-default<!-- ENDIF -->" href="{BALANCE_TRANSFER_URL}">{PHP.L.payments_transfer}</a></li>
					<!-- ENDIF -->
					<!-- ENDIF -->
				</ul>
				</div>
				<div class="uk-card uk-card-small uk-card-body uk-background-default uk-border-rounded">
				<ul class="uk-list uk-list-divider">
					<li><a target="_blank" class="uk-link-text" href="{PHP.R.payments_manual_link}"><span uk-icon="warning" class="uk-margin-small-right uk-icon uk-text-warning"></span><span class="uk-text-middle" uk-tooltip="{PHP.L.payments_manual_title_tooltip}">{PHP.L.payments_manual_title}</span></a></li>
					<li><a target="_blank" class="uk-link-text" href="{PHP.R.User_Agreement_link}"><span uk-icon="warning" class="uk-margin-small-right uk-icon uk-text-warning"></span><span class="uk-text-middle" uk-tooltip="{PHP.L.User_Agreement_Title}">{PHP.L.User_Agreement_Title}</span></a></li>
					<li><a target="_blank" class="uk-link-text" href="{PHP.R.User_Private_Police_link}"><span uk-icon="warning" class="uk-margin-small-right uk-icon uk-text-warning"></span><span class="uk-text-middle" uk-tooltip="{PHP.L.User_Private_Police_Title}">{PHP.L.User_Private_Police_Title}</span></a></li>
					<li><a target="_blank" class="uk-link-text" href="{PHP.R.User_Public_Offer_link}"><span uk-icon="warning" class="uk-margin-small-right uk-icon uk-text-warning"></span><span class="uk-text-middle" uk-tooltip="{PHP.L.User_Public_Offer_Title}">{PHP.L.User_Public_Offer_Title}</span></a></li>
				</ul>
				</div>
			</div>
			<div class="uk-width-3-4@m">
			<!-- BEGIN: BILLINGS -->
				<!-- BEGIN: BILL_ROW -->
				<div class="uk-card uk-card-small uk-card-body uk-background-default uk-border-rounded uk-card-hover uk-margin-bottom">
					<div class="" uk-grid>
						<div class="uk-width-1-4 uk-width-auto@l">
							<div class="uk-card uk-card-small uk-card-default uk-card-body uk-border-rounded uk-card-hover">
								<img  width="50" height="50" src="<!-- IF {BILL_ROW_ICON} -->{BILL_ROW_ICON}<!-- ELSE -->apps/payments/images/billing_blank.png<!-- ENDIF -->" />
							</div>
						</div>
						<div class="uk-width-3-4 uk-width-expand@l">
							<div class="">
								<h5><a href="{BILL_ROW_URL}">{BILL_ROW_TITLE}</a></h5>
							</div>
						</div>
					</div>
				</div>
			<!-- END: BILL_ROW -->
		<!-- END: BILLINGS -->

			<!-- BEGIN: EMPTYBILLINGS -->
				<div class="uk-card uk-card-small uk-card-body uk-background-default uk-border-rounded uk-card-hover uk-margin-bottom">
					<h3 class="m-y-2">{PHP.L.payments_billing_title}</h3>
					<div class="text text-danger">{PHP.L.payments_emptybillings}</div>
				</div>
			<!-- END: EMPTYBILLINGS -->

			</div>
		</div> 
	</div>
</div>
</div>
<!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
<div class="uk-margin-remove-vertical uk-alert-primary" uk-alert>
    <a class="uk-alert-close" uk-close></a>
    <p>Расположение файла, формирующего шаблон страницы:</p>
	<div class="uk-panel uk-text-break uk-text-secondary">{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/{PHP.env.type}/{PHP.env.ext}/{PHP.m}</div>
</div>
<!-- ENDIF -->
<!-- END: MAIN -->