<!-- BEGIN: MAIN -->
<div class="uk-section uk-padding-remove-vertical uk-background-primary uk-visible@m">
	<div class="uk-container uk-container-large uk-padding-small">
		<ul class="uk-breadcrumb">
            <li>{PHP.L.nullbilling_title}</li>
		</ul>
	</div>
</div>
<div class="uk-background-muted uk-section uk-padding-remove-vertical" uk-height-viewport="expand: true"> 
	<div class="uk-container uk-container-large"> 
		<div class="uk-margin-top uk-margin-large-bottom">

		<!-- BEGIN: ERROR -->
			<h4>{BILLING_TITLE}</h4>
			{BILLING_ERROR}
			
			<!-- IF {BILLING_REDIRECT_URL} -->
			<br/>
			<p class="small">{BILLING_REDIRECT_TEXT}</p>
			<script>
				$(function(){
					setTimeout(function () {
						location.href='{BILLING_REDIRECT_URL}';
					}, 5000);
				});
			</script>
			<!-- ENDIF -->
		<!-- END: ERROR -->
		</div>
	</div>
</div>
<!-- END: MAIN -->