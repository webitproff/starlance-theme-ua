<!-- BEGIN: MAIN -->
<ul class="uk-list uk-list-divider">
	<!-- IF {LEVEL} == 0 -->
	<li class=""><a class="<!-- IF !{PHP.c} --> uk-active<!-- ENDIF -->" href="{HREF}">{PHP.L.Prd_Marketplace} - {PHP.L.All} на {PHP.cfg.maintitle}</a></li>		
	<!-- ENDIF -->
	<!-- BEGIN: CATS -->
	<li><a class="<!-- IF {ROW_SELECTED} --> uk-button uk-button-small uk-button-primary<!-- ENDIF -->" href="{ROW_HREF}">{ROW_TITLE} <!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->({ROW_COUNT})<!-- ENDIF --></a>
		<!-- IF {ROW_SUBCAT} -->
		{ROW_SUBCAT}
		<!-- ENDIF -->
	</li>
	<!-- END: CATS -->
</ul>
<!-- END: MAIN -->