<!-- BEGIN: MAIN -->
    <!-- BEGIN: SUBSCRIBE -->
   
    <div class="uk-container-center uk-width-medium-1-5 uk-margin-large-top">
        {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
        <!-- IF {PHP.status} == 'subs_ok' -->
	<div class="uk-alert uk-alert-success">{PHP.L.cwsender_subscribe_status_subs_ok}</div>
	<!-- ENDIF -->
        {PHP.id|cwsender_subscribe($this)}
    </div>
    <!-- END: SUBSCRIBE -->
    
    <!-- BEGIN: UNSUBSCRIBE -->
    <div class="uk-container-center uk-width-medium-1-5 uk-margin-large-top">
        <!-- IF {PHP.status} == 'unsubs_ok' -->
        <div class="uk-alert uk-alert-success">{PHP.L.cwsender_unsubscribe_status_unsubs_ok}</div>
        <!-- ENDIF -->

        <!-- IF {PHP.status} == 'unsubs_fail' -->
        <div class="uk-alert uk-alert-success">{PHP.L.cwsender_unsubscribe_status_unsubs_fail}</div>
        <!-- ENDIF -->

        <!-- IF {PHP.status} == 'unsubs_notfound' -->
        <div class="uk-alert uk-alert-success">{PHP.L.cwsender_unsubscribe_status_unsubs_notfound}</div>
        <!-- ENDIF -->
    </div>		
    <!-- END: UNSUBSCRIBE -->
<!-- END: MAIN -->