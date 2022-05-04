<!-- BEGIN: MAIN -->
<div class="uk-block" style="position: relative; background-color: #95a5a6;; background-attachment: fixed;"> 
    <div class="uk-container uk-container-center"> 
        <h1 class="uk-text-bold uk-text-contrast">{PHP.L.affiliate}</h1>
    </div>
</div>
<div class="uk-block uk-block-muted">
    <div class="uk-container uk-container-center">
		<div class="uk-width-medium-2-3 uk-container-center">
			<div class="uk-panel uk-panel-box uk-panel-box-primary">
				<div class="uk-form">
					<fieldset data-uk-margin="">
						<legend><h3 class="uk-panel-title">{PHP.L.affiliate_link_title}:</h3></legend>
						<div class="uk-grid">
							<div class="uk-width-medium-1-2">
								<input id="foo" type="text" class="uk-width-1-1 uk-form-large" value="{PHP.cfg.mainurl}/?ref={PHP.usr.id}"  readonly="readonly"></div>
							<div class="uk-width-medium-1-2">
								<button class="btn uk-button uk-button-primary uk-width-1-1 uk-margin-small-top" data-clipboard-action="copy" data-clipboard-target="#foo"
						>Скопировать</button></div>
						</div>
					</fieldset>
				</div>
			</div>
		</div>
        <div class="uk-panel uk-panel-box uk-panel-box-primary uk-margin-top">
			<h3 class="uk-panel-title">{PHP.L.affiliate_tree_title}:</h3>
			<p>{REFERALS_TREE}</p>
		</div>
        <div class="uk-panel uk-panel-box uk-panel-box-secondary uk-margin-top">



	<!-- BEGIN: PAYMENTS -->

		<h3 class="uk-article-subtitle">{PHP.L.affiliate_payments_title}:</h3>

		<div class="uk-overflow-container">
			<table class="uk-table uk-table-striped uk-table-condensed uk-text-nowrap">
				<thead>
					<tr>
						<th>#</th>
						<th>{PHP.L.Date}</th>
						<th>{PHP.L.affiliate_referal}</th>
						<th>{PHP.L.payments_summ} {PHP.cfg.payments.valuta}</th>
					</tr>
				</thead>

				<tbody>
				<!-- BEGIN: PAY_ROW -->
					<tr>
						<td>{PAY_ROW_ID}</td>
						<td>{PAY_ROW_PDATE|cot_date('d.m.Y H:i', $this)}</td>
						<td>{PAY_ROW_REFERAL_NAME}</td>
						<td>{PAY_ROW_SUMM|number_format($this, '2', '.', ' ')}</td>
					</tr>
				<!-- END: PAY_ROW -->
				</tbody>
			</table>
		</div>

		<p><b>{PHP.L.payments_allpayments}: {PAYMENT_SUMM|number_format($this, '2', '.', ' ')} {PHP.cfg.payments.valuta}</b></p>	
		
	<!-- END: PAYMENTS -->
            
        </div>
    </div>
</div>

    <script>
      var clipboard = new ClipboardJS('.btn');

      clipboard.on('success', function (e) {
        console.log(e);
      });

      clipboard.on('error', function (e) {
        console.log(e);
      });
    </script>
<!-- END: MAIN -->