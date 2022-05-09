<!-- BEGIN: MAIN -->
<section class="uk-container uk-margin-large-top uk-margin-large-bottom">
	<div class="uk-card uk-card-body uk-background-muted uk-border-rounded"> 
		<header> 
			<h3 class="uk-heading-bullet uk-text-uppercase uk-text-bold uk-link-text">
		{PHP.L.folio_add_work_title}</h3>
		</header>
	{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
	<form action="{PRDADD_FORM_SEND}" method="post" name="newwork" enctype="multipart/form-data" class="uk-form-stacked uk-margin-large">
	<div uk-grid>
		<div class="uk-width-1-2@m">
		<div class="uk-margin">
		<h4 class="uk-heading-divider uk-text-primary uk-margin-remove"><span class="uk-text-danger">*</span>{PHP.L.Category}:</h4>
			<label class="uk-form-label"></label>
			<div class="uk-form-controls" uk-tooltip="Выберите категорию">
				<div class="uk-inline uk-width-1-1">
					{PRDADD_FORM_CAT}
				</div>
			</div>
		</div>
		</div>
		<div class="uk-width-1-2@m">
		<div class="uk-margin">
		<h4 class="uk-heading-divider uk-text-primary uk-margin-remove"><span class="uk-text-danger">*</span>{PHP.L.Title}:</h4>
			<label class="uk-form-label"></label>
			<div class="uk-form-controls" uk-tooltip="Название работы портфолио. Обязательно!">
				<div class="uk-inline uk-width-1-1">
					<a class="uk-form-icon uk-form-icon-flip" href="#modal-center-question" uk-toggle><span class="uk-text-primary" uk-icon="icon: question; ratio: 1.2"></span></a>
					{PRDADD_FORM_TITLE}
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

	</div>
	<!-- IF {PHP.usr.isadmin} -->
	<div uk-grid>
		<div class="uk-width-1-2@m">
		<div class="uk-margin">
		<h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.Alias}:</h4>
			<label class="uk-form-label"></label>
			<div class="uk-form-controls" uk-tooltip="URL, ЧПУ, - уникальный на весь сайт идентификатор материала">
				<div class="uk-inline uk-width-1-1">
					{PRDADD_FORM_ALIAS}
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
					{PRDADD_FORM_PARSER}
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
			{PRDADD_FORM_TEXT}
		</div>
	</div>
	<!-- IF {PHP.cot_plugins_active.locationselector} -->
	<div class="uk-margin">
		<h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.market_location}:</h4>
			{PRDADD_FORM_LOCATION}
	</div>
	<!-- ENDIF -->
	<!-- BEGIN: TAGS -->
	<div class="uk-margin">
		<h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PRDADD_FORM_TAGS_TITLE}:</h4>
		<label class="uk-form-label"></label>
		<div class="uk-form-controls">
			<div class="uk-inline uk-width-1-1"  uk-tooltip="{PRDADD_FORM_TAGS_HINT}">
			{PRDADD_FORM_TAGS|cot_rc_modify($this, 'class="uk-input"')}
			</div>
		</div>
	</div>
	<!-- END: TAGS -->	
<!-- IF {PHP|cot_auth('plug', 'attacher', 'W')} -->
	<div class="uk-margin">
		<h4 class="uk-heading-divider uk-text-primary uk-margin-remove"><span class="uk-text-danger">*</span>{PHP.L.Files}: {PHP.L.Prd_Image}:</h4>
		<label class="uk-form-label"></label>	
		<div class="uk-form-controls uk-background-muted uk-padding-small">
			{PHP|att_filebox('folio', 0)}
		</div>
	</div>
<!-- ENDIF -->
	<!-- IF {PRDADD_FORM_YOUTUBE_LINK_FOLIO} -->
	<div class="uk-margin">
	<h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PRDADD_FORM_YOUTUBE_LINK_FOLIO_TITLE}</h4>
		<label class="uk-form-label uk-text-bold uk-text-danger"> (загрузите видео по идентификатору)</label>
		<div class="uk-grid" uk-grid>
			<div class="uk-width-1-2@m">
			https://www.youtube.com/watch?v=<span class="uk-text-bold uk-text-primary">w7nB-YC8jc8</span>
			</div>
			<div class="uk-width-1-2@m">
			{PRDADD_FORM_YOUTUBE_LINK_FOLIO}                            
			</div>
		</div>
	</div>
	<!-- ENDIF -->	
	<div uk-grid> 
		<div class="uk-width-1-4@m">
			<h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.market_price}:</h4>
			<label class="uk-form-label"></label>	
			<div class="uk-form-controls uk-position-relative"> 
			{PRDADD_FORM_COST} 
			<span class="uk-position-center-right uk-position-small">{PHP.cfg.payments.valuta}</span> 
			</div> 
		</div>
		<div class="uk-width-expand@m"> 
		</div>
	</div>			

	<div class="uk-margin uk-text-center"> 
	<button type="submit" class="uk-button uk-button-default uk-margin-top">{PHP.L.Save_and_Add}</button> 
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
