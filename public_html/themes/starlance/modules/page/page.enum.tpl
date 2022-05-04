<!-- BEGIN: MAIN -->
<!-- BEGIN: PAGE_ROW -->
<div class="uk-card uk-card-default uk-card-body uk-margin-bottom">
	<!-- IF {PHP.usr.id} == {PAGE_ROW_OWNER_ID} OR {PHP.usr.isadmin} --> 
	<div class="uk-position-top-right">
		<a uk-tooltip="{PHP.L.Edit}" class="uk-icon-button uk-button-default" href="{PAGE_ROW_ID|cot_url('page','m=edit&id='$this)}" uk-icon="icon:  file-edit; ratio: 1.2" title=""></a>
	</div>
	<!-- ENDIF -->
	<h3 class="uk-heading-bullet uk-margin-remove-top uk-text-truncate">
		<a href="{PAGE_ROW_URL}" title="{PAGE_ROW_SHORTTITLE}">{PAGE_ROW_SHORTTITLE}</a>
	</h3>
	<!-- IF {PAGE_ROW_DESC} -->
	<span class="uk-text-secondary">{PAGE_ROW_DESC}</span>
	<!-- ENDIF -->
	<!-- IF {PHP.usr.isadmin} -->
	<hr>
	<div class="">
		<strong>{PHP.L.Filedunder}:</strong><span class="uk-text-warning"> {PAGE_ROW_CATPATH}</span>
	</div>
	<!-- ENDIF -->
	<div>
		<span class="uk-text-muted">
		{PAGE_ROW_TEXT_CUT|strip_tags($this)|mb_substr($this, 0, 350, 'UTF-8')}...</span>
		<!-- IF {PAGE_ROW_TEXT_IS_CUT} -->{PAGE_ROW_MORE}<!-- ENDIF -->
	</div>
</div>
<!-- END: PAGE_ROW -->
	<p class="paging">{PAGE_TOP_PAGEPREV}{PAGE_TOP_PAGINATION}{PAGE_TOP_PAGENEXT}</p>
<!-- END: MAIN -->
