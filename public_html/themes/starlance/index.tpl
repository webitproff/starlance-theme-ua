<!-- BEGIN: MAIN -->
<div uk-height-viewport>		
<!-- IF {PHP.usr.id} == 0 -->
<!-- SLIDER -->
{FILE "./themes/{PHP.theme}/inc/index.slider.tpl"}
<!-- /SLIDER -->
<!-- ENDIF -->
<!-- IF {PHP.cot_plugins_active.paytop} -->
{PHP|cot_get_paytop ('top')}
<!-- ENDIF -->	
<!-- IF {PHP.cot_plugins_active.userpoints} -->
{PHP|cot_get_topusers (4, 4)}
<!-- ENDIF -->
<!-- IF {PHP.cot_modules.projects} -->
<!-- РАЗДЕЛ родительских категорий projects --> 
{PHP|cot_build_structure_projects_tree('', '', 0, 'index')}
<!-- РАЗДЕЛ родительских категорий projects)  КОНЕЦ-->
{PHP|cot_getprojectslist('index', '3')}
<!-- ENDIF --> 
<!-- IF {PHP.cot_modules.services} -->
{PHP|cot_getserviceslist('index', '4')}
<!-- ENDIF --> 
<!-- РАЗДЕЛ родительских категорий витрины услуг (модуль маркет)  КОНЕЦ-->
<!-- IF {PHP.cot_modules.market} -->
{PHP|cot_getmarketlist('index', '4')}
<!-- ENDIF --> 

<!-- IF {INDEX_NEWS} -->
	{INDEX_NEWS}
<!-- ENDIF -->
<!-- IF {PHP.cot_modules.cwsender} --> 
<!-- IF {PHP.usr.id} == 0 -->
{PHP|cwsender_subscribe(1)}
<!-- ENDIF -->
<!-- ENDIF -->
</div>
<!-- END: MAIN -->