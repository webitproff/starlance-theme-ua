<!-- BEGIN: MAIN -->
<div class="uk-section uk-padding-remove-vertical uk-background-primary">
	<div class="uk-container uk-container-large uk-padding-small">
		<div class="uk-grid-small" uk-grid>
			<div class="uk-width-1-3@m">
				<h3 class="uk-heading-bullet uk-link-text">{PLUGIN_TITLE}</h3>
			</div>
			<div class="uk-width-2-3@m uk-flex uk-flex-middle uk-visible@m">

			</div>
		</div>
	</div>
</div>
<div class="uk-background-muted uk-section">
	<div class="uk-container uk-container-large" uk-height-viewport="expand: true">
					<form id="search" name="search" action="{PLUGIN_SEARCH_ACTION}" method="get">
						<input type="hidden" name="e" value="search" />
						<input type="hidden" name="tab" value="{PHP.tab}" />
						<div class="uk-grid-small uk-child-width-expand@s" uk-grid>
							<div class="uk-flex uk-flex-center">
								<div uk-grid>
									<div class="uk-width-5-6">
								<a class="uk-link-text uk-form-danger uk-form-width-medium uk-select" href="#"><span class="">
								<!-- IF !{PHP.tab} -->Искать везде!<!-- ENDIF -->
								<!-- IF {PHP.tab} == 'market' -->{PHP.L.Prd_Marketplace}<!-- ENDIF -->
								<!-- IF {PHP.tab} == 'folio' -->{PHP.L.folio}<!-- ENDIF -->
								<!-- IF {PHP.tab} == 'projects' -->{PHP.L.projects_projects}<!-- ENDIF -->
								<!-- IF {PHP.tab} == 'pag' -->{PHP.L.Pages}<!-- ENDIF -->
								<!-- IF {PHP.tab} == 'frm' -->{PHP.L.Forums}<!-- ENDIF --></span></a>
								<div uk-dropdown="mode: click">
									<ul class="uk-nav uk-dropdown-nav uk-list uk-list-divider">
										<li>
											<a class="uk-link-text uk-text-uppercase" href="{PHP|cot_url('plug','e=search')}">{PHP.L.plu_tabs_all}</a>
										</li>
										<li>
											<a class="uk-link-text uk-text-uppercase" href="{PHP|cot_url('plug','e=search&amp;tab=market')}">{PHP.L.Prd_Marketplace}</a>	
										</li>
										<li>
											<a class="uk-link-text uk-text-uppercase" href="{PHP|cot_url('plug','e=search&amp;tab=folio')}">{PHP.L.folio}</a>
										</li>
										<li>
											<a class="uk-link-text uk-text-uppercase" href="{PHP|cot_url('plug','e=search&amp;tab=projects')}">{PHP.L.projects_projects}</a>	
										</li>
										<li>
											<a class="uk-link-text uk-text-uppercase" href="{PHP|cot_url('plug','e=search&amp;tab=pag')}">{PHP.L.Pages}</a>
										</li>
										<li>
											<a class="uk-link-text uk-text-uppercase" href="{PHP|cot_url('plug','e=search&amp;tab=frm')}"><span class="uk-margin-small-right" uk-icon="commenting"></span><span class="uk-text-middle">{PHP.L.Forums} </span></a>	
										</li>
									</ul>
								</div>
									</div>
									<div class="uk-width-1-6">
									<!-- IF {PHP.tab} -->
										<a uk-tooltip="Выбрать отдел маркетплейса и перейти"
										<!-- IF {PHP.tab} == 'market' -->
										 href="#markt-opt-srch" 
										<!-- ENDIF -->
										<!-- IF {PHP.tab} == 'folio' -->
										 href="#folio-opt-srch"<!-- ENDIF -->
										<!-- IF {PHP.tab} == 'projects' -->
										 href="#prg-opt-srch"<!-- ENDIF -->
										<!-- IF {PHP.tab} == 'pag' -->
										 href="#pag-opt-srch"<!-- ENDIF -->
										<!-- IF {PHP.tab} == 'frm' -->
										 href="#frm-opt-srch"<!-- ENDIF -->
										uk-toggle class="uk-icon-button uk-button-default" uk-icon="settings"></a>
									<!-- ENDIF -->
									</div>
								</div>

							</div>
							<div>
								<div>
									<input type="text" name="sq" value="" class="uk-input uk-width-1-1 uk-border-rounded-mdm" placeholder="{PHP.L.Search}">
								</div>
							</div>
							<div class="uk-flex uk-flex-center">
								<input class="uk-button uk-button-linear uk-width-1-1" type="submit" value="{PHP.L.plu_search_key}" />
							</div>
						</div>
						<!-- IF {PHP.tab} == '' -->
						<div id="">
							<div>
							</div>
						</div>
						<!-- ENDIF -->
						<!-- IF {PHP.tab} == 'market' -->
						<div class="uk-margin-top uk-card uk-card-body uk-border-rounded uk-background-default uk-animation-scale-up" id="markt-opt-srch" hidden>
							<div>
							<!-- BEGIN: MARKET_OPTIONS -->
							<h3 class="uk-heading-bullet uk-margin-remove-top">Дополнительные опции поиска</h3>
								<div class="uk-grid-small uk-grid-divider uk-child-width-1-2@m" uk-grid>
									<div>
										<div class="uk-panel">
											<div>
												<p class="uk-text-warning">{PHP.L.plu_market_set_sec}:</p>
												<div class="">{PLUGIN_MARKET_SEC_LIST}</div>
												<p class="uk-text-light uk-text-small">{PHP.L.plu_ctrl_list}</p>
											</div>	
										</div>
									</div>
									<div>
										<div class="uk-panel">
											<p class="uk-text-warning">{PHP.L.plu_other_opt}:</p>
											<p><label>{PLUGIN_MARKET_SEARCH_NAMES}</label></p>
											<p>{PLUGIN_MARKET_SEARCH_TEXT}</p>
											<p>{PLUGIN_MARKET_SEARCH_FILE}</p>
											<p class="strong">{PHP.L.plu_res_sort}:</p>
											<p>{PLUGIN_MARKET_RES_SORT}</p>
											<p>{PLUGIN_MARKET_RES_SORT_WAY}</p>
										</div>
									</div>
								</div>
							<!-- END: MARKET_OPTIONS -->
							</div>
						</div>
						<!-- ENDIF -->
						<!-- IF {PHP.tab} == 'folio' -->
						<div id="">
							<div>
							<!-- BEGIN: FOLIO_OPTIONS -->
							<h3>{PHP.L.folio}</h3>
							<table class="main">
								<tr>
									<td class="width50">
										<p class="strong">{PHP.L.plu_folio_set_sec}:</p>
										<p>{PLUGIN_FOLIO_SEC_LIST}</p>
										<p>{PLUGIN_FOLIO_SEARCH_SUBCAT}</p>
										<p class="small">{PHP.L.plu_ctrl_list}</p>
									</td>
									<td class="width50">
										<p class="strong">{PHP.L.plu_other_opt}:</p>
										<p><label>{PLUGIN_FOLIO_SEARCH_NAMES}</label></p>
										<p>{PLUGIN_FOLIO_SEARCH_TEXT}</p>
										<p>{PLUGIN_FOLIO_SEARCH_FILE}</p>
										<p class="strong">{PHP.L.plu_res_sort}:</p>
										<p>{PLUGIN_FOLIO_RES_SORT}</p>
										<p>{PLUGIN_FOLIO_RES_SORT_WAY}</p>
									</td>
								</tr>
							</table>
							<!-- END: FOLIO_OPTIONS -->
							</div>
						</div>
						<!-- ENDIF -->
						<!-- IF {PHP.tab} == 'projects' -->
						<div id="">
							<div>
							<!-- BEGIN: PROJECTS_OPTIONS -->
							<h3>{PHP.L.projects_projects}</h3>
							<table class="main">
								<tr>
									<td class="width50">
										<p class="strong">{PHP.L.plu_pag_set_sec}:</p>
										<p>{PLUGIN_PROJECTS_SEC_LIST}</p>
										<p>{PLUGIN_PROJECTS_SEARCH_SUBCAT}</p>
										<p class="small">{PHP.L.plu_ctrl_list}</p>
									</td>
									<td class="width50">
										<p class="strong">{PHP.L.plu_other_opt}:</p>
										<p><label>{PLUGIN_PROJECTS_SEARCH_NAMES}</label></p>
										<p>{PLUGIN_PROJECTS_SEARCH_TEXT}</p>
										<p>{PLUGIN_PROJECTS_SEARCH_FILE}</p>
										<p class="strong">{PHP.L.plu_res_sort}:</p>
										<p>{PLUGIN_PROJECTS_RES_SORT}</p>
										<p>{PLUGIN_PROJECTS_RES_SORT_WAY}</p>
									</td>
								</tr>
							</table>
							<!-- END: PROJECTS_OPTIONS -->
							</div>
						</div>
						<!-- ENDIF -->
						<!-- IF {PHP.tab} == 'pag' -->
						<div id="">
							<div>
							<!-- BEGIN: PAGES_OPTIONS -->
							<h3>{PHP.L.Pages}</h3>
							<table class="main">
								<tr>
									<td class="width50">
										<p class="strong">{PHP.L.plu_pag_set_sec}:</p>
										<p>{PLUGIN_PAGE_SEC_LIST}</p>
										<p>{PLUGIN_PAGE_SEARCH_SUBCAT}</p>
										<p class="small">{PHP.L.plu_ctrl_list}</p>
									</td>
									<td class="width50">
										<p class="strong">{PHP.L.plu_other_opt}:</p>
										<p><label>{PLUGIN_PAGE_SEARCH_NAMES} {PHP.L.plu_pag_search_names}</label></p>
										<p>{PLUGIN_PAGE_SEARCH_DESC}</p>
										<p>{PLUGIN_PAGE_SEARCH_TEXT}</p>
										<p>{PLUGIN_PAGE_SEARCH_FILE}</p>
										<p class="strong">{PHP.L.plu_res_sort}:</p>
										<p>{PLUGIN_PAGE_RES_SORT}</p>
										<p>{PLUGIN_PAGE_RES_SORT_WAY}</p>
									</td>
								</tr>
							</table>
							<!-- END: PAGES_OPTIONS -->
							</div>
						</div>
						<!-- ENDIF -->
						<!-- IF {PHP.tab} == 'frm' -->
						<div id="frm">
							<div>
							<!-- BEGIN: FORUMS_OPTIONS -->
							<h3>{PHP.L.Forums}</h3>
							<table class="main">
								<tr>
									<td class="width50">
										<p class="strong">{PHP.L.plu_frm_set_sec}:</p>
										<p>{PLUGIN_FORUM_SEC_LIST}</p>
										<p>{PLUGIN_FORUM_SEARCH_SUBCAT}</p>
										<div class="small">{PHP.L.plu_ctrl_list}</div>
									</td>
									<td class="width50">
										<p class="strong">{PHP.L.plu_other_opt}:</p>
										<p>{PLUGIN_FORUM_SEARCH_NAMES}</p>
										<p>{PLUGIN_FORUM_SEARCH_POST}</p>
										<p>{PLUGIN_FORUM_SEARCH_ANSW}</p>
										<p class="strong">{PHP.L.plu_res_sort}:</p>
										<p>{PLUGIN_FORUM_RES_SORT}</p>
										<p>{PLUGIN_FORUM_RES_SORT_WAY}</p>

									</td>
								</tr>
							</table>
							<!-- END: FORUMS_OPTIONS -->
							</div>
						</div>
						<!-- ENDIF -->
					</form>
				{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
<!-- BEGIN: RESULTS -->
<!-- BEGIN: PROJECTS -->
				<h3>{PHP.L.projects_projects}</h3>
				<table class="cells">
					<tr>
						<td colspan="2" class="coltop">{PHP.L.plu_result}: {PHP.L.projects_projects}
						</td>
					</tr>
<!-- BEGIN: ITEM -->
					<tr>
						<td colspan="2" class="{PLUGIN_PROJECTSRES_ODDEVEN}">{PLUGIN_PROJECTSRES_TITLE}</td>
					</tr>
					<tr>
						<td colspan="2" class="{PLUGIN_PROJECTSRES_ODDEVEN}">{PLUGIN_PROJECTSRES_TEXT}</td>
					</tr>
					<tr>
						<td class="{PLUGIN_PROJECTSRES_ODDEVEN} width50"><p class="small">{PHP.L.plu_last_date}: {PLUGIN_PROJECTSRES_TIME}</p></td>
						<td class="{PLUGIN_PROJECTSRES_ODDEVEN} textright width50"><p class="small">{PHP.L.plu_section}: {PLUGIN_PROJECTSRES_CATEGORY}</p></td>
					</tr>
<!-- END: ITEM -->
				</table>
<!-- END: PROJECTS -->
<!-- BEGIN: MARKET -->
				<h3>{PHP.L.Prd_Marketplace}</h3>
				<table class="cells">
					<tr>
						<td colspan="2" class="coltop">{PHP.L.plu_result}:
						</td>
					</tr>
<!-- BEGIN: ITEM -->
					<tr>
						<td colspan="2" class="{PLUGIN_MARKETRES_ODDEVEN}">{PLUGIN_MARKETRES_TITLE}</td>
					</tr>
					<tr>
						<td colspan="2" class="{PLUGIN_MARKETRES_ODDEVEN}">{PLUGIN_MARKETRES_TEXT}</td>
					</tr>
					<tr>
						<td class="{PLUGIN_MARKETRES_ODDEVEN} width50"><p class="small">{PHP.L.plu_last_date}: {PLUGIN_MARKETRES_TIME}</p></td>
						<td class="{PLUGIN_MARKETRES_ODDEVEN} textright width50"><p class="small">{PHP.L.plu_section}: {PLUGIN_MARKETRES_CATEGORY}</p></td>
					</tr>
<!-- END: ITEM -->
				</table>
<!-- END: MARKET -->
<!-- BEGIN: FOLIO -->
				<h3>{PHP.L.folio}</h3>
				<table class="cells">
					<tr>
						<td colspan="2" class="coltop">{PHP.L.plu_result}: {PHP.L.folio}
						</td>
					</tr>
<!-- BEGIN: ITEM -->
					<tr>
						<td colspan="2" class="{PLUGIN_FOLIORES_ODDEVEN}">{PLUGIN_FOLIORES_TITLE}</td>
					</tr>
					<tr>
						<td colspan="2" class="{PLUGIN_FOLIORES_ODDEVEN}">{PLUGIN_FOLIORES_TEXT}</td>
					</tr>
					<tr>
						<td class="{PLUGIN_FOLIORES_ODDEVEN} width50"><p class="small">{PHP.L.plu_last_date}: {PLUGIN_FOLIORES_TIME}</p></td>
						<td class="{PLUGIN_FOLIORES_ODDEVEN} textright width50"><p class="small">{PHP.L.plu_section}: {PLUGIN_FOLIORES_CATEGORY}</p></td>
					</tr>
<!-- END: ITEM -->
				</table>
<!-- END: FOLIO -->
<!-- BEGIN: PAGES -->
				<h3>{PHP.L.Pages}</h3>
				<table  id="search" class="cells">
					<tr>
						<td colspan="2" class="coltop">{PHP.L.plu_result}: {PHP.L.plu_tabs_pag}
						</td>
					</tr>
<!-- BEGIN: ITEM -->
					<tr>
						<td colspan="2" class="{PLUGIN_PR_ODDEVEN}">{PLUGIN_PR_TITLE}</td>
					</tr>
					<tr>
						<td colspan="2" class="uk-text-light {PLUGIN_PR_ODDEVEN}">{PLUGIN_PR_TEXT}</td>
					</tr>
					<tr>
						<td class="{PLUGIN_PR_ODDEVEN} width50"><p class="small">{PHP.L.plu_last_date}: {PLUGIN_PR_TIME}</p></td>
						<td class="{PLUGIN_PR_ODDEVEN} textright width50"><p class="small">{PHP.L.plu_section}: {PLUGIN_PR_CATEGORY}</p></td>
					</tr>
<!-- END: ITEM -->
				</table>
<!-- END: PAGES -->

<!-- BEGIN: FORUMS -->
				<h3>{PHP.L.Forums}</h3>
				<table class="cells">
					<tr>
						<td colspan="2" class="coltop">{PHP.L.plu_result}: {PHP.L.plu_tabs_frm}
						</td>
					</tr>
<!-- BEGIN: ITEM -->
					<tr>
						<td colspan="2" class="{PLUGIN_FR_ODDEVEN}">{PLUGIN_FR_TITLE}</td>
					</tr>
					<!-- IF {PLUGIN_FR_TEXT} --><tr>
						<td colspan="2" class="{PLUGIN_FR_ODDEVEN}">{PLUGIN_FR_TEXT}</td>
					</tr><!-- ENDIF -->
					<tr>
						<td class="{PLUGIN_FR_ODDEVEN} width50"><p class="small">{PHP.L.plu_last_date}: {PLUGIN_FR_TIME}</p></td>
						<td class="{PLUGIN_FR_ODDEVEN} textright width50"><p class="small">{PHP.L.plu_section}: {PLUGIN_FR_CATEGORY}</p></td>
					</tr>
<!-- END: ITEM -->
				</table>

<!-- END: FORUMS -->
<!-- END: RESULTS -->
		<ul class="uk-pagination uk-flex-center" uk-margin>
			{PLUGIN_PAGEPREV}{PLUGIN_PAGENAV}{PLUGIN_PAGENEXT}
		</ul>


	</div>
</div>
<!-- END: MAIN -->