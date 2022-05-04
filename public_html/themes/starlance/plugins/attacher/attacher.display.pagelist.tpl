<!-- BEGIN: MAIN -->
    <!-- BEGIN: ATTACHER_ROW -->
        <!-- IF {ATTACHER_ROW_IMG} -->
			<canvas width="330" height="320"></canvas>
			<img uk-cover src="{ATTACHER_ROW_ID|att_thumb($this,640,480,'crop')}" alt="{ATTACHER_ROW_TITLE} - {ATTACHER_ROW_FILENAME}" title="{ATTACHER_ROW_TITLE} - {ATTACHER_ROW_FILENAME}" />
			<div class="uk-hidden-hover uk-overlay uk-overlay-primary uk-flex uk-flex-center uk-flex-middle uk-position-bottom uk-animation-slide-bottom" uk-lightbox>
				<a class="uk-button uk-button-default" href="{ATTACHER_ROW_URL}" data-caption="{ATTACHER_ROW_TITLE}" alt="{ATTACHER_ROW_TITLE}">
					<span class="uk-margin-small-right" uk-icon="icon: plus-circle; ratio: 1.2"></span>
					<span class="uk-text-emphasis">{PHP.L.Folio_Show_Image}</span>
				</a>
			</div>
        <!-- ENDIF -->
    <!-- END: ATTACHER_ROW -->
<!-- END: MAIN -->