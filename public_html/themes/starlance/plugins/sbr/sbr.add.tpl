<!-- BEGIN: MAIN -->
<div class="uk-section uk-padding-remove-vertical uk-background-primary uk-visible@m">
	<div class="uk-container uk-container-large uk-padding-small uk-link-text">
		<ul class="uk-breadcrumb uk-text-uppercase">
            <li><a href="{PHP.cfg.mainurl}">{PHP.L.Home}</a></li>
            {SBRADD_TITLE|ul_transform($this)}
		</ul>
	</div>
</div>
<div class="uk-section uk-padding-remove-vertical uk-background-default">
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"} 
    <div class="uk-container uk-margin-top uk-margin-bottom">
		<div class="uk-card uk-card-small uk-card-body uk-background-muted uk-border-rounded uk-margin-bottom">
			<div class="uk-margin-top uk-margin-bottom uk-text-center">
				<div class="uk-grid-small" uk-grid>
					<div class="uk-width-expand">
						<h2 class="uk-heading-bullet uk-text-uppercase uk-text-bold uk-link-text">{SBRADD_SUBTITLE}</h2>
					</div>
					<div class="uk-width-auto">
						<a class="uk-animation-slide-bottom uk-icon-button uk-button-primary" href="{PHP.cfg.mainurl}/user-manual/secured-transaction" uk-icon="icon: question" target="blank" uk-tooltip="Руководство пользователя по защищенной сделке читать в новой вкладке"></a>
					</div>
				</div>
				<hr class="uk-divider-icon uk-margin-auto uk-width-1-3@m">    
			</div>	
			<form class="uk-form uk-form-stacked" action="{SBRADD_FORM_SEND}" enctype="multipart/form-data" method="post" name="sbrform" id="sbrform">
				<input type="hidden" name="stagescount" value="{PHP.stagescount}"/>
				<div class="uk-grid-small" uk-grid>
					<div class="uk-width-1-1 uk-width-expand@m">
						<label class="uk-form-label">
						<img class="uk-margin-small-right" width="27" height="27" alt="" uk-img="data-src: {PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/icon/022-shield-1.svg" uk-svg="uk-preserve"><span class="uk-text-middle uk-text-uppercase">{PHP.L.sbr_title}</span>
						</label>
						<div class="uk-inline">
							<span class="uk-form-icon uk-text-danger" uk-icon="icon: warning"></span>
							<input type="text" class="uk-input" name="rsbrtitle" placeholder="например «Реклама на YouTube, тематика - бизнес и заработок»" value="{SBR_PROJECT_SHORTTITLE}"/>
						</div>
					</div>
					<div class="uk-width-1-1 uk-width-auto@m">
						<label class="uk-form-label">
						<img class="uk-margin-small-right" width="27" height="27" alt="" uk-img="data-src: {PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/icon/020-rating.svg" uk-svg="uk-preserve"><span class="uk-text-middle uk-text-uppercase">{PHP.L.sbr_performer}</span>
						</label>
						<div class="uk-inline">
						<!-- IF {PHP.uid} -->
							<a class="uk-button uk-button-primary uk-width-expand" href="{SBR_PERFORMER_DETAILSLINK}" target="blank" uk-tooltip="Страница пользователя в новой вкладке">{SBR_PERFORMER_NICKNAME}</a>
						<!-- ELSE -->
							{SBRADD_FORM_PERFORMER}
						<!-- ENDIF -->
						</div>
					</div>
				</div>
				<div id="sbrstageslist">
				<!-- BEGIN: STAGE_ROW -->
				<div class="stageblock<!-- IF {STAGEADD_FORM_NUM} == {PHP.stagescount} --> laststage<!-- ENDIF --> well">
				<hr class="uk-divider-icon">
					<div class="removestage<!-- IF {STAGEADD_FORM_NUM} == 1 --> hidden<!-- ENDIF -->">
					<a class="uk-icon-button uk-button-danger" uk-icon="icon: trash" uk-tooltip="Удалить этот этап сделки" onclick="SbrRemoveStage(this); return false;"></a></div>
					<h5>{PHP.L.sbr_stage} № <span class="stagenum">{STAGEADD_FORM_NUM}</span></h5>
					<div class="uk-margin">
						<label class="uk-form-label"><h4 class="uk-text-primary">{PHP.L.sbr_stagetitle}</h4></label>
						<div class="uk-form-controls">
						   {STAGEADD_FORM_TITLE}
						</div>
					</div>
					<div class="uk-margin">
						<label class="uk-form-label"><h4 class="uk-text-primary">{PHP.L.sbr_stagetext}</h4></label>
						<div class="uk-form-controls">
						   {STAGEADD_FORM_TEXT}
						   <div class="stagefiles uk-margin-bottom">
								<ul class="fileslist uk-list uk-list-striped">
								</ul>
								<a class="uk-button uk-button-small uk-button-success" href="javascript:void(0);" onclick="StageFileAdd(this); return false;">Прикрепить файл</a>
							</div>
						</div>
					</div>
					<div class="uk-grid-small" uk-grid>
						<div class="uk-width-1-2@s">
							<label class="uk-form-label">{PHP.L.sbr_stagecost} ({PHP.cfg.payments.valuta})</label>
							<div class="uk-form-controls">
								<div class="stagecost">{STAGEADD_FORM_COST}</div>
								<!-- IF {PHP.cfg.plugin.sbr.mincost} > 0 -->
								<p class="uk-text-small uk-margin-remove uk-text-muted">{PHP.L.sbr_mincost}  <span class="uk-text-danger">{PHP.cfg.plugin.sbr.mincost} </span>{PHP.cfg.payments.valuta}</p>
								<!-- ENDIF -->
								<!-- IF {PHP.cfg.plugin.sbr.maxcost} > 0 -->
								<p class="uk-text-small uk-margin-remove uk-text-muted">{PHP.L.sbr_maxcost} <span class="uk-text-danger">{PHP.cfg.plugin.sbr.maxcost}</span> {PHP.cfg.payments.valuta}</p>
								<!-- ENDIF -->
							</div>
						</div>
						<div class="uk-width-1-2@s">
							<label class="uk-form-label">{PHP.L.sbr_stagedays} ({PHP|cot_declension(0, 'Days', true)})</label>
							<div class="uk-form-controls">
								{STAGEADD_FORM_DAYS}
								<!-- IF {PHP.PHP.cfg.plugin.sbr.maxdays} > 0 -->
								<p class="uk-text-small">{PHP.L.sbr_maxdays} {PHP.cfg.plugin.sbr.maxdays|cot_declension($this, 'Days')}</p>
								<!-- ENDIF -->
							</div>
						</div>
					</div>
				</div>
				<!-- END: STAGE_ROW -->
				</div>
				<p>
					<a class="uk-button uk-button-primary" href="javascript:void(0);" onclick="SbrAddNewStage(); return false;">{PHP.L.sbr_addstagelink}</a>
				</p>
				<div class="uk-margin">	
					<h3 class="uk-text-success">{PHP.L.sbr_calc_title}</h3>
					<div class="uk-grid-small" uk-grid>
						<div class="uk-width-expand" uk-leader>{PHP.L.sbr_calc_summ}</div>
						<div><span class="uk-text-success" id="summ">0</span><span class="uk-text-secondary"> {PHP.cfg.payments.valuta}</span></div>
					</div>
					<div class="uk-grid-small" uk-grid>
						<div class="uk-width-expand" uk-leader>{PHP.L.sbr_calc_tax}</div>
						<div><span class="uk-text-danger" id="taxsumm">0</span><span class="uk-text-secondary"> {PHP.cfg.payments.valuta}</span></div>
					</div>
					<div class="uk-grid-small" uk-grid>
						<div class="uk-width-expand" uk-leader>{PHP.L.sbr_calc_total}</div>
						<div><span class="uk-text-bold uk-link-text" id="total">0</span><span class="uk-text-secondary"> {PHP.cfg.payments.valuta}</span></div>
					</div>
				</div>
				<div class="uk-text-center uk-margin-large-top">         
					<button class="uk-button uk-button-large uk-button-success" type="submit" name="rsbrsubmit" class="btn btn-success" value="send">{PHP.L.sbr_sendtoconfirm}</button>
				</div>
			</form>  
		</div>
	</div>
