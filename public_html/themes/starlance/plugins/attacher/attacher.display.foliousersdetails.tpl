<!-- BEGIN: MAIN -->
		<!-- IF {ATTACHER_ROW_COUNT} -->
		<div class="uk-position-small uk-position-top-left uk-panel"><span class="uk-icon-button uk-button-danger">{ATTACHER_ROW_COUNT}</span></div>
		<!-- ENDIF -->
<div class="uk-position-relative uk-visible-toggle" tabindex="-1" uk-slider="center: true">
    <ul class="uk-slider-items uk-grid uk-grid-match" uk-height-viewport="min-height: 250; offset-top: true; offset-bottom: 30" uk-lightbox>
	<!-- BEGIN: ATTACHER_ROW -->
		<!-- IF {ATTACHER_ROW_IMG} -->
		<li class="uk-width-1-1">
			<div class="uk-cover-container">	
			<canvas width="640" height="320"></canvas>
				<a href="{ATTACHER_ROW_URL}" data-caption="{ATTACHER_ROW_TITLE} - ({ATTACHER_ROW_FILENAME})" alt="{ATTACHER_ROW_TITLE}">
				<img src="{ATTACHER_ROW_ID|att_thumb($this,640,420,'crop')}" alt="{ATTACHER_ROW_TITLE} - ({ATTACHER_ROW_FILENAME})" title="{ATTACHER_ROW_TITLE} - ({ATTACHER_ROW_FILENAME})" uk-cover />
				</a>
				
				<div class="uk-position-small uk-position-bottom-center uk-panel"><span class="uk-icon-button uk-button-danger">{ATTACHER_ROW_NUM}</span></div>
			</div>
		</li>
		<!-- ENDIF -->
		<!-- IF {ATTACHER_ROW_COUNT} -->
		<div class="uk-position-small uk-position-top-left uk-panel"><span class="uk-icon-button uk-button-danger">{ATTACHER_ROW_COUNT}</span></div>
		<!-- ENDIF -->
	<!-- END: ATTACHER_ROW -->
    </ul>
<div class="uk-visible@m">
    <a class="uk-position-center-left uk-position-small uk-hidden-hover" href="#" uk-slidenav-previous uk-slider-item="previous"></a>
    <a class="uk-position-center-right uk-position-small uk-hidden-hover" href="#" uk-slidenav-next uk-slider-item="next"></a>
</div>
<ul class="uk-slider-nav uk-dotnav uk-flex-center uk-margin"></ul>
</div>
<!-- END: MAIN -->