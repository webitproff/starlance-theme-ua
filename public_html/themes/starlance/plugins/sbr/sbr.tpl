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
			<div id="sidebar" class="uk-width-1-5@l uk-width-1-4@m uk-padding-small uk-padding-remove-top uk-animation-slide-left uk-background-secondary">
				<ul class="uk-nav-default uk-list uk-list-divider uk-light">
					<li class="uk-nav-header uk-margin-small-top<!-- IF !{PHP.num} --> uk-active<!-- ENDIF -->"><a href="{SBR_URL}"><span class="uk-margin-small-right" uk-icon="info"></span><span class="uk-text-middle">{PHP.L.sbr_nav_info1}</span></a>
					<hr class="uk-margin-small-top">
					<span class="uk-text-center uk-margin-remove">{PHP.L.sbr_nav_info2}</span>
					</li>
					<!-- BEGIN: STAGENAV_ROW -->
					<li<!-- IF {PHP.num} == {STAGENAV_ROW_NUM} --> class=" uk-active"<!-- ENDIF -->>
						<a href="{STAGENAV_ROW_URL}">
						<span class="uk-text-middle <!-- IF {STAGENAV_ROW_STATUS} == 'done' -->uk-text-uppercase uk-text-success<!-- ENDIF -->">{PHP.L.sbr_nav_stagenum} {STAGENAV_ROW_NUM}</span> 
							<!-- IF {STAGENAV_ROW_STATUS} == 'process' --><span class="uk-margin-small-left" uk-icon="future"></span><!-- ENDIF -->
							<!-- IF {STAGENAV_ROW_STATUS} == 'claim' --><span class="uk-margin-small-left" uk-icon="warning"></span><!-- ENDIF -->
							<!-- IF {STAGENAV_ROW_STATUS} == 'done' --><span class="uk-margin-small-left" uk-icon="happy"><!-- ENDIF -->
						</a>
					<hr class="uk-margin-small-top">
					<span class="uk-text-warning uk-margin-remove">{STAGENAV_ROW_TITLE}</span>
					</li>
					<!-- END: STAGENAV_ROW -->
				</ul>
				<hr class="uk-margin">
				<li><a class="uk-color-f5" href="{PHP|cot_url('sbr')}"><img class="uk-margin-small-right" width="27" height="27" alt="" uk-img="data-src: {PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/icon/022-shield-1.svg" uk-svg="uk-preserve"><span class="uk-text-middle uk-text-uppercase">{PHP.L.sbr_mydeals}</span></a></li>
				<hr class="uk-divider-icon uk-margin-remove">
				<ul class="uk-nav-default uk-list uk-list-divider uk-light" uk-nav>
					<li class="uk-nav-header"><a uk-tooltip="«{PHP.L.sbr}» - Руководство пользователя по защищенной сделке читать в новой вкладке" class="uk-animation-toggle" tabindex="0" href="{PHP.cfg.mainurl}/user-guide/17"><img class="uk-margin-small-right  uk-animation-shake" width="27" height="27" alt="" uk-img="data-src: themes/{PHP.theme}/img/icon/question.svg" uk-svg="uk-preserve"><span class="uk-text-middle">Как это работает ?</span></a></li>
				</ul>
			</div>
			<div class="uk-width-expand uk-background-muted">
				<section class="uk-section uk-padding-remove" uk-height-viewport="offset-top: true">
					<div class="uk-container uk-container-expand uk-margin-top">
						<h3 class="uk-heading-bullet">{SBR_SHORTTITLE}</h3>						
					</div>
<!-- BEGIN: SBR -->	

<!-- BEGIN: INFO -->

