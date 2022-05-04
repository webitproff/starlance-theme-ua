<!-- BEGIN: MAIN -->
<section class="uk-container uk-margin-large-top uk-margin-large-bottom">
	<div class="uk-card uk-card-body uk-background-muted uk-border-rounded"> 
		<header> 
			<h3 class="uk-heading-bullet uk-text-uppercase uk-text-bold uk-link-text">
		{PHP.L.folio_edit_work_title}</h3>
		</header>
	{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
	<form action="{PRDEDIT_FORM_SEND}" method="post" name="edit" enctype="multipart/form-data" class="uk-form-stacked uk-margin-large">
	<div uk-grid>
		<div class="uk-width-1-2@m">
		<div class="uk-margin">
		<h4 class="uk-heading-divider uk-text-primary uk-margin-remove"><span class="uk-text-danger">*</span>{PHP.L.Title}:</h4>
			<label class="uk-form-label"></label>
			<div class="uk-form-controls" uk-tooltip="Название товара или услуги. Обязательно!">
				<div class="uk-inline uk-width-1-1">
					<a class="uk-form-icon uk-form-icon-flip" href="#modal-center-question" uk-toggle><span class="uk-text-primary" uk-icon="icon: question; ratio: 1.2"></span></a>
					{PRDEDIT_FORM_TITLE}
				</div>
					<span id="rtitle" class="uk-text-primary uk-text-small"></span> <span class="uk-text-danger tp-text-small"> знаков осталось</span>
					<script type="text/javascript"> 
						$(document).ready(function(){				
							$('input[name=rtitle]').limit('60','#rtitle');
						});	
					</script> 
			</div>
		<div id="modal-center-question" class="uk-flex-top" uk-modal>
			<div class="uk-modal-dialog uk-modal-body uk-background-muted uk-border-rounded uk-margin-auto-vertical">
				<button class="uk-modal-close-default uk-button uk-icon-button" type="button" uk-close></button>
				<div class="">
					<h3 class="uk-text-uppercase uk-text-bold uk-link-text"><span class="uk-text-primary" uk-icon="icon: info; ratio: 1.5"></span><span class="uk-text-middle uk-margin-small-left">Подсказка</span></h3>
					<ul class="uk-list uk-list-decimal">
						<li><span class="uk-text-danger">Заголовок</span> должен быть длиной не более 6-10 слов и не более 60 символов.</li>
						<li>Ключевое слово в заголовке должно быть расположено как можно ближе к началу,</li>
						<li>и чем более распространенной будет форма его употребления, тем лучше.</li>
					</ul>		
					<div class="uk-text-right">
						<button class="uk-button uk-button-default uk-modal-close" type="button">Понятно !</button>
					</div>
				</div>
			</div>
		</div>
		</div>
		</div>
		<div class="uk-width-1-2@m">
		<div class="uk-margin">
		<h4 class="uk-heading-divider uk-text-primary uk-margin-remove"><span class="uk-text-danger">*</span>{PHP.L.Category}:</h4>
			<label class="uk-form-label"></label>
			<div class="uk-form-controls" uk-tooltip="Выберите категорию">
				<div class="uk-inline uk-width-1-1">
					{PRDEDIT_FORM_CAT}
				</div>
			</div>
		</div>
		</div>
	</div>
	<!-- IF {PHP.usr.isadmin} -->
	<div uk-grid>
		<div class="uk-width-1-2@m">
		<div class="uk-margin">
		<h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.Alias}:</h4>
			<label class="uk-form-label"></label>
			<div class="uk-form-controls" uk-tooltip="URL, ЧПУ, - уникальный на весь сайт идентификатор материала">
				<div class="uk-inline uk-width-1-1">
					{PRDEDIT_FORM_ALIAS}
				</div>
			</div>
		</div>
		</div>
		<div class="uk-width-1-2@m">
		<div class="uk-margin">
		<h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.Parser}:</h4>
			<label class="uk-form-label"></label>
			<div class="uk-form-controls">
				<div class="uk-inline uk-width-1-1"  uk-tooltip="Разметка для форматирования текстового описания материала">
					{PRDEDIT_FORM_PARSER}
				</div>
			</div>
		</div>
		</div>
	</div>
	<!-- ENDIF -->
	<div class="uk-margin">
		<h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.Folio_Text}:</h4>
		<label class="uk-form-label uk-margin-remove-top">{PHP.L.Folio_Text_Signature}</label>
		<div class="uk-form-controls">
			{PRDEDIT_FORM_TEXT}
		</div>	
	</div>
	<!-- IF {PHP.cot_plugins_active.locationselector} -->
	<div class="uk-margin">
		<h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.market_location}:</h4>
			{PRDEDIT_FORM_LOCATION}
	</div>
	<!-- ENDIF -->
	<!-- BEGIN: TAGS -->
	<div class="uk-margin">
		<h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PRDEDIT_FORM_TAGS_TITLE}:</h4>
		<label class="uk-form-label"></label>
		<div class="uk-form-controls">
			<div class="uk-inline uk-width-1-1"  uk-tooltip="{PRDEDIT_FORM_TAGS_HINT}">
			{PRDEDIT_FORM_TAGS|cot_rc_modify($this, 'class="uk-input"')}
				
			</div>
		</div>
	</div>
	<!-- END: TAGS -->			
	<div uk-grid> 
		<div class="uk-width-1-4@m">
			<h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.market_price}:</h4>
			<label class="uk-form-label"></label>	
			<div class="uk-form-controls uk-position-relative"> 
			{PRDEDIT_FORM_COST} 
			<span class="uk-position-center-right uk-position-small">{PHP.cfg.payments.valuta}</span> 
			</div> 
		</div>
		<div class="uk-width-expand@m"> 

		</div>
	</div>			
	<!-- IF {PHP|cot_auth('plug', 'attacher', 'W')} -->	
	<div class="uk-margin">
		<h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.Files}: {PHP.L.Prd_Image}:</h4>
		<label class="uk-form-label"></label>		
		<div class="uk-form-controls"> 
			{PRDEDIT_FORM_ID|att_filebox('folio', $this)}
		</div>
	</div>
	<!-- ENDIF -->

	<!-- IF {PRDEDIT_FORM_YOUTUBE_LINK_FOLIO} -->
	<div class="uk-margin">
	<h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PRDEDIT_FORM_YOUTUBE_LINK_FOLIO_TITLE}</h4>
		<label class="uk-form-label uk-text-bold uk-text-danger"> (загрузите видео по идентификатору)</label>
		<div class="uk-grid" uk-grid>
			<div class="uk-width-1-2@m">
			https://www.youtube.com/watch?v=<span class="uk-text-bold uk-text-primary">w7nB-YC8jc8</span>
			</div>
			<div class="uk-width-1-2@m">
			{PRDEDIT_FORM_YOUTUBE_LINK_FOLIO}                            
			</div>
		</div>
	</div>
	<!-- ENDIF -->

	<div class="uk-margin-top">
		<div class="uk-alert-danger uk-border-rounded" uk-alert>
			<label class="uk-form-label uk-text-bold uk-text-danger">{PHP.L.Folio_delete}:</label>
			<div class="uk-form-controls uk-margin-small">
				{PRDEDIT_FORM_DELETE}
			</div>
		</div>
	</div>
	<div class="uk-margin uk-text-center"> 
	<button type="submit" class="uk-button uk-button-default uk-margin-top">{PHP.L.apply_changes}</button> 
	</div> 
	</form> 
	</div>
