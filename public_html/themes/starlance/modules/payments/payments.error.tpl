<!-- BEGIN: MAIN -->
<div class="uk-alert-danger" uk-alert>
    <a class="uk-alert-close" uk-close></a>
	<div class="uk-panel uk-text-break uk-text-danger">{ERROR_TEXT}</div>
</div>
<!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
<div class="uk-margin-remove-vertical uk-alert-primary" uk-alert>
    <a class="uk-alert-close" uk-close></a>
    <p>Расположение файла, формирующего шаблон страницы:</p>
	<div class="uk-panel uk-text-break uk-text-secondary">{PHP.mskin}</div>
</div>
<!-- ENDIF -->
<!-- END: MAIN -->