<div class="uk-container uk-container-expand uk-margin-top">
	<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
		<h3>{PHP.L.sbr_info}</h3>
		<table class="uk-table uk-table-striped uk-table-hover uk-table-small uk-table-middle uk-table-divider">
			<tr>
				<td class="uk-width-1-2@m"><span>ID защищенной сделки в системе</span></td>
				<td class="uk-width-1-2@m uk-text-right">№ {SBR_ID}</td>
			</tr>
			<tr>
				<td class="uk-width-1-2@m"><span>Дата создания</span></td>
				<td class="uk-width-1-2@m uk-text-right">{SBR_CREATEDATE_STAMP|date('d.m.Y H:i', $this)}</td>
			</tr>

			<tr>
				<td class="uk-width-1-2@m"><span>{PHP.L.sbr_employer}</span></td>
				<td class="uk-width-1-2@m uk-text-nowrap uk-text-right"><a class="uk-text-uppercase uk-link-text" href="{SBR_EMPLOYER_DETAILSLINK}" target="blank">{SBR_EMPLOYER_NICKNAME}</a></td>
			</tr>
			<tr>
				<td class="uk-width-1-2@m"><span>{PHP.L.sbr_performer}</span></td>
				<td class="uk-width-1-2@m uk-text-nowrap uk-text-right"><a class="uk-text-uppercase uk-link-text" href="{SBR_PERFORMER_DETAILSLINK}" target="blank">{SBR_PERFORMER_NICKNAME}</a></td>
			</tr>
			<tr>
				<td class="uk-width-1-2@m"><span>{PHP.L.sbr_calc_summ}</span></td>
				<td class="uk-width-1-2@m uk-text-right"><span id="summ">{SBR_COST}</span> {PHP.cfg.payments.valuta}</td>
			</tr>
			<tr>
				<td class="uk-width-1-2@m"><span>{PHP.L.sbr_calc_tax}</span></td>
				<td class="uk-width-1-2@m uk-text-right"><span id="taxsumm">{SBR_TAX}</span> {PHP.cfg.payments.valuta}</td>
			</tr>
			<tr>
				<td class="uk-width-1-2@m"><span>{PHP.L.sbr_calc_total}</span></td>
				<td class="uk-width-1-2@m uk-text-right"><span id="total">{SBR_TOTAL}</span> {PHP.cfg.payments.valuta}</td>
			</tr>
		</table>
	</div>
	<div class="uk-card uk-card-default uk-padding-small uk-border-rounded uk-margin-top">	
		<div id="sbrstageslist">
			<!-- BEGIN: STAGE_ROW -->
			<ul uk-accordion="multiple: true">
				<li<!-- IF {STAGE_ROW_NUM} == '1' --> class="uk-open"<!-- ENDIF -->>
					<a class="uk-accordion-title" href="#"><span class="uk-text-danger">{PHP.L.sbr_stage} <span class="stagenum">{STAGE_ROW_NUM}</span></span>: {STAGE_ROW_TITLE}</a>
					<div class="uk-accordion-content">
		<table class="uk-table uk-table-striped uk-table-hover uk-table-small uk-table-middle uk-table-divider">
			<tr>
				<td class="uk-width-1-2@m"><span>{PHP.L.sbr_stagecost}:</span></td>
				<td class="uk-width-1-2@m uk-text-right"><span>{STAGE_ROW_COST}</span> {PHP.cfg.payments.valuta}</td>
			</tr>
			<tr>
				<td class="uk-width-1-2@m"><span>{PHP.L.sbr_stagedays}:</span></td>
				<td class="uk-width-1-2@m uk-text-right"><span>{STAGE_ROW_DAYS|cot_declension($this, 'Days')}</span></td>
			</tr>
		</table>
