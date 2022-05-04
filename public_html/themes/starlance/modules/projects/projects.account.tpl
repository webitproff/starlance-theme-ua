<!-- BEGIN: PROJECTS-->
		<div class="uk-text-center uk-margin">
			<h4 class="uk-heading-bullet uk-text-uppercase uk-text-bold uk-link-text"><span uk-tooltip="{PHP.L.Prj_Depart_title}">{PHP.L.Prj_Depart_Name}</span> <span class="uk-text-muted">Последние добавленные</span></h4>
		</div>

					<div id="listprojects">
						<div class="uk-container uk-margin-top">
						<!-- BEGIN: PRJ_ROWS -->
							<div class="uk-card uk-background-default uk-card-body uk-card-small uk-border-rounded uk-margin-bottom">
								<!-- IF {PHP.usr.id} == {PRJ_ROW_OWNER_ID} OR {PHP.usr.isadmin} -->
								<div class="uk-position-small uk-position-top-right uk-position-z-index">
									<a class="uk-icon-button uk-button-danger uk-icon" uk-icon="icon: cog; ratio: 1.5"></a>
								</div>
									<div uk-dropdown="mode: click; animation: uk-animation-slide-left;">
										<ul class="uk-nav uk-dropdown-nav uk-list uk-list-divider">
											<li><a uk-tooltip="{PHP.L.Edit}" class="uk-margin-right uk-text-danger uk-icon" href="{PRJ_ROW_ID|cot_url('projects','m=edit&id='$this)}">{PHP.L.Edit}</a></li>
										<!-- IF {PRJ_ROW_STATE} != 2 -->
											<li><a href="{PRJ_ROW_HIDEPROJECT_URL}" class="uk-link-text">{PRJ_ROW_HIDEPROJECT_TITLE}</a></li> 
											<!-- IF {PRJ_ROW_PERFORMER} -->
											<li><a href="{PRJ_ROW_REALIZEDPROJECT_URL}" class="uk-link-text">{PRJ_ROW_REALIZEDPROJECT_TITLE}</a></li>					
											<!-- ENDIF -->
										<!-- ENDIF -->									
										</ul>
									</div>
								<!-- ENDIF -->	
								<div class="uk-visible-toggle">
									<div class="uk-grid-divider uk-grid-small" uk-grid="">
										<div class="uk-width-expand@m">
											<div uk-grid>
												<div class="uk-width-3-4@m">
														<h2 class="uk-text-large uk-text-light">
															<a href="{PRJ_ROW_URL}">{PRJ_ROW_SHORTTITLE}</a>
														</h2>
												</div>
												<div class="uk-text-right uk-width-1-4@m uk-visible@m">
													<!-- <img uk-tooltip="Безопасная сделка" src="themes/{PHP.theme}/img/minisbr.svg" width="32" height="32" title="" alt="Безопасная сделка"> -->
													<!-- IF {PHP.cot_plugins_active.paypro} AND {PRJ_ROW_FORPRO} -->
													<label uk-tooltip="Только c PRO аккаунтом" class="uk-label uk-label-danger">PRO</label>
													<!-- ENDIF -->
												</div>
											</div>
											<p class="uk-text-small uk-margin-remove-top">
												{PRJ_ROW_SHORTTEXT|strip_tags($this)}
											</p>
											<hr class="uk-divider-icon uk-visible@m">
											<div class="uk-visible@m" uk-grid="">
												<div>
													{PRJ_ROW_COUNTRY} {PRJ_ROW_REGION} {PRJ_ROW_CITY}
												</div>
												<div>
													<a href="{PRJ_ROW_CATURL}" uk-tooltip="{PHP.L.Category}">{PRJ_ROW_CATTITLE}</a>
												</div>
												<div>
													<!-- IF {PRJ_ROW_TYPE} --><span uk-tooltip="Тип проекта" class="">{PRJ_ROW_TYPE}</span><!-- ENDIF -->
												</div>
											</div>
											<div class="uk-hidden@m">
													<!-- IF {PHP.cot_plugins_active.paypro} AND {PRJ_ROW_FORPRO} -->
													<span uk-tooltip="Только c PRO аккаунтом" class="uk-label uk-label-danger">PRO</span>
													<!-- ENDIF -->
											</div>
										</div>
										<div class="uk-width-1-4@m">
											<div class="uk-grid-small uk-flex-middle" uk-grid>
												<div class="uk-width-auto">
													<!-- IF {PRJ_ROW_OWNER_AVATAR_SRC} -->
													<img class="uk-border-rounded" width="50" height="50" alt="{PRJ_ROW_OWNER_NICKNAME}" src="{PRJ_ROW_OWNER_AVATAR_SRC}">
													<!-- ELSE -->
													<img class="uk-border-rounded" width="50" height="50" alt="{PRJ_ROW_OWNER_NICKNAME}" src="themes/{PHP.theme}/img/avatar.png">
													<!-- ENDIF -->
												</div>
												<div class="uk-width-expand">
													<h6 class="uk-margin-remove-bottom uk-text-truncate">
													<!-- IF {PRJ_ROW_OWNER_FIRST_SECOND_NAME} -->
														<a class="uk-link-text" href="{PRJ_ROW_OWNER_DETAILSLINK}">
														{PRJ_ROW_OWNER_FIRST_SECOND_NAME}
														<!-- ELSE -->
														[{PRJ_ROW_OWNER_NICKNAME}]
														</a>
													<!-- ENDIF -->
													</h6>
													<div class="uk-text-meta uk-margin-remove-top">
														<span><a class="uk-link" href="{PRJ_ROW_OWNER_DETAILSLINK}#tab_reviews">{PRJ_ROW_OWNER_REVIEWS_SUMM} отзывов</a></span>
														<br>
														<time datetime="{PRJ_ROW_DATE}">{PRJ_ROW_DATE_STAMP|cot_date('j F Y', $this)}</time>
													</div>
												</div>
											</div>
											<div class="uk-margin-top uk-text-center">
												<div class="uk-margin-small uk-text-center">
												<span class="uk-text-success">{PHP.L.avaleble_money}</span><br>
												<!-- IF {PRJ_ROW_COST} > 0 -->
												<span class="uk-badge uk-padding-small">{PRJ_ROW_COST} {PHP.cfg.payments.valuta}</span>
												<!-- ENDIF -->
												</div>
												<div>
												<span class="uk-text-danger" uk-tooltip="{PHP.L.offers_count}" uk-icon="icon: commenting"> {PRJ_ROW_OFFERS_COUNT|cot_declension($this, '')}</span>

												</div>
												
												<!-- IF {PHP.usr.maingrp} == 4 -->
													<a  class="uk-button uk-button-small uk-button-default" href="{PRJ_ROW_OFFERS_ADDOFFER_URL}">
													<span uk-tooltip="Предложить свои услуги">{PHP.L.offers_ostavit_predl}</span></a>
													<!-- ELSE -->
													<a class="uk-button uk-button-small uk-button-linear" href="{PRJ_ROW_URL}">
													<span uk-tooltip="{PRJ_ROW_SHORTTITLE}">{PHP.L.More}</span></a>
												<!-- ENDIF -->
												
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- END: PRJ_ROWS -->
						</div>
					</div>
		<div class="uk-margin-top uk-text-center">
			<a class="uk-button uk-button-primary" href="{PHP|cot_url('projects')}" uk-tooltip="{PHP.L.Prj_Depart_Name}">Все задания</a>
		</div>

<!-- END: PROJECTS -->