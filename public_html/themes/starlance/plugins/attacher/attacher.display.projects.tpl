<!-- BEGIN: MAIN -->
<div class="uk-overflow-auto">
<table class="uk-table uk-table-striped uk-table-hover uk-table-small uk-table-middle uk-table-divider">
		<thead class="starlance-bg-darkgreenblue uk-light">
			<tr>
				<th class="">ID №</th>
				<th class="">Предпросмотр</th>
				<th class="uk-table-expand uk-text-nowrap">Краткое описание</th>
				<th class="uk-table-expand uk-text-nowrap">Имя и расширение файла</th>
				<th class="uk-table-expand uk-text-nowrap">Размер</th>
				<th class="uk-table-expand uk-text-nowrap">Загрузки</th>
			</tr>
		</thead>
		<tbody>
    <!-- BEGIN: ATTACHER_ROW -->
		<tr>
			<td>#{ATTACHER_ROW_NUM}</td>
			<!-- IF {ATTACHER_ROW_IMG} -->
			<td uk-lightbox><a href="{ATTACHER_ROW_BIGTHUMB_URL}"  title="{ATTACHER_ROW_TITLE}"><img  width="48" height="48" src="{ATTACHER_ROW_THUMB_URL}" alt="{ATTACHER_ROW_SHORTNAME}"></td>
			<!-- ELSE -->
			<td><img src="{ATTACHER_ROW_EXT|att_icon($this,48)}" alt="{ATTACHER_ROW_EXT}" width="48" height="48"></td>
			<!-- ENDIF -->
			<td class="uk-text-nowrap">{ATTACHER_ROW_TITLE}</td>
			<td><a href="{ATTACHER_ROW_ID|cot_url('index', 'r=attacher&a=dl&id='$this)}" title="{ATTACHER_ROW_TITLE}" download>{ATTACHER_ROW_FILENAME}</a></td>
			<td class="uk-text-nowrap">{ATTACHER_ROW_SIZE}</td>
			<td class="uk-text-nowrap">({PHP.L.att_downloads}: {ATTACHER_ROW_COUNT})</td>
		</tr>
    <!-- END: ATTACHER_ROW -->
	</tbody>
</table>
</div>
<!-- END: MAIN -->