<h4 class="uk-text-warning uk-margin-remove">{PHP.L.sbr_stagetext}</h4>
						<p class="uk-text-secondary uk-text-light">{STAGE_ROW_TEXT}</p>
						<!-- BEGIN: FILES -->	
						<b>{PHP.L.sbr_stagefiles}</b>
						<ul class="uk-list uk-list-divider fileslist">
							<!-- BEGIN: FILE_ROW -->
							<li>
								<a href="{FILE_ROW_URL}" target="blank" download>{FILE_ROW_TITLE}</a>
							</li>
							<!-- END: FILE_ROW -->
						</ul>
						<!-- END: FILES -->
					<hr class="uk-divider-icon">
					</div>
				</li>
			</ul>
			<!-- END: STAGE_ROW -->
		</div>
	</div>
		
	<!-- BEGIN: EMPLOYER -->
	
		<!-- IF {SBR_STATUS} == 'new' -->
		<div class="uk-card uk-card-default uk-padding-small uk-border-rounded uk-margin-top">
			<div class="uk-alert-danger" uk-alert>
				<a class="uk-alert-close" uk-close></a>
				<h4 class="uk-heading-bullet"><span class="">{SBR_LOCALSTATUS}</span></h4>
			</div>
		<div class="uk-child-width-expand@s uk-text-center" uk-grid>
			<div>
				<a href="{PHP.id|cot_url('sbr', 'm=edit&id='$this)}" class="uk-button uk-button-warning">{PHP.L.sbr_action_edit}</a>
			</div>
			<div>
				<a href="{PHP.id|cot_url('sbr', 'a=cancel&id='$this)}" class="uk-button uk-button-danger">{PHP.L.sbr_action_cancel}</a>
			</div>
		</div>
		</div>
		<!-- ENDIF -->

		<!-- IF {SBR_STATUS} == 'refuse' -->
		<div class="uk-card uk-card-default uk-padding-small uk-border-rounded uk-margin-top">
			<div class="uk-alert-danger" uk-alert>
				<a class="uk-alert-close" uk-close></a>
				<h4 class="uk-heading-bullet"><span class="">{SBR_LOCALSTATUS}</span></h4>
			</div>
		<div class="uk-child-width-expand@s uk-text-center" uk-grid>
			<div>
				<a href="{PHP.id|cot_url('sbr', 'm=edit&id='$this)}" class="uk-button uk-button-primary">{PHP.L.sbr_action_edit}</a>
			</div>
			<div>
				<a href="{PHP.id|cot_url('sbr', 'a=cancel&id='$this)}" class="uk-button uk-button-danger">{PHP.L.sbr_action_cancel}</a>
			</div>
		</div>
		</div>
		<!-- ENDIF -->

		<!-- IF {SBR_STATUS} == 'confirm' -->
		<div class="uk-card uk-card-default uk-padding-small uk-border-rounded uk-margin-top">
			<div class="uk-alert-danger" uk-alert>
				<a class="uk-alert-close" uk-close></a>
				<h4 class="uk-heading-bullet"><span class="">{SBR_LOCALSTATUS}</span></h4>
			</div>
			<div class="uk-child-width-expand@s uk-text-center" uk-grid>
			<div>
				<a href="{PHP.id|cot_url('sbr', 'a=pay&id='$this)}" class="uk-button uk-button-success">{PHP.L.sbr_action_pay}</a>
			</div>
			<div>
				<a href="{PHP.id|cot_url('sbr', 'a=cancel&id='$this)}" class="uk-button uk-button-danger">{PHP.L.sbr_action_cancel}</a>
			</div>
			</div>
		</div>
		<!-- ENDIF -->
	
		<!-- END: EMPLOYER -->

		<!-- BEGIN: PERFORMER -->
	
		<!-- IF {SBR_STATUS} == 'new' -->
		<div class="uk-card uk-card-default uk-padding-small uk-border-rounded uk-margin-top">
			<div class="uk-alert-danger" uk-alert>
				<a class="uk-alert-close" uk-close></a>
				<h4 class="uk-heading-bullet"><span class="">{SBR_LOCALSTATUS}</span></h4>
			</div>
			<div class="uk-child-width-expand@s uk-text-center" uk-grid>
			<div>
				<a href="{PHP.id|cot_url('sbr', 'a=confirm&id='$this)}" class="uk-button uk-button-success">{PHP.L.sbr_action_confirm}</a>
			</div>
			<div>
				<a href="{PHP.id|cot_url('sbr', 'a=refuse&id='$this)}" class="uk-button uk-button-danger">{PHP.L.sbr_action_refuse}</a>
			</div>
			</div>
		</div>
		<!-- ENDIF -->

		<!-- IF {SBR_STATUS} == 'confirm' -->
		<div class="uk-card uk-card-default uk-padding-small uk-border-rounded uk-margin-top">
			<div class="uk-alert-danger" uk-alert>
				<a class="uk-alert-close" uk-close></a>
				<h4 class="uk-heading-bullet"><span class="">{SBR_LOCALSTATUS}</span></h4>
			</div>
			<a href="{PHP.id|cot_url('sbr', 'a=refuse&id='$this)}" class="uk-button uk-button-danger">{PHP.L.sbr_action_refuse}</a>
		</div>
		<!-- ENDIF -->
	
	<!-- END: PERFORMER -->
	
</div>
<!-- END: INFO -->

