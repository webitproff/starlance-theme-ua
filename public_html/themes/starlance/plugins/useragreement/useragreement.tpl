<!-- BEGIN: MAIN -->
<div class="uk-section uk-padding-remove-vertical uk-background-primary" uk-height-viewport="expand: true">
    <div class="uk-container uk-container-large uk-margin-top uk-margin-bottom">
		<div class="uk-align-center uk-card uk-background-muted uk-card-body uk-card-small uk-border-rounded uk-width-3-4@m">
			<!-- IF {PHP.usr.maingrp} == 5 -->
				<nav class="uk-navbar">
					<div class="uk-navbar-content uk-navbar-flip uk-hidden-small">
						<a class="uk-button uk-button-danger" href="/admin/config?n=edit&o=plug&p=useragreement">{PHP.L.Edit}</a>
					</div>
				</nav>	
			<!-- ENDIF -->
			<div class="uk-margin-top uk-margin-bottom uk-text-center">
				<h2 class="uk-heading-bullet uk-text-uppercase uk-text-bold uk-link-text">{PHP.L.useragreement}</h2>
				<hr class="uk-divider-icon uk-margin-auto uk-width-1-3@m">    
			</div>
			{USERAGREEMENT} 
		</div>
    </div>
</div>
<!-- END: MAIN -->