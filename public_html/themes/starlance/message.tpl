<!-- BEGIN: MAIN -->
<div class="uk-section uk-section-muted" uk-height-viewport="expand: true">
    <div class="uk-container" uk-scrollspy="cls: uk-animation-slide-right; target: .uk-card; delay: 300; repeat: true" >
		<div class="uk-card uk-card-default uk-card-body uk-border-rounded">
			<div class="uk-alert-warning" uk-alert>
				<a class="uk-alert-close" uk-close></a>
				<h4 class="uk-text-uppercase uk-link-text uk-animation-slide-right uk-animation-toggle" tabindex="0"><img class="uk-animation-shake uk-margin-small-right" width="36" height="36" alt="" uk-img="data-src: /themes/starlance/img/icon/048-notification.svg" uk-svg="uk-preserve"><span class="uk-text-middle">{MESSAGE_TITLE}</span></h4>	
				<p class="uk-text-danger">{MESSAGE_BODY}</p>
			</div>
			<!-- BEGIN: MESSAGE_CONFIRM -->
			<div class="uk-child-width-expand@s" uk-grid>
				<div class="uk-width-1-2">
					<a id="confirmYes" href="{MESSAGE_CONFIRM_YES}" class="confirmButton uk-button uk-button-warning">{PHP.L.Yes}</a>
				</div>
				<div class="uk-width-1-2">
					<a id="confirmNo" href="{MESSAGE_CONFIRM_NO}" class="confirmButton uk-button uk-button-default">{PHP.L.No}</a>
				</div>
			</div>
			<!-- END: MESSAGE_CONFIRM -->
		</div>
    </div>
</div>
<!-- END: MAIN -->