<!-- BEGIN: STAGE -->
<div class="uk-container uk-container-expand uk-margin-top">
	<!-- IF {STAGE_BEGIN} > 0 AND {STAGE_STATUS} == 'process' -->
	<div>
		<!-- IF {PHP.role} == 'employer' -->
		<div class="uk-card uk-card-default uk-padding-small uk-border-rounded uk-margin">
			<div class="uk-alert-danger" uk-alert>
				<a class="uk-alert-close" uk-close></a>
				<h4 class="uk-heading-bullet"><span class="">{PHP.L.sbr_stagemenu}</span></h4>
			</div>
			<div class="uk-child-width-expand@s uk-text-center" uk-grid>
			<div>
				<a href="{STAGE_DONE_URL}" class="uk-button uk-button-success">{PHP.L.sbr_action_stagedone}</a>
			</div>
			<div>
				<a href="{STAGE_CLAIM_URL}" class="uk-button uk-button-danger">{PHP.L.sbr_action_claim}</a>
			</div>
			</div>
		</div>
		<!-- ENDIF -->

		<!-- IF {PHP.role} == 'performer' -->
		<div class="uk-card uk-card-default uk-padding-small uk-border-rounded uk-margin">
			<a class="uk-button uk-button-danger" href="{STAGE_CLAIM_URL}">{PHP.L.sbr_action_claim}</a>
		</div>
		<!-- ENDIF -->
	</div>
	<!-- ENDIF -->

	<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
		<h3><span class="uk-text-danger">{PHP.L.sbr_stage} <span class="stagenum">{STAGE_NUM}</span></span>: {STAGE_TITLE} <!-- IF {STAGE_STATUS} == 'done' --><span class="uk-margin-small-left uk-text-warning" uk-icon="happy" uk-tooltip="работа по этапу принята заказчиком"><!-- ENDIF --></h3>
		<table class="uk-table uk-table-striped uk-table-hover uk-table-small uk-table-middle uk-table-divider">

			<!-- IF {STAGE_BEGIN} > 0 AND {STAGE_STATUS} == 'process' -->
			<tr>
				<td class="uk-width-1-2@m"><span>{PHP.L.sbr_stagestart}:</span></td>
				<td class="uk-width-1-2@m uk-text-nowrap uk-text-right">{STAGE_BEGIN|date('d.m.Y H:i:s', $this)}</td>
			</tr>
			<tr>
				<td class="uk-width-1-2@m"><span>{PHP.L.sbr_stageexpiredays}:</span></td>
				<td class="uk-width-1-2@m uk-text-nowrap uk-text-right"><!-- IF {STAGE_EXPIREDATE} > {PHP.sys.now} -->{STAGE_EXPIREDAYS}<!-- ELSE -->{PHP.L.sbr_stageexpired}<!-- ENDIF --></td>
			</tr>
			<!-- ENDIF -->
			<!-- IF {STAGE_STATUS} == 'done' -->
			<tr>
				<td class="uk-width-1-2@m"><span class="uk-text-success">{PHP.L.sbr_stagestart}:</span></td>
				<td class="uk-width-1-2@m uk-text-nowrap uk-text-right">{STAGE_BEGIN|date('d.m.Y H:i:s', $this)}</td>
			</tr>
			<tr>
				<td class="uk-width-1-2@m"><span class="uk-text-success">{PHP.L.sbr_stagedone}:</span></td>
				<td class="uk-width-1-2@m uk-text-nowrap uk-text-right">{STAGE_DONE|date('d.m.Y H:i:s', $this)}</td>
			</tr>
			<!-- ENDIF -->
			<tr>
				<td class="uk-width-1-2@m"><span>{PHP.L.sbr_stagecost}:</span></td>
				<td class="uk-width-1-2@m uk-text-right">{STAGE_COST} {PHP.cfg.payments.valuta}</td>
			</tr>
			<tr>
				<td class="uk-width-1-2@m"><span>{PHP.L.sbr_stagedays}:</span></td>
				<td class="uk-width-1-2@m uk-text-right">{STAGE_DAYS|cot_declension($this, 'Days')}</td>
			</tr>
		</table>
		<h4 class="uk-text-warning uk-margin-remove">{PHP.L.sbr_stagetext}</h4>
		<p class="uk-text-secondary uk-text-light">{STAGE_TEXT}</p>
		<!-- BEGIN: FILES -->	
		<b>{PHP.L.sbr_stagefiles}</b>
		<ol class="uk-list uk-list-divider fileslist">
			<!-- BEGIN: FILE_ROW -->
			<li>
				<a href="{FILE_ROW_URL}" target="blank" download>{FILE_ROW_TITLE}</a>
			</li>
			<!-- END: FILE_ROW -->
		</ol>
		<!-- END: FILES -->
	
	
			


	<!-- IF {STAGE_STATUS} == 'claim' -->
	<div class="alert-danger-full uk-margin-remove-vertical" uk-alert>
		<div class="uk-container">
			<h4 class="uk-text-bold uk-animation-slide-right uk-animation-toggle" tabindex="0">
			<img class="uk-animation-shake uk-margin-small-right" width="36" height="36" alt="" uk-img="data-src: /themes/starlance/img/icon/caution.svg" uk-svg="uk-preserve" >
			<span class="uk-text-middle">{PHP.L.sbr_claim_msg}</span></h4>
			<p>Сделка будет рассмотрена арбитражной комиссией. Как только комиссия примет решение, вы получите уведомление по email.</p>
		</div>
	</div>
	<!-- IF {PHP.usr.isadmin} -->
	<div class="uk-card uk-card-default uk-padding-small uk-border-rounded uk-margin">
		<a class="uk-button uk-button-danger" href="{STAGE_DECISION_URL}">{PHP.L.sbr_claim_decision_button}</a>
	</div>
	<!-- ENDIF -->
	<!-- ENDIF -->

	<!-- IF {STAGE_STATUS} == 'done' -->

	<!-- ENDIF -->
	</div>
