<!-- BEGIN: MAIN -->
      <!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
	  <hr>
      <div class="uk-margin-remove-vertical uk-alert-primary" uk-alert>
        <a class="uk-alert-close" uk-close></a>
        <p>Расположение файла, формирующего шаблон страницы:</p>
        <div class="uk-panel uk-text-break uk-text-secondary"><span class="uk-text-danger uk-margin-small-right" uk-icon="arrow-down"></span>themes/starlance/modules/projects/<code>projects.offers.tpl</code></div>
      </div>
      <!-- ENDIF -->
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
<!-- IF {PRJ_PERFORMER_ID} > 0 -->
<div class="uk-panel uk-border-rounded uk-padding-small starlance-bg-darkgreenblue uk-light uk-margin-bottom">
	<p class="uk-text-center"><span class="uk-button uk-button-warning uk-button-small">{PHP.L.offers_vibran_ispolnitel}!</span></p>
	<div class="uk-comment-header">
		<div class="uk-grid-medium uk-flex-middle" uk-grid>
			<div class="uk-width-auto">
			<!-- IF {PRJ_PERFORMER_AVATAR_SRC} -->
				<img class="uk-comment-avatar uk-border-rounded" src="{PRJ_PERFORMER_AVATAR_SRC}" width="80" height="80" alt="">
			<!-- ENDIF -->
			</div>
			<div class="uk-width-expand">
				<h4 class="uk-comment-title uk-margin-remove uk-light">{PRJ_PERFORMER_NAME}</h4>
				<div class="uk-comment-meta uk-margin-remove-top">
					<!-- IF {PRJ_PERFORMER_TEXT} -->
					<span class="uk-text-muted">О себе: </span><span class="uk-light">{PRJ_PERFORMER_TEXT}</span>  
					<!-- ENDIF -->
				</div>
			</div>
		</div>
	</div>
</div>

<!-- ENDIF -->
<!-- IF {PHP|cot_auth('plug', 'attacher', 'W')} -->
<div class="uk-card uk-card-default uk-card-small uk-card-body uk-margin-bottom uk-border-rounded">
<div class="uk-alert" uk-alert>
<h4 class="">Форма прикрепления и прикреплённых файлов, отображается только если:</h4>
<hr>
<ul class="uk-list uk-list-line">
	<li>Назначен исполнитель, статус проекта не реализован. Видят заказчик и исполнитель.</li>
	<li>Нет исполнителя, но есть прикрепленные файлы от предыдущего исполнителя (после отказа). Видит заказчик.</li>
	<li>Выбран исполнитель, проект отмечен как реализованный. Видит заказчик при наличии файлов.</li>
</ul>
<hr>
Так как форма предназначена для прикрепления файлов, видимых только заказчику и исполнителю, они могут оба видеть всё, что прикреплено в форму (если условие 1), могут удалять свои файлы, но не могут удалить файлы друг друга. Это подстраховка для обеих сторон.
</div>
<hr class="uk-divider-icon">
{PHP.item.item_id|att_performer_attach($this,'all',2)}
</div>
<!-- ENDIF -->
<!-- BEGIN: PROJECTFORPRO -->
<div class="uk-alert-warning" uk-alert>{PHP.L.paypro_warning_onlyforpro}</div>
<!-- END: PROJECTFORPRO -->

<!-- BEGIN: OFFERSLIMITEMPTY -->
<div class="uk-alert-warning" uk-alert>{PHP.L.paypro_warning_offerslimit_empty}</div>
<!-- END: OFFERSLIMITEMPTY -->

<div id="offers">
<div class="uk-card uk-card-default uk-card-small uk-card-body uk-margin-bottom uk-border-rounded">	
	<h4 class="uk-heading-bullet uk-text-light">{PHP.L.offers_offers} ({ALLOFFERS_COUNT})</h4>
<!-- IF {ALLOFFERS_COUNT} == 0 -->
<div class="uk-margin-bottom uk-border-rounded uk-alert-warning" uk-alert>
	{PHP.L.offers_empty}
</div>

