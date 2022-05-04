<!-- BEGIN: MAIN -->
<div class="uk-section uk-padding-remove-vertical uk-background-primary uk-visible@m">
	<div class="uk-container uk-container-large uk-padding-small uk-link-text">
		<ul class="uk-breadcrumb">
            <li><a href="{PHP.cfg.mainurl}">{PHP.L.Home}</a></li>
            <li>{PHP.L.yabilling_title}</li>
		</ul>
	</div>
</div>
<div class="uk-section uk-padding-remove-vertical uk-background-default">
    <div class="uk-container uk-container-large uk-margin-top uk-margin-bottom">
		<div class="uk-margin-top uk-margin-bottom uk-text-center">
			<h3 class="uk-heading-bullet uk-text-uppercase uk-text-bold uk-link-text">{PHP.L.yabilling_title}</h3>
			<hr class="uk-divider-icon uk-margin-auto uk-width-1-3@m">
			<h4 class="uk-text-center uk-text-primary uk-margin-remove"></h4>			
		</div>
		<!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
		<div class="uk-alert-primary" uk-alert>
			<a class="uk-alert-close" uk-close></a>
			<a href="http://freelance-script.abuyfile.com/plugin-yabilling/" class="uk-text-bold uk-text-danger" target="blank">Документация по плагину</a>
			<p>Расположение файла, формирующего шаблон страницы:</p>
			<div class="uk-panel uk-text-break uk-text-secondary">{PHP.path_skin} </div>
		</div>
		<!-- ENDIF -->
	<div class="uk-card uk-card-small uk-card-body uk-background-muted uk-border-rounded">


    <!-- BEGIN: BILLINGFORM -->
    	<!-- IF !{PHP.cfg.plugin.yabilling.typechoise} -->
		<h4 class="uk-text-warning uk-text-bold">{PHP.L.yabilling_formtext}</h4>
      	<script>
      		$(document).ready(function(){
      			setTimeout(function() {
      				$("#yandexform").submit();
      			}, 3000);
      		});
      	</script>
    	<!-- ELSE -->
		<h4 class="uk-text-warning uk-text-bold">{PHP.L.yabilling_formtext1}</h4>

    	<!-- ENDIF -->
    	{BILLING_FORM}
    <!-- END: BILLINGFORM -->

    <!-- BEGIN: ERROR -->
    <div class="uk-alert" uk-alert>
      <h4 class="uk-text-center">{BILLING_ERROR}</h4>
    	<!-- IF {BILLING_REDIRECT_URL} -->
    	<br/>
    	<h4 class="uk-text-center">{BILLING_REDIRECT_TEXT}</h4>
    	<script>
    		$(function(){
    			setTimeout(function () {
    				location.href='{BILLING_REDIRECT_URL}';
    			}, 5000);
    		});
    	</script>
    	<!-- ENDIF -->
    </div>
    <!-- END: ERROR -->
	</div>
 </div>
</div>
<!-- END: MAIN -->