</div>
<!-- END: STAGE -->
<hr class="uk-divider-icon">
<!-- BEGIN: POSTS -->		
<div class="uk-container uk-container-expand uk-margin-top">
<div class="uk-card uk-card-default uk-padding-small uk-border-rounded uk-margin-bottom">	
	<h3>{PHP.L.sbr_history}</h3>
<ul class="uk-list uk-list-striped">
	<!-- BEGIN: POST_ROW -->
	<li class="uk-margin-bottom <!-- IF {POST_ROW_TYPE} --> {POST_ROW_TYPE} 111<!-- ENDIF -->">
		
				<!-- IF {POST_ROW_FROM_ID} > 0 -->
				<div class="uk-grid-medium uk-flex-middle" uk-grid>
					<div class="uk-width-auto">
						<!-- IF {POST_ROW_FROM_AVATAR_SRC} -->
						<img class="uk-comment-avatar uk-border-rounded" src="{POST_ROW_FROM_AVATAR_SRC}" width="50" height="50" alt="">
						<!-- ELSE -->
						<img class="uk-comment-avatar uk-border-rounded" src="themes/{PHP.theme}/img/avatar.png" width="50" height="50" alt="">
						<!-- ENDIF -->
					</div>
					<div class="uk-width-expand">
						{POST_ROW_FROM_NAME}
					</div>
				</div>
				<!-- ENDIF -->

							<p class="uk-margin-small-top uk-text-bold">{POST_ROW_DATE}</p>
							<p class="uk-margin-remove uk-text-secondary uk-text-light">{POST_ROW_TEXT}</p>
						
			<!-- IF {PHP.usr.isadmin} AND {POST_ROW_TO_NAME} -->
			{PHP.L.sbr_posts_for}: {POST_ROW_TO_NAME}
			<!-- ENDIF -->

			
			<!-- BEGIN: FILES -->

				<b>{PHP.L.sbr_stagefiles}</b>
				<ol class="fileslist media-list">
					<!-- BEGIN: FILE_ROW -->
					<li class="media">
						<a href="{FILE_ROW_URL}" target="blank">{FILE_ROW_TITLE}</a>
					</li>
					<!-- END: FILE_ROW -->
				</ol>
			<!-- END: FILES -->
			</li>
