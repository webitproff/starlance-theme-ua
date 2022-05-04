<!-- BEGIN: MAIN -->
<div class="uk-block-muted">

    <div class="uk-container">
        <ul class="uk-breadcrumb uk-margin-top uk-hidden-small">
            <li><a href="{PHP.cfg.mainurl}">{PHP.L.Home}</a></li>
            {PRD_TITLE|ul_transform($this)}
        </ul>
		<div class="uk-width-medium-1-2 uk-container-center uk-panel-box-hover tp-card-default tp-card-hover uk-margin-large-top uk-margin-large-bottom"> 
			<div class="tp-panel-body">
				<h1 class="uk-text-center uk-text-warning">{PHP.L.orderfolio_title}</h1>
                <h3 class="uk-text-center uk-margin-remove uk-text-truncate">
					«<a class="tp-color-ts" target="_blank" href="{PRD_URL}">
					{PRD_SHORTTITLE}
					</a>»
					
				</h3>

{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
<form action="{ORDERFOLIO_ACTION}" method="post" id="form_orderfolio" class="uk-form uk-form-stacked">
                        <div class="uk-form-row uk-margin-top">
						<label class="uk-form-label">{PHP.L.orderfolio_form_name}</label>
                            <div class="uk-form-icon">
                                <i class="uk-icon-user uk-icon-small uk-text-warning uk-margin-small-right"></i>
                                {ORDERFOLIO_FORM_NAME}
                            </div>
                        </div>
	<!-- IF {PHP.usr.id} == 0 -->
                        <div class="uk-form-row uk-margin-top">
						<label class="uk-form-label">{PHP.L.orderfolio_form_email}</label>
                            <div class="uk-form-icon">
                                <i class="uk-icon-envelope uk-icon-small uk-text-warning uk-margin-small-right"></i>
                                {ORDERFOLIO_FORM_EMAIL}
                            </div>
                        </div>
	<!-- ENDIF -->
                        <div class="uk-form-row uk-margin-top">
						<label class="uk-form-label">{PHP.L.orderfolio_form_phone}</label>
                            <div class="uk-form-icon">
                                <i class="uk-icon-fax uk-icon-small uk-text-warning uk-margin-small-right"></i>
                                {ORDERFOLIO_FORM_PHONE}
                            </div>
                        </div>
                        <div class="uk-form-row uk-margin-top">
						<label class="uk-form-label">{PHP.L.orderfolio_form_quantity}</label>
                            <div class="uk-form-icon">
                                <i class="uk-icon-calculator uk-icon-small uk-text-warning uk-margin-small-right"></i>
                                {ORDERFOLIO_FORM_QUANTITY}
                            </div>
                        </div>
						<hr>
                        <div class="uk-form-row uk-margin-top">
						<label class="uk-form-label"><i class="uk-icon-commenting uk-icon-small uk-text-warning uk-margin-small-right"></i> {PHP.L.orderfolio_form_comment}</label>

                                {ORDERFOLIO_FORM_COMMENT}
                        </div>
                        <div class="uk-form-row uk-margin-top uk-text-center">
							<button class="uk-button uk-button-success" type="submit">{PHP.L.orderfolio_sendorder}</button>
                        </div>
</form>
		</div>
	</div>
			</div>
	</div>
<!-- END: MAIN -->