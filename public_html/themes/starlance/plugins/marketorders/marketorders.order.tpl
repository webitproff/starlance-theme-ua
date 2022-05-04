<!-- BEGIN: MAIN -->
<div class="uk-section uk-padding-remove-vertical uk-background-primary uk-visible@m">
	<div class="uk-container uk-container-large uk-padding-small uk-link-text">
		<ul class="uk-breadcrumb">
			<!-- IF {ORDER_ID} AND {PHP.usr.id} == {ORDER_CUSTOMER_ID} -->
			<li><a class="" href="{PHP|cot_url('marketorders', 'm=purchases')}">{PHP.L.marketorders_mypurchases}</a></li>
			<!-- ELSE -->
			<li><a class="" href="{PHP|cot_url('marketorders', 'm=sales')}">{PHP.L.marketorders_mysales}</a></li>
			<!-- ENDIF -->
			<li>{PHP.L.marketorders_title} № {ORDER_ID}</li>
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
					<h3 class="uk-heading-bullet uk-text-uppercase uk-text-bold uk-link-text">{PHP.L.marketorders_title} № {ORDER_ID}: 
					<!-- IF {ORDER_STATUS} == 'paid' -->
					<span class="uk-text-warning"> {ORDER_LOCALSTATUS}</span>		
					<!-- ENDIF -->
					<!-- IF {ORDER_STATUS} == 'done' -->
					<span class="uk-text-success"> {ORDER_LOCALSTATUS}</span>		
					<!-- ENDIF -->
					<!-- IF {ORDER_STATUS} == 'claim' -->
					<span class="uk-text-danger"> {ORDER_LOCALSTATUS}</span>
					<!-- ENDIF -->
					<!-- IF {ORDER_STATUS} == 'cancel' -->
					<span class="uk-text-muted"> {ORDER_LOCALSTATUS}</span>
					<!-- ENDIF -->
				</h3>
				<div class="uk-grid-small" uk-grid>
					<div class="uk-width-expand uk-text-danger uk-flex uk-flex-bottom" uk-leader="fill: -">
						<span class="uk-link-text">Покупатель: [ID {PHP.marketorder.order_userid}]</span>
					</div>
					<div>
						<span class="uk-button uk-button-small uk-light uk-button-default">{ORDER_CUSTOMER_NAME}</span>
					</div>
				</div>
				<div class="uk-grid-small" uk-grid>
					<div class="uk-width-expand uk-text-danger uk-flex uk-flex-bottom" uk-leader="fill: -">
						<span class="uk-link-text">Продавец: [ID {PHP.marketorder.order_seller}]</span>
					</div>
					<div>
						<span class="uk-button uk-button-small uk-light uk-button-success">{ORDER_SELLER_NAME}</span>
					</div>
				</div>
				<div class="uk-grid-small" uk-grid>
					<div class="uk-width-expand uk-flex uk-flex-bottom" uk-leader="fill: -">
						<span class="uk-link-text">{PHP.L.marketorders_product}: [ID {ORDER_PRD_ID}]</span>
					</div>
					<div>
						<span class=""><!-- IF {ORDER_PRD_SHORTTITLE} --><a class="uk-link-text" href="{ORDER_PRD_URL}" target="blank"> {ORDER_PRD_SHORTTITLE}</a><!-- ELSE -->{ORDER_TITLE}<!-- ENDIF --></span>
					</div>
				</div>
				<div class="uk-grid-small" uk-grid>
					<div class="uk-width-expand uk-flex uk-flex-bottom" uk-leader="fill: -">
						<span class="uk-link-text">Последние изменения товара</span>
					</div>
					<div>
						<span class="">{PHP.marketorder.item_update|date('d.m.Y H:i', $this)}</span>
					</div>
				</div>
				<div class="uk-grid-small" uk-grid>
					<div class="uk-width-expand uk-flex uk-flex-bottom" uk-leader="fill: -">
						<span class="uk-link-text">{PHP.L.marketorders_count}:</span>
					</div>
					<div>
						<span class="">{ORDER_COUNT}</span>
					</div>
				</div>
				<!-- IF {ORDER_COMMENT} -->
				<div class="uk-grid-small" uk-grid>
					<div class="uk-width-expand" uk-leader="fill: -">
						<span class="uk-link-text">{PHP.L.marketorders_comment}:</span>
					</div>
					<div class="uk-width-3-4@m">
						<span class="">{ORDER_COMMENT}</span>
					</div>
				</div>
				<!-- ENDIF -->
				<div class="uk-grid-small" uk-grid>
					<div class="uk-width-expand uk-flex uk-flex-bottom" uk-leader="fill: -">
						<span class="uk-link-text">{PHP.L.marketorders_cost}:</span>
					</div>
					<div>
						<span class="">{ORDER_COST} {PHP.cfg.payments.valuta}</span>
					</div>
				</div>
				<div class="uk-grid-small" uk-grid>
					<div class="uk-width-expand uk-flex uk-flex-bottom" uk-leader="fill: -">
						<span class="uk-link-text">{PHP.L.marketorders_paid}:</span>
					</div>
					<div>
						<span class="">{ORDER_PAID|date('d.m.Y H:i', $this)}</span>
					</div>
				</div>
				<div class="uk-grid-small" uk-grid>
					<div class="uk-width-expand uk-flex uk-flex-bottom" uk-leader="fill: -">
						<span class="uk-link-text">{PHP.L.marketorders_warranty}:</span>
					</div>
					<div>
					<!-- IF {ORDER_WARRANTYDATE} > {PHP.sys.now} -->
						<span class="uk-button uk-button-danger uk-light">{ORDER_WARRANTYDATE|date('d.m.Y H:i', $this)}</span>
					<!-- ELSE -->
						<span class="uk-text-muted">истекло {ORDER_WARRANTYDATE|date('d.m.Y H:i', $this)}</span>
					<!-- ENDIF -->
					</div>
				</div>

			<!-- IF {ORDER_DOWNLOAD} -->
				<div class="uk-grid-small" uk-grid>
					<div class="uk-width-expand uk-flex uk-flex-bottom" uk-leader="fill: -">
						<span class="uk-link-text">{PHP.L.marketorders_file_for_download}:</span>
					</div>
					<div>
						<span class="">{PHP.marketorder.item_file} <a href="{ORDER_DOWNLOAD}" class="uk-button uk-button-small uk-button-success">{PHP.L.marketorders_file_download}</a></span>
					</div>
				</div>
			<!-- ELSE -->
				<div class="uk-alert-danger" uk-alert>
					<a class="uk-alert-close" uk-close></a>
					<p class="uk-link-text">{PHP.L.marketorders_file_for_download} <span class="uk-text-danger">{PHP.marketorder.item_file}</span> не найден !</p>
				</div>
			<!-- ENDIF -->
			
				</div>
				<div class="uk-card uk-card-small uk-card-body uk-background-default uk-border-rounded uk-margin-top">
					<!-- IF {ORDER_WARRANTYDATE} > {PHP.sys.now} AND {ORDER_STATUS} == 'paid' AND {PHP.usr.id} == {ORDER_CUSTOMER_ID} -->
					<a class="btn btn-warning" href="{ORDER_ID|cot_url('marketorders', 'm=addclaim&id='$this)}">{PHP.L.marketorders_addclaim_button}</a>
					<!-- ENDIF -->

					<!-- BEGIN: CLAIM -->
					<h3>{PHP.L.marketorders_claim_title}</h3>
					<div class="well">
						<div class="pull-xs-right">{CLAIM_DATE|date('d.m.Y H:i', $this)}</div>
						<p>{CLAIM_TEXT}</p>

						<!-- BEGIN: ADMINCLAIM -->
						<p>
							<a href="{ORDER_ID|cot_url('marketorders', 'a=acceptclaim&id='$this)}" class="btn btn-warning">{PHP.L.marketorders_claim_accept}</a>
							<a href="{ORDER_ID|cot_url('marketorders', 'a=cancelclaim&id='$this)}" class="btn btn-danger">{PHP.L.marketorders_claim_cancel}</a>
						</p>
						<!-- END: ADMINCLAIM -->
					</div>
					<!-- END: CLAIM -->
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