<!-- BEGIN: MAIN -->
<div class="uk-align-center" uk-lightbox="animation: scale">
<!-- BEGIN: ATTACHER_ROW -->
    <!-- IF {ATTACHER_ROW_IMG} AND {ATTACHER_ROW_NUM} == 1 -->
	<div class="">
			<div class="uk-cover-container uk-box-shadow-small">
				<canvas width="400" height="300"></canvas>
				<a href="{ATTACHER_ROW_URL}" data-caption="{PRD_SHORTTITLE} {ATTACHER_ROW_TITLE} - {ATTACHER_ROW_FILENAME}" alt="{ATTACHER_ROW_TITLE}">
				<img uk-cover src="{ATTACHER_ROW_ID|att_thumb($this,400,300,'crop')}" alt="{ATTACHER_ROW_TITLE} - {ATTACHER_ROW_FILENAME}" title="{ATTACHER_ROW_TITLE} - {ATTACHER_ROW_FILENAME}" />  
				</a>
			</div>
    </div>
	<!-- ENDIF -->
<!-- END: ATTACHER_ROW -->
</div>	
<!-- END: MAIN -->