<!-- END: POST_ROW -->
</ul>



	

	<!-- BEGIN: POSTFORM -->
	<h4>{PHP.L.sbr_posts_add}</h4>
	{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
	<form action="{POST_FORM_ACTION}" method="post" id="addpost" enctype="multipart/form-data">

        <div class="uk-form-controls">
            <textarea name="rposttext" rows="5" class="uk-textarea">{PHP.rposttext}</textarea>
        </div>

		<div class="postfiles">
			<ol class="fileslist">
			</ol>
			<a href="javascript:void(0);" onclick="PostFileAdd(this); return false;">Прикрепить файл</a>
		</div>
		<!-- IF {PHP.usr.isadmin} -->
		<p>{PHP.L.sbr_posts_to}: {POST_FORM_TO}</p>
		<!-- ENDIF -->
		<button class="uk-button uk-button-primary">{PHP.L.Submit}</button>
	</form>
	<!-- END: POSTFORM -->
</div>
</div>
<script>
	
	function PostFileAdd(obj)
	{
		$(obj).parent().children('.fileslist').append('<li>\n\
			<a href="javascript:void(0);" onclick="PostFileRemove(this); return false;" class="pull-right"><i class="icon icon-remove"></i></a>\n\
			<input type="file" name="rpostfiles[]" />\n\
		</li>');
	}
	
	function PostFileRemove(obj)
	{
		$(obj).parent().remove();
	}

</script>

<!-- END: POSTS -->

<!-- END: SBR -->

<!-- BEGIN: STAGEDONE -->
<div class="uk-container uk-container-expand uk-margin-top">
	<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
		<h3><span class="uk-text-danger">{PHP.L.sbr_stage_done_title}</span></h3>
		{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
		<form action="{STAGEDONE_FORM_ACTION}" method="post" id="stagedoneform" class="customform">
			<div class="uk-margin">
				<label class="uk-form-label">Ваше сообщение, с подтверждением принятия работы по данному этапу защищенной сделки. После этого средства зарезервированые на счету сайту будут выплачены исполнителю</label>
				<div class="uk-form-controls">
				   {STAGEDONE_FORM_TEXT}
				</div>
			</div>
			<div class="uk-margin">
				<button class="uk-button uk-button-primary">{PHP.L.Submit}</button>
			</div>
		</form>
	</div>
</div>
<!-- END: STAGEDONE -->

<!-- BEGIN: CLAIM -->
<div class="uk-container uk-container-expand uk-margin-top">
	<div class="uk-card uk-card-default uk-padding-small uk-border-rounded">
		<h3><span class="uk-text-danger">{PHP.L.sbr_claim_add_title}</span></h3>
		{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
		<form action="{CLAIM_FORM_ACTION}" method="post" id="claimform" class="customform">
			<div class="uk-margin">
				<p class="uk-margin-remove uk-text-danger uk-text-light">Ваше сообщение должно содержать основания, которые четко указывают на необходимость расмотрения Арбитражной Комиссией споров между участниками защищенной сделки.</p>
				<p class="uk-margin-remove uk-link-text uk-text-light">Максимально подробно изложите суть вашей жалобы в Арбитраж, нумерованным списком и в хронологическом порядке указывая на факты, - кто, что, где, когда, как...</p>
				<div class="uk-form-controls uk-margin">
				   {CLAIM_FORM_TEXT}
				</div>
			</div>
			<div class="uk-margin">
				<button class="uk-button uk-button-primary">{PHP.L.Submit}</button>
			</div>
		</form>
	</div>
</div>
<!-- END: CLAIM -->

				<!-- BEGIN: DECISION -->
				<h1>{PHP.L.sbr_claim_decision_title}</h1>
				{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
				<form action="{DECISION_FORM_ACTION}" method="post" id="decisionform" class="customform">
					<table class="table">
						<tr>
							<td colspan="2">{DECISION_FORM_TEXT}</td>
						</tr>
						<tr>
							<td class="span3">{PHP.L.sbr_claim_decision_pay_performer}:</td>
							<td>{DECISION_FORM_PAYPERFORMER} {PHP.cfg.payments.valuta}</td>
						</tr>
						<tr>
							<td class="span3">{PHP.L.sbr_claim_decision_pay_employer}:</td>
							<td>{DECISION_FORM_PAYEMPLOYER} {PHP.cfg.payments.valuta}</td>
						</tr>
					</table>
					<button class="btn btn-danger">{PHP.L.Submit}</button>
				</form>
				<!-- END: DECISION -->
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
	<div class="uk-panel uk-text-break uk-text-secondary">{PHP.path_skin}</div>
</div>
<!-- ENDIF -->
<!-- END: MAIN -->