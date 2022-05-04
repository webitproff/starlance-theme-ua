<!-- BEGIN: MAIN -->
<div class="uk-section uk-padding-remove-vertical uk-background-primary uk-visible@m">
	<div class="uk-container uk-container-large uk-padding-small uk-link-text">
		<ul class="uk-breadcrumb">
            <li><a href="{PHP.cfg.mainurl}">{PHP.L.Home}</a></li>
            <li>{PHP.L.payments_mybalance}</li>
			<!-- IF {PHP.n} == 'history' -->
			<li><span class="uk-text-warning">{PHP.L.payments_history}</span></li>
			<!-- ENDIF -->
			<!-- IF {PHP.n} == 'billing' -->
			<li><span class="uk-text-warning">{PHP.L.payments_paytobalance}</span></li>
			<!-- ENDIF -->
			<!-- IF {PHP.n} == 'payouts' -->
			<li><span class="uk-text-warning">{PHP.L.payments_payouts}</span></li>
			<!-- ENDIF -->
			<!-- IF {PHP.n} == 'transfers' -->
			<li><span class="uk-text-warning">{PHP.L.payments_transfer}</span></li>
			<!-- ENDIF -->
		</ul>
	</div>
</div>
<div class="uk-background-muted uk-section uk-padding-remove-vertical"> 
	<div class="uk-container uk-container-large"> 
	<div class="uk-margin-top uk-margin-large-bottom">
		<div class="uk-child-width-1-2" uk-grid>
			<div>
				<div class="uk-card uk-card-small uk-card-body uk-background-default uk-border-rounded-mdm">
				<!-- IF {PHP.cfg.payments.balance_enabled} -->
					<h3 class="uk-heading-bullet uk-text-middle uk-text-truncate">{PHP.L.payments_balance}: 
					<!-- IF {BALANCE_SUMM} > 0 -->
					<span class="uk-text-warning uk-text-bold">{BALANCE_SUMM|number_format($this, '2', '.', ' ')} </span>
					<!-- ELSE -->
					<span class="uk-text-muted">воообще на нуле </span><span class="uk-text-warning uk-icon" uk-icon="icon: happy; ratio: 1.5" uk-tooltip="Пустой кошелек - плохая примета )))"></span>
					<!-- ENDIF --> {PHP.cfg.payments.valuta}</h3>
				<!-- ENDIF -->
				</div>
			</div>
			<div>
				<!-- IF {PHP.usr.maingrp} == 5 -->
				<div class="uk-card uk-card-small uk-card-body uk-background-default uk-border-rounded-mdm">
					<div class="uk-grid-small uk-flex-center uk-text-center" uk-grid>
						<div>
							<a uk-tooltip="{PHP.L.Adminpanel} - {PHP.L.payments_history} - {PHP.L.payments_allusers}" class="uk-icon-button uk-button-danger" href="{PHP|cot_url('admin', 'm=payments')}" target="_blank" uk-icon="icon: users; ratio: 1.2" title=""></a>
						</div>
						<!-- IF {PHP.cfg.payments.transfers_enabled} -->
						<div>
							<a uk-tooltip="{PHP.L.Adminpanel} - {PHP.L.payments_transfers}" class="uk-icon-button uk-button-danger" href="{PHP|cot_url('admin', 'm=payments&p=transfers')}" target="_blank" uk-icon="icon: shrink; ratio: 1.2" title=""></a>
						</div>
						<!-- ENDIF -->
						<!-- IF {PHP.cfg.payments.payouts_enabled} -->
						<div>
							<a uk-tooltip="{PHP.L.Adminpanel} - {PHP.L.payments_payouts}" class="uk-icon-button uk-button-danger" href="{PHP|cot_url('admin', 'm=payments&p=payouts')}" target="_blank" uk-icon="icon: forward; ratio: 1.2" title=""></a>
						</div>
						<!-- ENDIF -->
						<div>
							<a uk-tooltip="{PHP.L.Adminpanel} - Управление модулем Payments" class="uk-icon-button uk-button-danger" href="/admin/extensions?a=details&mod=payments" target="_blank" uk-icon="icon: sign-in; ratio: 1.2" title=""></a>
						</div>
						<div>
							<a uk-tooltip="{PHP.L.Adminpanel} - Настройки конфигурации модуля payments" class="uk-icon-button uk-button-danger" href="/admin/config?n=edit&o=module&p=payments" target="_blank" uk-icon="icon: cog; ratio: 1.2" title=""></a>
						</div>
					</div>
				</div>
				<!-- ENDIF -->
			</div>
		</div>
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

				<!-- BEGIN: BILLINGFORM -->
				<div class="uk-card uk-card-small uk-card-body uk-background-default uk-border-rounded uk-margin-bottom">
				<h1 class="uk-heading-divider"><span class="uk-text-success">{PHP.L.payments_balance_billing_desc}</span></h1>
				
				{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
				<p class="uk-text-success">{PHP.L.payments_balance_billing_summ}:</p>
				<form id="form_billing" name="form_billing" action="{BALANCE_FORM_ACTION_URL}" method="post" class="uk-form-horizontal uk-margin-small">
					<div class="uk-margin" uk-margin>
						<div uk-form-custom="target: true">
							{BALANCE_FORM_SUMM}
						</div>
						<span class="uk-button uk-button-primary uk-button-small">{PHP.cfg.payments.valuta}</span>
					</div>
					<div class="uk-margin-top uk-text-center">
						<button type="submit" class="btn uk-button uk-button-linear uk-button-large">{PHP.L.payments_paytobalance}</button>
					</div>
				</form>
				</div>
				<!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
				<div class="uk-margin-remove-vertical uk-alert-primary" uk-alert>
					<a class="uk-alert-close" uk-close></a>
					<p>Формирование шаблона страницы: <code>payments.balance.tpl</code></p>
					<div class="uk-panel uk-text-break uk-text-secondary">{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/{PHP.env.type}/{PHP.env.ext}/{PHP.m}/{PHP.n}</div>
				</div>
				<!-- ENDIF -->
				<!-- END: BILLINGFORM -->
				<!-- BEGIN: PAYOUTS -->

				<!-- IF {BALANCE_SUMM} > 0 -->
				<a class="pull-xs-right btn btn-primary" href="{PHP|cot_url('payments', 'm=balance&n=payouts&a=add')}">{PHP.L.payments_balance_payouts_button}</a>
				<h6 class="m-b-2">{PHP.L.payments_balance_payout_list}</h6>
				<!-- IF {PHP.payouts|count($this)} > 0 -->
				<table class="table table-striped">
					<thead>
						<tr>
							<th>ID</th>
							<th class="text-right">{PHP.L.payments_summ}</th>
							<th class="text-right">{PHP.L.Date}</th>
							<th class="text-right">{PHP.L.Status}</th>
						</tr>
					</thead>
					<!-- BEGIN: PAYOUT_ROW -->
					<tr>
						<td>{PAYOUT_ROW_ID}</td>
						<td class="text-right">{PAYOUT_ROW_SUMM|number_format($this, '2', '.', ' ')} {PHP.cfg.payments.valuta}</td>
						<td class="text-right">{PAYOUT_ROW_CDATE|cot_date('d.m.Y H:i', $this)}</td>
						<td class="text-right">{PAYOUT_ROW_LOCALSTATUS}</td>
					</tr>
					<!-- END: PAYOUT_ROW -->
				</table>
				<!-- ELSE -->
				<div class="text text-muted">{PHP.L.payments_history_empty}</div>
				<!-- ENDIF -->

				<!-- ELSE -->
				<h6 class="m-b-2">{PHP.L.payments_balance_payout_list}</h6>
				<div class="text text-muted">У вас пока нет средств для вывода</div>
				<!-- ENDIF -->
				<!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
				<div class="uk-margin-remove-vertical uk-alert-primary" uk-alert>
					<a class="uk-alert-close" uk-close></a>
					<p>Формирование шаблона страницы: <code>payments.balance.tpl</code></p>
					<div class="uk-panel uk-text-break uk-text-secondary">{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/{PHP.env.type}/{PHP.env.ext}/{PHP.m}/{PHP.n}</div>
				</div>
				<!-- ENDIF -->
				<!-- END: PAYOUTS -->

				<!-- BEGIN: PAYOUTFORM -->
				<h6 class="m-b-2">{PHP.L.payments_balance_payout_title}</h6>
				{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
				<form action="{PAYOUT_FORM_ACTION_URL}" method="post" id="payoutform" class="form-horizontal">
					<div class="form-group row">
						<label class="col-md-3 control-label">{PHP.L.payments_balance_payout_details}:</label>
						<div class="col-md-6">{PAYOUT_FORM_DETAILS}</div>
					</div>
					<div class="form-group row">
						<label class="col-md-3 control-label">{PHP.L.payments_balance_payout_summ}:</label>
						<div class="col-md-2">
						    {PAYOUT_FORM_SUMM}
					    </div>
						<div class="col-md-2 form-control-label">
						    {PHP.cfg.payments.valuta}
					    </div>
					</div>
					<!-- IF {PHP.cfg.payments.payouttax} > 0 -->
					<div class="form-group row">
						<label class="col-md-3 control-label">{PHP.L.payments_balance_payout_tax} ({PHP.cfg.payments.payouttax}%):</label>
						<div class="col-md-2"><span id="payout_tax">{PAYOUT_FORM_TAX}</span> {PHP.cfg.payments.valuta}</div>
					</div>
					<div class="form-group row">
						<label class="col-md-3 control-label">{PHP.L.payments_balance_payout_total}:</label>
						<div class="col-md-2"><span id="payout_total">{PAYOUT_FORM_TOTAL}</span> {PHP.cfg.payments.valuta}</div>
					</div>
					<!-- ENDIF -->
					<div class="form-group row">
						<div class="col-md-2"><button class="btn btn-primary">{PHP.L.Submit}</button></td>
						</div>
					</div>
				</form>
						
				<!-- IF {PHP.cfg.payments.payouttax} > 0 -->		
				<script>
					$().ready(function() {
						$('#payoutform').bind('change click keyup', function (){
							var summ = parseFloat($("input[name='summ']").val());
							var tax = parseFloat({PHP.cfg.payments.payouttax});

							if(isNaN(summ)) summ = 0;

							var taxsumm = summ*tax/100;
							var totalsumm = summ + taxsumm;

							$('#payout_tax').html(taxsumm);
							$('#payout_total').html(totalsumm);
						});
					});
				</script>
				<!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
				<div class="uk-margin-remove-vertical uk-alert-primary" uk-alert>
					<a class="uk-alert-close" uk-close></a>
					<p>Формирование шаблона страницы: <code>payments.balance.tpl</code></p>
					<div class="uk-panel uk-text-break uk-text-secondary">{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/{PHP.env.type}/{PHP.env.ext}/{PHP.m}/{PHP.n}</div>
				</div>
				<!-- ENDIF -->
				<!-- ENDIF -->

				<!-- END: PAYOUTFORM -->

				<!-- BEGIN: TRANSFERS -->
				<!-- история переводов -->
				<div class="uk-card uk-card-small uk-card-body uk-background-default uk-border-rounded uk-margin-bottom">
				<!-- IF {BALANCE_SUMM} > 0 -->
				<a class="uk-button uk-button-linear uk-button-large" href="{PHP|cot_url('payments', 'm=balance&n=transfers&a=add')}">{PHP.L.payments_balance_transfers_button}</a>
				<h1 class="uk-heading-divider"><span class="uk-text-warning">{PHP.L.payments_balance_transfers_list}</span></h1>
				<!-- IF {PHP.transfers|count($this)} > 0 -->
				<div class="uk-overflow-auto">
					<table class="uk-table uk-table-striped uk-table-hover uk-table-middle uk-table-divider">
						<thead>
							<tr>
								<th class="uk-table-shrink uk-text-primary">ID №</th>
								<th class="uk-table-shrink uk-text-nowrap uk-text-primary">{PHP.L.payments_balance_transfers_for}</th>
								<th class="uk-table-shrink uk-text-nowrap uk-text-primary">{PHP.L.payments_summ}</th>
								<th class="uk-table-expand uk-text-primary">{PHP.L.Description}</th>
								<th class="uk-table-shrink uk-text-primary">{PHP.L.Date}</th>
								<th class="uk-table-shrink uk-text-primary">{PHP.L.Done}</th>
								<th class="uk-table-shrink uk-text-primary">{PHP.L.Status}</th>
							</tr>
						</thead>
						<tbody>
					<!-- BEGIN: TRANSFER_ROW -->
					<tr>
						<td>{TRANSFER_ROW_ID}</td>
						<td class="uk-text-nowrap"><a href="{TRANSFER_ROW_FOR_DETAILSLINK}">{TRANSFER_ROW_FOR_FULL_NAME}</a></td>
						<td class="uk-text-nowrap">{TRANSFER_ROW_SUMM|number_format($this, '2', '.', ' ')} {PHP.cfg.payments.valuta}</td>
						<td>{TRANSFER_ROW_COMMENT}</td>
						<td class="text-right">{TRANSFER_ROW_DATE|cot_date('d.m.Y H:i', $this)}</td>
						<td class="text-right">{TRANSFER_ROW_DONE|cot_date('d.m.Y H:i', $this)}</td>
						<td class="text-right">{TRANSFER_ROW_LOCALSTATUS}</td>
					</tr>
					<!-- END: TRANSFER_ROW -->
						</tbody>
					</table>
				</div>

				<!-- ELSE -->
				<div class="text text-muted">{PHP.L.payments_history_empty}</div>
				<!-- ENDIF -->
				<!-- ELSE -->
				<h6 class="m-b-2">{PHP.L.payments_balance_transfers_list}</h6>
				<div class="text text-muted">У вас пока нет средств для перевода</div>
				<!-- ENDIF -->
				</div>
				<!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
				<div class="uk-margin-remove-vertical uk-alert-primary" uk-alert>
					<a class="uk-alert-close" uk-close></a>
					<p>Формирование шаблона страницы: <code>payments.balance.tpl</code></p>
					<div class="uk-panel uk-text-break uk-text-secondary">{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/{PHP.env.type}/{PHP.env.ext}/{PHP.m}/{PHP.n}</div>
				</div>
				<!-- ENDIF -->
				<!-- END: TRANSFERS -->

				<!-- BEGIN: TRANSFERFORM -->
				<div class="uk-card uk-card-small uk-card-body uk-background-default uk-border-rounded uk-margin-bottom">
				<h1 class="uk-heading-divider"><span class="uk-text-warning">{PHP.L.payments_transfer}</span></h1>
				{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
				<form action="{TRANSFER_FORM_ACTION_URL}" method="post" id="transferform" class="uk-form-horizontal uk-margin-small">
					<div class="uk-margin">
						<label class="uk-form-label"><span class="uk-text-warning uk-margin-small-right" uk-icon="icon: happy; ratio: 1.5"></span><span class="uk-h4 uk-text-middle uk-text-danger">{PHP.L.payments_balance_transfer_username}:</span></label>
						<div class="uk-form-controls">
							{TRANSFER_FORM_USERNAME}
						</div>
					</div>
					<div class="uk-margin">
						<label class="uk-form-label"><span class="uk-text-warning uk-margin-small-right" uk-icon="icon: commenting; ratio: 1.5"></span><span class="uk-h4 uk-text-middle uk-link-text">{PHP.L.payments_balance_transfer_comment}:</span></label>
						<div class="uk-form-controls">
							{TRANSFER_FORM_COMMENT}
						</div>
					</div>
					<div class="uk-margin" uk-margin>
						<label class="uk-form-label"><span class="uk-text-primary uk-margin-small-right" uk-icon="icon: credit-card; ratio: 1.5"></span><span class="uk-h4 uk-text-middle uk-text-bold uk-text-success">{PHP.L.payments_balance_transfer_summ}:</span></label>
						<div class="uk-form-controls" uk-form-custom="target: true">
							{TRANSFER_FORM_SUMM}
						</div>
						<span class="uk-button uk-button-primary uk-button-small">{PHP.cfg.payments.valuta}</span>
					</div>
					<!-- IF {PHP.cfg.payments.transfertax} > 0 AND !{PHP.cfg.payments.transfertaxfromrecipient} -->
					<div class="uk-margin">
<ul class="uk-list uk-list-divider">
    <li><span class="uk-text-warning uk-margin-small-right" uk-icon="icon: info; ratio: 1.5"></span><span class="uk-h4 uk-text-middle uk-link-text">{PHP.L.payments_balance_transfer_tax} ({PHP.cfg.payments.transfertax} %): </span><span id="transfer_tax" class="uk-h4 uk-text-middle uk-text-danger">{TRANSFER_FORM_TAX}</span><span class="uk-h4 uk-text-middle uk-link-text"> {PHP.cfg.payments.valuta}</span></li>
    <li><span class="uk-text-warning uk-margin-small-right" uk-icon="icon: warning; ratio: 1.5"></span><span class="uk-h4 uk-text-middle uk-link-text">{PHP.L.payments_balance_transfer_total}: </span><span id="transfer_total" class="uk-h4 uk-text-middle uk-text-danger">{TRANSFER_FORM_TOTAL}</span><span class="uk-h4 uk-text-middle uk-link-text"> {PHP.cfg.payments.valuta}</span></li>
	<script>
		$().ready(function() {
			$('#transferform').bind('change click keyup', function (){
				var summ = parseFloat($("input[name='summ']").val());
				var tax = parseFloat({PHP.cfg.payments.transfertax});

				if(isNaN(summ)) summ = 0;

				var taxsumm = summ*tax/100;
				var totalsumm = summ + taxsumm;

				$('#transfer_tax').html(taxsumm);
				$('#transfer_total').html(totalsumm);
			});
		});
	</script>
</ul>

					</div>


					<!-- ENDIF -->
					<div class="form-group row">
						<label class="col-md-3 control-label"></label>
						<div class="col-md-2"><button class="btn uk-button uk-button-linear uk-button-large">{PHP.L.Submit}</button></div>
					</div>
				</form>
				</div>
				<!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
				<div class="uk-margin-remove-vertical uk-alert-primary" uk-alert>
					<a class="uk-alert-close" uk-close></a>
					<p>Формирование шаблона страницы: <code>payments.balance.tpl</code></p>
					<div class="uk-panel uk-text-break uk-text-secondary">{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/{PHP.env.type}/{PHP.env.ext}/{PHP.m}/{PHP.n}</div>
				</div>
				<!-- ENDIF -->
				<!-- END: TRANSFERFORM -->

				<!-- BEGIN: HISTORY -->
				<!-- история платежных операций по кошельку -->
				<div class="uk-card uk-card-small uk-card-body uk-background-default uk-border-rounded uk-margin-bottom">
				<h1 class="uk-heading-divider"><span class="uk-text-warning">{PHP.L.payments_history}</span></h1>
				<!-- IF {HISTORY_COUNT} > 0 -->
				<div class="uk-overflow-auto">
					<table class="uk-table uk-table-striped uk-table-hover uk-table-middle uk-table-divider">
						<thead>
							<tr>
								<th class="uk-table-shrink uk-text-primary">ID №</th>
								<th class="uk-table-shrink uk-text-primary">{PHP.L.Date}</th>
								<th class="uk-table-expand uk-text-primary">{PHP.L.Description}</th>
								<th class="uk-table-shrink uk-text-primary">+/-</th>
								<th class="uk-table-shrink uk-text-nowrap uk-text-primary">{PHP.L.payments_summ}</th>
							</tr>
						</thead>
						<tbody>
							<!-- BEGIN: HIST_ROW -->
							<tr>
								<td>{HIST_ROW_ID}</td>
								<td>{HIST_ROW_PDATE|cot_date('d.m.Y H:i', $this)}</td>
								<td>{HIST_ROW_DESC}</td>
								<td><!-- IF {HIST_ROW_AREA} == 'balance' --><span class="uk-icon-button uk-button-success uk-icon" uk-icon="icon: plus-circle" uk-tooltip="Поступление средств"></span><!-- ELSE --><span class="uk-icon-button uk-button-warning uk-icon" uk-icon="icon: minus-circle" uk-tooltip="Расход средств"></span><!-- ENDIF --></td>
								<td class="uk-text-nowrap">{HIST_ROW_SUMM|number_format($this, '2', '.', ' ')} {PHP.cfg.payments.valuta}</td>
							</tr>
							<!-- END: HIST_ROW -->
						</tbody>
					</table>
				</div>

				<!-- IF {PAGENAV_PAGES} -->
				<div class="uk-panel uk-margin-top">
					<ul class="uk-pagination uk-flex-center uk-flex-middle uk-margin-auto" uk-margin>{PAGENAV_PREV}{PAGENAV_PAGES}{PAGENAV_NEXT}</ul>
				</div>
				<!-- ENDIF -->
				<!-- ELSE -->
				<div class="text text-muted">{PHP.L.payments_history_empty}</div>
				<!-- ENDIF -->
				</div>
				<!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
				<div class="uk-margin-remove-vertical uk-alert-primary" uk-alert>
					<a class="uk-alert-close" uk-close></a>
					<p>Формирование шаблона страницы: <code>payments.balance.tpl</code></p>
					<div class="uk-panel uk-text-break uk-text-secondary">{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/{PHP.env.type}/{PHP.env.ext}/{PHP.m}/{PHP.n}</div>
				</div>
				<!-- ENDIF -->
				<!-- END: HISTORY -->
			</div>
		</div> 
	</div>
</div>
</div>
<!-- END: MAIN -->