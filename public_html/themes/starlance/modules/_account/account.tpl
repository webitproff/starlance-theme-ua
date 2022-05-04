<!-- BEGIN: MAIN -->
<div class="uk-section uk-background-primary uk-padding-remove-vertical uk-visible@s">
    <div class="uk-container uk-container-large uk-padding-small">
        <ul class="uk-breadcrumb uk-link-text">
            <li><a href="{PHP|cot_url('index')}">{PHP.L.Home}</a></li>
            {BREADCRUMBS}
        </ul>
    </div>
</div>
<div class="uk-section uk-background-muted">
	{ACCOUNT_CONTENT}
</div> 





 
<!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
<!-- ENDIF -->
<!-- END: MAIN -->