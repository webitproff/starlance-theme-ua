<!-- BEGIN: MAIN -->
<div class="uk-section uk-padding-remove-vertical uk-background-primary uk-visible@m">
	<div class="uk-container uk-container-large uk-padding-small uk-link-text">
		<ul class="uk-breadcrumb">
            <li><a href="{PHP.cfg.mainurl}">{PHP.L.Home}</a></li>
            <li>{PHP.L.payments_billing_title}</li>
			<li>{PHP.L.ikassabilling_title}</li>
		</ul>
	</div>
</div>

<div class="uk-background-muted uk-section" uk-height-viewport="expand: true"> 
	<div class="uk-container uk-container-large"> 
	<div class="uk-margin-top uk-margin-large-bottom">
<!-- BEGIN: IKASSAFORM -->
	<div class="alert alert-info">{PHP.L.ikassabilling_formtext}</div>
	<script>
		$(document).ready(function(){
			setTimeout(function() {
				$("#ikassaform").submit();
			}, 3000);
		});
	</script>
	{IKASSA_FORM}
<!-- END: IKASSAFORM -->

<!-- BEGIN: ERROR -->
	<h4>{IKASSA_TITLE}</h4>
	{IKASSA_ERROR}
	
	<!-- IF {IKASSA_REDIRECT_URL} -->
	<br/>
	<p class="small">{IKASSA_REDIRECT_TEXT}</p>
	<script>
		$(function(){
			setTimeout(function () {
				location.href='{IKASSA_REDIRECT_URL}';
			}, 5000);
		});
	</script>
	<!-- ENDIF -->
	
<!-- END: ERROR -->
	</div>
	</div>
</div>
<!-- END: MAIN -->