<!-- ENDIF -->
	<!-- BEGIN: ROWS -->
			<div class="uk-comment uk-margin-bottom uk-border-rounded uk-background-muted uk-padding-small">
				<div class="uk-comment-header uk-margin">
					<div class="uk-grid-medium uk-flex-middle" uk-grid>
						<div class="uk-width-auto">
						<!-- IF {OFFER_ROW_OWNER_AVATAR_SRC} -->
							<img class="uk-comment-avatar uk-border-rounded" src="{OFFER_ROW_OWNER_AVATAR_SRC}" width="80" height="80" alt="">
						<!-- ENDIF -->
						</div>
						<div class="uk-width-expand">
							<h4 class="uk-comment-title uk-margin-remove">{OFFER_ROW_OWNER_NAME}</h4>
							<ul class="uk-comment-meta uk-subnav uk-subnav-divider uk-margin-remove-top">
								<li>{OFFER_ROW_DATE_STAMP|cot_date('j F Y, H:i', $this)}</li>
								<!-- IF {OFFER_ROW_OWNER_ISPRO} -->
								<li><span class="label label-success">PRO</span></li> 
								<!-- ENDIF -->
								<li>{OFFER_ROW_EDIT}</li>
								<li><span class="label label-info">{OFFER_ROW_OWNER_USERPOINTS}</span></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="uk-comment-body">
<!-- IF {PHP.cot_plugins_active.offereditor} -->

<!-- IF {PHP.usr.id} == {OFFER_ROW_OWNER_ID} OR {PHP.usr.isadmin} -->
<div class="pull-right">
<a href="{OFFER_ROW_OFFEREDITOR_EDIT_URL}" class="ajax" rel="get-offers">{PHP.L.offereditor_edit}</a> |
<!-- IF {OFFER_ROW_STATUS} != 'canceled' --><a href="{OFFER_ROW_OFFEREDITOR_CANCEL_URL}">{PHP.L.offereditor_cancel}</a> | <!-- ENDIF -->
<a href="{OFFER_ROW_OFFEREDITOR_DELETE_URL}">{PHP.L.offereditor_delete}</a>
</div>
<!-- ENDIF -->

<!-- IF {OFFER_ROW_STATUS} == 'canceled' -->
<div class="text-warning">{PHP.L.offereditor_status_canceled}</div>
<!-- ENDIF -->