</section>
<script>
 (function ($) {
    $.fn.extend({
        limit:function (limit, element) {
            var interval;
            var self = $(this);

            var check_limit = function () {
                var val = self.val();
                var length = val.length;
                if (length > limit) {
                    self.val(val.substring(0, limit));
                }
                if ($(element).html() !== limit - length) {
                    $(element).html((limit - length <= 0) ? '0' : limit - length);
                }
            };
            self.focus(function () {
                interval = window.setInterval(check_limit, 100);
            });

            self.blur(function () {
                clearInterval(interval);
                check_limit();
            });

            check_limit();
        }
    });
})(jQuery);
</script>
<!-- END: MAIN -->



<h1 class="m-y-2">{PHP.L.folio_edit_work_title}</h1>
<div class="card">
	<div class="card-block">
		{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
		<form action="{PRDEDIT_FORM_SEND}" method="post" name="edit" enctype="multipart/form-data" class="form-horizontal">
			<div class="form-group row">
				<label class="col-md-3 form-control-label">{PHP.L.Category}</label>
				<div class="col-md-9">{PRDEDIT_FORM_CAT}</div>
			</div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label">{PHP.L.Title}:</label>
				<div class="col-md-9">{PRDEDIT_FORM_TITLE}</div>
			</div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label">{PHP.L.Alias}:</label>
				<div class="col-md-9">{PRDEDIT_FORM_ALIAS}</div>
			</div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label">{PHP.L.folio_location}:</label>
				<div class="col-md-9">{PRDEDIT_FORM_LOCATION}</div>
			</div>
			<div class="form-group row<!-- IF !{PHP.usr.isadmin} --> hidden<!-- ENDIF -->">
				<label class="col-md-3 form-control-label">{PHP.L.Parser}:</label>
				<div class="col-md-9">{PRDEDIT_FORM_PARSER}</div>
			</div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label">{PHP.L.Text}:</label>
				<div class="col-md-9">{PRDEDIT_FORM_TEXT}</div>
			</div>
			<!-- BEGIN: TAGS -->
			<div class="form-group row">
				<label class="col-md-3 form-control-label">{PRDEDIT_FORM_TAGS_TITLE}:</label>
				<div class="col-md-9">{PRDEDIT_FORM_TAGS} ({PRDEDIT_FORM_TAGS_HINT})</div>
			</div>
			<!-- END: TAGS -->
			<div class="form-group row">
				<label class="col-md-3 form-control-label">{PHP.L.folio_price}:</label>
				<div class="col-md-9">
					<div class="input-group">
						{PRDEDIT_FORM_COST} 
						<div class="input-group-addon">{PHP.cfg.payments.valuta}</div>
					</div>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label">{PHP.L.Image}:</label>
				<div class="col-md-9">{PRDEDIT_FORM_MAVATAR}</div>
			</div>
			<div class="form-group row">
				<label class="col-md-3 form-control-label">{PHP.L.Delete}</label>
				<div class="col-md-9">{PRDEDIT_FORM_DELETE}</div>
			</div>
			<input type="submit" class="btn btn-success" value="{PHP.L.Submit}" />
		</form>
	</div>
</div>

