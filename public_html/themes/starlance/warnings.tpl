<!-- BEGIN: ERROR -->
		<div uk-scrollspy="cls: uk-animation-slide-right; target: .uk-card; delay: 300; repeat: true" >
			<div class="uk-card uk-box-shadow-medium uk-border-rounded-mdm uk-width-1-3@l uk-position-z-index uk-position-fixed uk-position-medium uk-position-bottom-right uk-alert-danger" uk-alert>
				<a class="uk-alert-close" uk-close></a>
				<h4 class="uk-text-bold uk-text-danger uk-animation-slide-right uk-animation-toggle" tabindex="0"><img class="uk-animation-shake uk-margin-small-right" width="27" height="27" alt="" uk-img="data-src: /themes/{PHP.theme}/img/icon/048-notification.svg" uk-svg="uk-preserve"><span class="uk-text-middle">{PHP.L.Error}!</span></h4>
				<!-- BEGIN: ERROR_ROW -->
				<p class="uk-link-text">{ERROR_ROW_MSG}</p>
				<!-- END: ERROR_ROW -->
			</div>
		</div>
<!-- END: ERROR -->

<!-- BEGIN: WARNING -->
<div class="uk-alert-warning uk-margin-remove-vertical" uk-alert>
    <a class="uk-alert-close" uk-close></a>
	<div class="uk-container">
		<h4 class="uk-text-bold uk-animation-slide-right uk-animation-toggle" tabindex="0"><img class="uk-animation-shake uk-margin-small-right" width="27" height="27" alt="" uk-img="data-src: /themes/{PHP.theme}/img/icon/048-notification.svg" uk-svg="uk-preserve"><span class="uk-text-middle">{PHP.L.Warning}!</span></h4>
		<!-- BEGIN: WARNING_ROW -->
		<p>{WARNING_ROW_MSG}</p>
		<!-- END: WARNING_ROW -->
	</div>
</div>
<!-- END: WARNING -->

<!-- BEGIN: DONE -->
<div class="alert-success-full uk-margin-remove-vertical" uk-alert>
    <a class="uk-alert-close" uk-close></a>
	<div class="uk-container">
		<h4 class="uk-text-bold uk-animation-slide-right uk-animation-toggle" tabindex="0"><img class="uk-animation-shake uk-margin-small-right" width="27" height="27" alt="" uk-img="data-src: /themes/{PHP.theme}/img/icon/048-notification.svg" uk-svg="uk-preserve"><span class="uk-text-middle">{PHP.L.Done}!</span></h4>
		<!-- BEGIN: DONE_ROW -->
		<p>{DONE_ROW_MSG}</p>
		<!-- END: DONE_ROW -->
	</div>
</div>
<!-- END: DONE -->