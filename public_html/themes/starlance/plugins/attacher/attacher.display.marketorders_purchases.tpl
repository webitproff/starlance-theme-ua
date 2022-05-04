<!-- BEGIN: MAIN -->
    <!-- BEGIN: ATTACHER_ROW -->
        <!-- IF {ATTACHER_ROW_IMG} -->
			<div class="uk-card-media-left uk-cover-container" uk-lightbox>
				<canvas width="200" height="200"></canvas>
				<a href="{ATTACHER_ROW_URL}" data-caption="{ATTACHER_ROW_TITLE}" alt="{ATTACHER_ROW_TITLE}">
				<img uk-cover src="{ATTACHER_ROW_ID|att_thumb($this,400,300,'crop')}" alt="{ATTACHER_ROW_TITLE} - {ATTACHER_ROW_FILENAME}" title="{ATTACHER_ROW_TITLE} - {ATTACHER_ROW_FILENAME}" />  
				</a>
			</div>
        <!-- ENDIF -->
    <!-- END: ATTACHER_ROW -->
<!-- END: MAIN -->
