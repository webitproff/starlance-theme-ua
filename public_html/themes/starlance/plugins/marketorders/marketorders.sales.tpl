<!-- BEGIN: MAIN -->
<!-- Мои продажи -->
<div class="uk-section uk-padding-remove-vertical uk-background-primary uk-visible@m">
	<div class="uk-container uk-container-large uk-padding-small uk-link-text">
		<ul class="uk-breadcrumb">
            {BREADCRUMBS}
		</ul>
	</div>
</div>
<div class="uk-section uk-padding-small uk-background-primary">
	<div class="uk-container uk-container-large">
		<h3 class="uk-heading-bullet uk-text-uppercase uk-text-bold uk-link-text">{PHP.L.marketorders_sales_title}:
			<!-- IF !{PHP.status} -->
			<span class="uk-text-primary"> {PHP.L.marketorders_sales_all_list}</span>		
			<!-- ENDIF -->
			<!-- IF {PHP.status} == 'paid' -->
			<span class="uk-text-warning"> {PHP.L.marketorders_sales_paid_title}</span>		
			<!-- ENDIF -->
			<!-- IF {PHP.status} == 'done' -->
			<span class="uk-text-success"> {PHP.L.marketorders_sales_done_title}</span>		
			<!-- ENDIF -->
			<!-- IF {PHP.status} == 'claim' -->
			<span class="uk-text-danger"> {PHP.L.marketorders_sales_claim_title}</span>
			<!-- ENDIF -->
			<!-- IF {PHP.status} == 'cancel' -->
			<span class="uk-text-muted"> {PHP.L.marketorders_sales_cancel_title}</span>
			<!-- ENDIF -->
		</h3>
		<div class="uk-grid-small" uk-grid>
			<div class="uk-width-1-4@m">
				<div class="uk-card uk-card-small uk-card-body uk-background-default uk-border-rounded uk-margin-bottom">
				<ul class="uk-list uk-list-divider" id="myTab">
					<li>
					<a uk-tooltip="«{PHP.L.Prd_Marketplace}» - {PHP.L.marketorders_sales_all_list}" class="uk-button uk-button-details uk-button-large uk-width-1-1 uk-animation-toggle uk-margin-bottom" tabindex="0" href="{PHP|cot_url('marketorders', 'm=sales')}"><img class="uk-margin-small-right  uk-animation-shake" width="27" height="27" alt="" uk-img="data-src: themes/{PHP.theme}/img/icon/cart-sales.svg" uk-svg="uk-preserve"><span class="uk-text-middle">{PHP.L.marketorders_sales_all_title}</span></a>
					</li>
					<li><a class="<!-- IF {PHP.status} == 'paid' --> uk-button uk-button-small uk-button-warning<!-- ENDIF -->" href="{PHP|cot_url('marketorders', 'm=sales&status=paid')}" uk-tooltip="{PHP.L.marketorders_sales_paid_desc}">{PHP.L.marketorders_sales_paid_title}</a></li>
					<li><a class="<!-- IF {PHP.status} == 'done' --> uk-button uk-button-small uk-button-success<!-- ENDIF -->" href="{PHP|cot_url('marketorders', 'm=sales&status=done')}" uk-tooltip="{PHP.L.marketorders_sales_done_desc}">{PHP.L.marketorders_sales_done_title}</a></li>
					<li><a class="<!-- IF {PHP.status} == 'claim' --> uk-button uk-button-small uk-button-danger<!-- ENDIF -->" href="{PHP|cot_url('marketorders', 'm=sales&status=claim')}">{PHP.L.marketorders_sales_claim_title}</a></li>
					<li><a class="<!-- IF {PHP.status} == 'cancel' --> uk-button uk-button-small uk-button-default<!-- ENDIF -->" href="{PHP|cot_url('marketorders', 'm=sales&status=cancel')}">{PHP.L.marketorders_sales_cancel_title}</a></li>
				</ul>
				</div>
			</div>
			<div class="uk-width-1-2@m">
				<!-- BEGIN: ORDER_ROW -->
				<div class="uk-card uk-card-small uk-background-default uk-border-rounded uk-margin-bottom">
					<div class="uk-flex-middle uk-grid-collapse" uk-grid>
					<!-- IF {ORDER_ROW_PRD_ID|att_count('market',$this,'','images')} > 0 -->
						<div  class="uk-width-auto@m uk-width-1-4@m" data-att-display="all">				{ORDER_ROW_PRD_ID|att_display('market',$this,'','attacher.display.marketorders_purchases','images',1)}
						</div>
					<!-- ENDIF -->
						<div class="uk-width-expand@m uk-width-3-4@m">
							<div class="uk-card-body">	
								<dl class="uk-description-list uk-description-list-divider">
									<dt class="uk-text-lowercase uk-padding-remove-vertical uk-margin-remove"><span class="uk-heading-bullet uk-h3">№ {ORDER_ROW_ID} [{ORDER_ROW_PAID|date('d.m.Y H:i', $this)}]</span></dt>
									<dt class="uk-text-lowercase uk-padding-remove-vertical uk-margin-remove">Покупатель {ORDER_ROW_CUSTOMER_NAME}</dt>
									<dt class="uk-text-lowercase uk-padding-remove-vertical uk-margin-remove">Товар/Услуга [ID {ORDER_ROW_PRD_ID}] <a href="{ORDER_ROW_PRD_URL}" uk-tooltip="открыть карточку товара или услуги">{ORDER_ROW_PRD_SHORTTITLE}</a></dt>
									<dt class="uk-text-lowercase uk-padding-remove-vertical uk-margin-remove">Оплаченная стоимость: <span class="uk-text-danger">{ORDER_ROW_COST} </span>{PHP.cfg.payments.valuta}</dt>
									<dt class="uk-text-lowercase uk-padding-remove-vertical uk-margin-remove">Текущая стоимость: <span class="uk-text-danger">{ORDER_ROW_PRD_COST} </span>{PHP.cfg.payments.valuta}</dt>
									<dt class="uk-text-lowercase uk-padding-remove-vertical uk-margin-remove">Статус товара: <span class="uk-text-muted">{ORDER_ROW_PRD_LOCALSTATUS}</span></dt>
									<dt class="uk-text-lowercase uk-padding-remove-vertical uk-margin-remove">Гарантийный срок до: <span class="uk-text-danger">{ORDER_ROW_WARRANTYDATE|date('d.m.Y H:i', $this)}</span></dt>
									<dt class="uk-text-lowercase uk-padding-remove-vertical uk-margin-remove">{PHP.L.marketorders_purchases_status_title}:
										<!-- IF {ORDER_ROW_STATUS} == 'paid' -->
										<span class="uk-text-warning"> {PHP.L.marketorders_sales_paid_title}</span>		
										<!-- ENDIF -->
										<!-- IF {ORDER_ROW_STATUS} == 'done' -->
										<span class="uk-text-success"> {PHP.L.marketorders_sales_done_title}</span>		
										<!-- ENDIF -->
										<!-- IF {ORDER_ROW_STATUS} == 'claim' -->
										<span class="uk-text-danger"> {PHP.L.marketorders_sales_claim_title}</span>
										<!-- ENDIF -->
										<!-- IF {ORDER_ROW_STATUS} == 'cancel' -->
										<span class="uk-text-muted"> {PHP.L.marketorders_sales_cancel_title}</span>
										<!-- ENDIF -->
									</dt>	
								</dl>
							<a class="uk-align-right uk-button uk-button-small uk-button-primary" href="{ORDER_ROW_URL}" uk-tooltip="открыть информацию о покупке">подробнее</a>
							</div>
						</div>
					</div>
				</div>
				<!-- END: ORDER_ROW -->
				<!-- IF {PAGENAV_COUNT} > 0 -->
					<ul class="uk-pagination" uk-margin>
					{PAGENAV_PAGES}
					</ul>
				<!-- ELSE -->
				<!-- IF {PHP.status} == 'paid' -->
				<span class="uk-text-warning"> {PHP.L.marketorders_purchases_paidorders}</span>		
				<!-- ENDIF -->
				<!-- IF {PHP.status} == 'done' -->
				<span class="uk-text-success"> {PHP.L.marketorders_purchases_doneorders}</span>		
				<!-- ENDIF -->
				<!-- IF {PHP.status} == 'claim' -->
				<span class="uk-text-danger"> {PHP.L.marketorders_purchases_claimorders}</span>
				<!-- ENDIF -->
				<!-- IF {PHP.status} == 'cancel' -->
				<span class="uk-text-muted"> {PHP.L.marketorders_purchases_cancelorders}</span>
				<!-- ENDIF -->
					<div class="uk-alert uk-alert-warning">
					{PHP.L.marketorders_empty_tab}
					</div>
				
				<!-- ENDIF -->
			</div>
			<div class="uk-width-1-4@m">
				<div class="uk-card uk-card-small uk-card-body uk-background-default uk-border-rounded">
					{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/plugins/marketorders/marketorders.sidemenu.tpl"}
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