<script>
	$().ready(function() {
		$('#sbrform').bind('change click keyup', function (){
			var stagescost = 0;
			var taxsumm = 0;
			var tax = {PHP.cfg.plugin.sbr.tax};
			$('.stagecost input').each(function(i) {
				var stagecost = parseInt($(this).val());
				stagecost = (stagecost > 0) ? stagecost : 0;
				stagescost += stagecost;
			});
			
			if(tax > 0)
			{
				taxsumm = stagescost*tax/100;
			}
			$('#summ').html(stagescost);
			$('#taxsumm').html(taxsumm);
			$('#total').html(stagescost + taxsumm);
		});
	});

	function SbrRemoveStage(obj)
	{
		$(obj).parent().parent().remove();
		$('.stageblock').removeClass('laststage');
		$('.stageblock:last').addClass('laststage');
		
		var laststagenum = 0;
		$('.stageblock').each(function(i, elem) {
			laststagenum++;
			$(elem).children().children('.stagenum').text(laststagenum);
			
			$(elem).find('input, textarea, select').each(function(j) {
				var newfieldname = $(this).attr('name').replace(/(.*\[)(\d+)(\])/, function(f, p1, p2, p3) {
					return p1 + laststagenum + p3;
				});
				$(this).attr('name', newfieldname);
			});
		});
		$('input[name="stagescount"]').val(laststagenum);
	}

	function SbrAddNewStage()
	{
		var laststagenum = $('.stagenum:last').text();
		$('.laststage').clone().insertAfter('.laststage').show();	
		$('.stageblock').removeClass('laststage');
		$('.stageblock:last').addClass('laststage');
		$('.laststage').find('input').val('');
		$('.laststage').find('textarea').val('');
		$('.laststage').find('.fileslist').html('');
		$('.laststage').find('.error').addClass('hidden');
		laststagenum++;
		$('input[name="stagescount"]').val(laststagenum);
		$('.stagenum:last').text(laststagenum);
		$('.removestage:last').removeClass('hidden');

		$('.laststage').find('input, textarea, select').each(function(j) {
			var newfieldname = $(this).attr('name').replace(/(.*\[)(\d+)(\])/, function(f, p1, p2, p3) {
				return p1 + laststagenum + p3;
			});
			$(this).attr('name', newfieldname);
		});

	}
	
	function StageFileAdd(obj)
	{
		var stagenum = $(obj).closest('.stageblock').find('.stagenum').text();
		$(obj).parent().children('.fileslist').append('<li>\n\
			<a href="javascript:void(0);" onclick="StageFileRemove(this); return false;" class="uk-float-right"><i class="uk-icon-close uk-text-muted uk-text-large"></i></a>\n\
			<input type="file" name="rstagefiles[' + stagenum + '][]" />\n\
		</li>');
	}
	
	function StageFileRemove(obj)
	{
		$(obj).parent().remove();
	}

</script>
<!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
<div class="uk-margin-remove-vertical uk-alert-primary" uk-alert>
    <a class="uk-alert-close" uk-close></a>
    <p>Расположение файла, формирующего шаблон страницы:</p>
	<div class="uk-panel uk-text-break uk-text-secondary">{PHP.mskin}</div>
</div>
<!-- ENDIF -->
</div>
<!-- END: MAIN -->