<!-- ENDIF -->
	<p class="text">{OFFER_ROW_TEXT}</p>
	<p class="cost">
		<!-- IF {OFFER_ROW_COSTMAX} > {OFFER_ROW_COSTMIN} AND {OFFER_ROW_COSTMIN} != 0 -->
		{PHP.L.offers_budget}: {PHP.L.offers_ot} {OFFER_ROW_COSTMIN}
		{PHP.L.offers_do} {OFFER_ROW_COSTMAX} {PHP.cfg.payments.valuta}
		<!-- ENDIF -->
		<!-- IF {OFFER_ROW_COSTMAX} == {OFFER_ROW_COSTMIN} AND {OFFER_ROW_COSTMIN} != 0 OR {OFFER_ROW_COSTMAX} == 0 AND {OFFER_ROW_COSTMIN} != 0 -->
		{PHP.L.offers_budget}: {OFFER_ROW_COSTMIN} {PHP.cfg.payments.valuta}
		<!-- ENDIF -->
	</p>
	<p class="time">
		<!-- IF {OFFER_ROW_TIMEMAX} > {OFFER_ROW_TIMEMIN} AND {OFFER_ROW_TIMEMIN} != 0 -->
		{PHP.L.offers_sroki}: {PHP.L.offers_ot} 
		{OFFER_ROW_TIMEMIN} {PHP.L.offers_do} {OFFER_ROW_TIMEMAX} {OFFER_ROW_TIMETYPE}
		<!-- ENDIF -->
		<!-- IF {OFFER_ROW_TIMEMAX} == {OFFER_ROW_TIMEMIN} AND {OFFER_ROW_TIMEMIN} != 0 OR {OFFER_ROW_TIMEMAX} == 0 AND {OFFER_ROW_TIMEMIN} != 0 -->
		{PHP.L.offers_sroki}: {OFFER_ROW_TIMEMIN} {OFFER_ROW_TIMETYPE}
		<!-- ENDIF -->
	</p>
				</div>
			</div>
		


					<!-- BEGIN: POSTS -->
					<a class="uk-button uk-button-primary" href="#collapsePosts{PHP.offer.offer_id}" uk-toggle><span class="uk-text-middle">{PHP.L.offers_posts_title}</span><span uk-icon="triangle-down" class="uk-margin-small-left uk-icon"></span></a>
					<div class="uk-animation-scale-up uk-margin" id="collapsePosts{PHP.offer.offer_id}" hidden>
						<div id="projectsposts" class="">
							<!-- BEGIN: POSTS_ROWS -->
							<article class="uk-comment uk-comment-primary uk-margin-bottom uk-border-rounded">
								<header class="uk-comment-header">
									<div class="uk-grid-medium uk-flex-middle" uk-grid>
										<div class="uk-width-auto">
										<!-- IF {POST_ROW_OWNER_AVATAR_SRC} -->
											<img class="uk-comment-avatar uk-border-rounded" src="{POST_ROW_OWNER_AVATAR_SRC}" width="80" height="80" alt="">
										<!-- ENDIF -->
										</div>
										<div class="uk-width-expand">
											<h4 class="uk-comment-title uk-margin-remove"><a class="uk-link-reset" href="#">{POST_ROW_OWNER_NAME}</a></h4>
											<ul class="uk-comment-meta uk-subnav uk-subnav-divider uk-margin-remove-top">
												<li>{POST_ROW_DATE_STAMP|cot_date('j F Y, H:i', $this)}</li>
												<li>{POST_ROW_EDIT_URL}</li>
											</ul>
										</div>
									</div>
								</header>
								<div class="uk-comment-body">
									<p>{POST_ROW_TEXT}</p>
									<p>{POST_ROW_EDIT_URL}</p>
								</div>
							</article>

							<!-- END: POSTS_ROWS -->

							<!-- BEGIN: POSTFORM -->
							<div class="postform customform m-t-2" id="postform{ADDPOST_OFFERID}">
								<form action="{ADDPOST_ACTION_URL}" method="post" class="uk-form-stacked uk-margin-large">
								<p class="uk-heading-bullet uk-link-text">Сообщение:</p>
								<div class="uk-margin">
									<label class="uk-form-label"></label>
									<div class="uk-form-controls">
										{ADDPOST_TEXT}
									</div>
								</div>
								<div class="uk-margin uk-text-center"> 
									<input type="submit" name="submit" class="uk-button uk-button-success" value="{PHP.L.Submit}" />
								</div> 
									
								</form>
							</div>
							<!-- END: POSTFORM -->
						</div>
					</div>
					<!-- END: POSTS -->
	
		<!-- BEGIN: CHOISE -->

				<!-- IF {OFFER_ROW_CHOISE} != "refuse" -->
				<a class="uk-button uk-button-warning" href="#modal-refuse" uk-toggle>{PHP.L.offers_otkazat}</a>
				<div id="modal-refuse" uk-modal>
					<div class="uk-modal-dialog uk-margin-auto-vertical">
						<button class="uk-modal-close-default" type="button" uk-close></button>
						<div class="uk-modal-header">
							<h2 class="uk-modal-title">Внимание!</h2>
						</div>
						<div class="uk-modal-body">
							<p>Вы уверены, что хотите отказаться от сотрудничества с этим юристом?</p>
						</div>
						<div class="uk-modal-footer uk-text-right">
							<button class="uk-button uk-button-default uk-modal-close" type="button">Еще подумаю...</button>
							<a href="{OFFER_ROW_REFUSE}" class="uk-button uk-button-danger">{PHP.L.offers_otkazat} !</a>
						</div>
					</div>
				</div>
				<!-- ENDIF -->
				<!-- IF {OFFER_ROW_CHOISE} != "performer" AND {PERFORMER_USERID} == "" -->
				<a href="{OFFER_ROW_SETPERFORMER}" class="uk-button uk-button-success">{PHP.L.offers_ispolnitel}</a> 
				<!-- ENDIF -->
				<!-- IF {OFFER_ROW_CHOISE} != "refuse" AND {PHP.cot_plugins_active.sbr} -->
				<a href="{OFFER_ROW_SBRCREATELINK}" class="uk-button uk-button-primary">{PHP.L.sbr_createlink}</a> 
				<!-- ENDIF -->

			<!-- IF {OFFER_ROW_CHOISE} == "refuse" -->
			<div class="uk-alert-dander" uk-alert>
				<p class="uk-text-dander">{PHP.L.offers_otkazali}!</p>
			</div>
			<!-- ENDIF -->
			<!-- IF {OFFER_ROW_CHOISE} == "performer" -->
			<div class="uk-alert-success" uk-alert>
				<p>{PHP.L.offers_vibran_ispolnitel}!</p>
			</div>
			<!-- ENDIF -->

		<!-- END: CHOISE -->

	<!-- END: ROWS -->
