<!-- BEGIN: MAIN -->
<div class="uk-offcanvas-content">
<div class="uk-section uk-padding-remove-vertical uk-background-primary">
	<div class="uk-container uk-container-small uk-padding-small">
		<div class="uk-grid-small" uk-grid>
			<div class="uk-width-auto">
				<a uk-tooltip="Меню сделок" uk-toggle="target: #sidebar" class="uk-icon-button  uk-button-default" uk-icon="settings"></a>
			</div>
			<div class="uk-width-expand">
				<h3 class="uk-heading-bullet uk-text-uppercase uk-text-bold uk-link-text">{PHP.L.sbr_mydeals}
			</div>
		</div>
	</div>
</div>
<div class="uk-section uk-padding-remove">
	<div class="">
		<div class="uk-grid-collapse" uk-grid>
			<div id="sidebar" class="uk-width-1-5@l uk-width-1-4@m uk-padding-small uk-padding-remove-top uk-animation-slide-left starlance-bg-darkgreenblue">
				<ul class="uk-nav-default uk-list uk-list-divider uk-light" uk-nav>
					<li class="uk-nav-header uk-margin-top <!-- IF !{PHP.status} --> uk-active"<!-- ENDIF -->"><a href="{PHP|cot_url('sbr')}">{PHP.L.sbr_admin_home_all} ({SBR_COUNTERS.all})</a></li>
					<li<!-- IF {PHP.status} == 'new' --> class="active"<!-- ENDIF -->><a href="{PHP|cot_url('sbr','status=new')}">{PHP.L.sbr_deals_new} ({SBR_COUNTERS.new})</a></li>
					<li<!-- IF {PHP.status} == 'refuse' --> class="active"<!-- ENDIF -->><a href="{PHP|cot_url('sbr','status=refuse')}">{PHP.L.sbr_deals_refuse} ({SBR_COUNTERS.refuse})</a></li>
					<li<!-- IF {PHP.status} == 'confirm' --> class="active"<!-- ENDIF -->><a href="{PHP|cot_url('sbr','status=confirm')}">{PHP.L.sbr_deals_confirm} ({SBR_COUNTERS.confirm})</a></li>
					<li<!-- IF {PHP.status} == 'process' --> class="active"<!-- ENDIF -->><a href="{PHP|cot_url('sbr','status=process')}">{PHP.L.sbr_deals_process} ({SBR_COUNTERS.process})</a></li>
					<li<!-- IF {PHP.status} == 'done' --> class="active"<!-- ENDIF -->><a href="{PHP|cot_url('sbr','status=done')}">{PHP.L.sbr_deals_done} ({SBR_COUNTERS.done})</a></li>
					<li<!-- IF {PHP.status} == 'claim' --> class="active"<!-- ENDIF -->><a href="{PHP|cot_url('sbr','status=claim')}">{PHP.L.sbr_deals_claim} ({SBR_COUNTERS.claim})</a></li>
					<li<!-- IF {PHP.status} == 'cancel' --> class="active"<!-- ENDIF -->><a href="{PHP|cot_url('sbr','status=cancel')}">{PHP.L.sbr_deals_cancel} ({SBR_COUNTERS.cancel})</a></li>
					<li><a uk-tooltip="«{PHP.L.sbr}» - Руководство пользователя по защищенной сделке читать в новой вкладке" class="uk-animation-toggle" tabindex="0" href="{PHP.cfg.mainurl}/user-guide/17"><img class="uk-margin-small-right  uk-animation-shake" width="27" height="27" alt="" uk-img="data-src: themes/{PHP.theme}/img/icon/question.svg" uk-svg="uk-preserve"><span class="uk-text-middle">«{PHP.L.sbr}» Как это работает ?</span></a></li>
				</ul>
			</div>
			<div class="uk-width-expand uk-background-default">
				<section class="uk-section uk-padding-remove" uk-height-viewport="offset-top: true">
					<div class="uk-container uk-container-expand uk-margin-top">
					<h3 class="uk-heading-bullet uk-text-uppercase uk-text-bold">
						<!-- IF !{PHP.status} -->
						<span class="uk-text-primary"> {PHP.L.sbr_admin_home_all}</span>		
						<!-- ENDIF -->
						<!-- IF {PHP.status} == 'new' -->
						<span class="uk-text-warning"> {PHP.L.sbr_deals_new} ({SBR_COUNTERS.new})</span>		
						<!-- ENDIF -->
						<!-- IF {PHP.status} == 'refuse' -->
						<span class="uk-text-success"> {PHP.L.sbr_deals_refuse} ({SBR_COUNTERS.refuse})</span>		
						<!-- ENDIF -->
						<!-- IF {PHP.status} == 'confirm' --> 
						<span class="uk-text-danger"> {PHP.L.sbr_deals_confirm} ({SBR_COUNTERS.confirm})</span>
						<!-- ENDIF -->
						<!-- IF {PHP.status} == 'process' -->
						<span class="uk-text-muted"> {PHP.L.sbr_deals_process} ({SBR_COUNTERS.process})</span>
						<!-- ENDIF -->
						<!-- IF {PHP.status} == 'done' -->
						<span class="uk-text-success"> {PHP.L.sbr_deals_done} ({SBR_COUNTERS.done})</span>		
						<!-- ENDIF -->
						<!-- IF {PHP.status} == 'claim' --> 
						<span class="uk-text-danger"> {PHP.L.sbr_deals_claim} ({SBR_COUNTERS.claim})</span>
						<!-- ENDIF -->
						<!-- IF {PHP.status} == 'cancel' -->
						<span class="uk-text-muted"> {PHP.L.sbr_deals_cancel} ({SBR_COUNTERS.cancel})</span>
						<!-- ENDIF -->
					</h3>
						<div class="uk-overflow-auto">
							<table class="uk-table uk-table-striped uk-table-hover uk-table-small uk-table-middle uk-table-divider">
								<thead class="uk-background-secondary uk-text-warning">
									<tr>
										<th class="uk-text-nowrap">ID №</th>
										<th class="uk-table-expand uk-text-nowrap">{PHP.L.sbr_title}</th>
										<th class="uk-table-expand uk-text-nowrap">Дата создания</th>
										<th class="uk-table-expand uk-text-nowrap">Старт 1-го этапа</th>
										<th>{PHP.L.sbr_employer}</th>
										<th>{PHP.L.sbr_performer}</th>
										<th class="uk-table-expand uk-text-nowrap">{PHP.L.sbr_calc_summ}</th>
										<th class="uk-table-expand uk-text-nowrap">{PHP.L.sbr_status_title}</th>
									</tr>
								</thead>
								<tbody>
									<!-- BEGIN: SBR_ROW -->
									<tr>
										<td class="">{SBR_ROW_ID}</td>
										<td class="uk-text-nowrap uk-link-text"><a class="" href="{SBR_ROW_URL}">{SBR_ROW_SHORTTITLE}</a></td>
										<td class="uk-text-nowrap"><!-- IF {SBR_ROW_CREATEDATE} -->{SBR_ROW_CREATEDATE_STAMP|date('d.m.Y H:i', $this)}<!-- ENDIF --></td>
										<td class="uk-text-nowrap"><!-- IF {PHP.sbr.sbr_begin} -->{PHP.sbr.sbr_begin|date('d.m.Y H:i:s', $this)}<!-- ENDIF --></td>
										<td class="uk-text-nowrap"><a href="{SBR_ROW_EMPLOYER_DETAILSLINK}" target="blank">{SBR_ROW_EMPLOYER_NICKNAME}</a></td>
										<td class="uk-text-nowrap"><a href="{SBR_ROW_PERFORMER_DETAILSLINK}" target="blank">{SBR_ROW_PERFORMER_NICKNAME}</a></td>
										<td class="uk-text-nowrap">{SBR_ROW_COST} {PHP.cfg.payments.valuta}</td>
										<td class="uk-text-nowrap">{SBR_ROW_LOCALSTATUS}</td>
									</tr>
									<!-- END: SBR_ROW -->
								</tbody>
							</table>
						</div>					
					</div>
				</section>
			</div>
		</div>
	</div>
</div>
</div>
<!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
<div class="uk-margin-remove-vertical uk-alert-primary" uk-alert>
    <a class="uk-alert-close" uk-close></a>
    <p>Расположение файла, формирующего шаблон страницы:</p>
	<div class="uk-panel uk-text-break uk-text-secondary">{PHP.mskin}</div>
</div>
<!-- ENDIF -->
<!-- END: MAIN -->