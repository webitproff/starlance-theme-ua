<!-- BEGIN: MAIN -->
<div class="uk-section uk-padding-remove-vertical uk-background-primary uk-visible@m">
	<div class="uk-container uk-padding-small uk-link-text">
		<ul class="uk-breadcrumb">
            <li><a href="{PHP.cfg.mainurl}">{PHP.L.Home}</a></li>
            <li class="uk-active"><span>{PHP.L.userseasyreg_secure_page_breadcrumb_title}</span></li>
		</ul>
	</div>
</div>

<div class="uk-section uk-background-muted">
	<div class="uk-container">
		<div class="uk-card uk-card-body uk-card-small uk-margin-top uk-margin-bottom uk-background-default uk-border-rounded">
		<h3 class="uk-heading-bullet uk-text-truncate">{PHP.L.userseasyreg_secure_page_title}</h3>
        <div class="uk-panel uk-margin-medium">
            <p class="uk-font-face">{PHP.L.userseasyreg_secure_page_subtitle}</p>
			<pre>{USERSEASYREG_PASS}</pre>
        </div>
	<div class="uk-margin uk-text-center"> 
		<button type="submit" class="uk-button uk-button-default uk-margin-top">{PHP.L.userseasyreg_secure_page_btn_next}</button> 
	</div> 
		  <!-- <a href="/" class="uk-button uk-button-primary uk-button-large uk-width-1-1" style="border-radius: 0 0 4px 4px">{PHP.L.userseasyreg_secure_page_btn_next}</a> -->
		</div>
	</div>
</div>
<!-- END: MAIN -->