</div>
</div>					
<!-- IF {OFFERSNAV_COUNT} > 0 -->
<nav><ul class="pagination">{OFFERSNAV_PAGES}</ul></nav>
<!-- ENDIF -->



<!-- BEGIN: ADDOFFERFORM -->
<div class="uk-card uk-card-default uk-card-small uk-card-body uk-margin-bottom uk-border-rounded">	
<h4 class="uk-heading-bullet uk-link-text">{PHP.L.offers_ostavit_predl}</h4>

		<form action="{OFFER_FORM_ACTION_URL}" method="post" enctype="multipart/form-data" class="uk-form-stacked uk-margin-large">
			<p class="uk-heading-bullet uk-link-text">{PHP.L.offers_budget} (<span class="uk-text-warning uk-text-bold">{PHP.cfg.payments.valuta}</span>):</p>
			<div uk-grid>
				<div class="uk-width-1-2@m">
					<div class="uk-margin">
						<label class="uk-form-label">{PHP.L.offers_ot}</label>
						<div class="uk-form-controls">
							{OFFER_FORM_COSTMIN}
						</div>
					</div>
				</div>
				<div class="uk-width-1-2@m">
					<div class="uk-margin">
						<label class="uk-form-label">{PHP.L.offers_do}</label>
						<div class="uk-form-controls">
							{OFFER_FORM_COSTMAX}
						</div>
					</div>
				</div>
			</div>
			<p class="uk-heading-bullet uk-link-text">{PHP.L.offers_sroki}:</p>
			<div uk-grid>
				<div class="uk-width-1-3@m">
					<div class="uk-margin">
						<label class="uk-form-label">{PHP.L.offers_ot}</label>
						<div class="uk-form-controls">
							{OFFER_FORM_TIMEMIN}
						</div>
					</div>
				</div>
				<div class="uk-width-1-3@m">
					<div class="uk-margin">
						<label class="uk-form-label">{PHP.L.offers_do}</label>
						<div class="uk-form-controls">
							{OFFER_FORM_TIMEMAX}
						</div>
					</div>
				</div>
				<div class="uk-width-1-3@m">
					<div class="uk-margin">
						<label class="uk-form-label">Период</label>
						<div class="uk-form-controls">
							{OFFER_FORM_TIMETYPE}
						</div>
					</div>
				</div>
			</div>
			<div class="uk-margin">
				<p class="uk-heading-bullet uk-link-text">{PHP.L.offers_text_predl}:</p>
				<div class="uk-form-controls">
					{OFFER_FORM_TEXT}
				</div>
			</div>
			<div class="uk-margin">
				<div class="uk-form-controls">
					{OFFER_FORM_HIDDEN}
				</div>
			</div>
			<div class="uk-margin uk-text-center"> 
				<input type="submit" name="submit" class="uk-button uk-button-default" value="{PHP.L.offers_add_predl}" />
			</div> 
		</form>
</div>
<!-- END: ADDOFFERFORM -->

<!-- IF {PHP.usr.id} == 0 -->
<div class="uk-card uk-card-default uk-card-small uk-card-body uk-margin-bottom uk-border-rounded">	
<div class="uk-alert-warning" uk-alert>
	{PHP.L.offers_for_guest}
</div>
</div>
<!-- ENDIF -->
<!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
<div class="uk-margin-remove-vertical uk-alert-primary" uk-alert>
    <a class="uk-alert-close" uk-close></a>
    <p>Назавние файла, формирующего шаблон страницы:</p>
	<div class="uk-panel uk-text-break uk-text-secondary">projects.offers.tpl</div>
</div>
<!-- ENDIF -->
<!-- END: MAIN -->


