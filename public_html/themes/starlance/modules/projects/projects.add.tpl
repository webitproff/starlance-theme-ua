<!-- BEGIN: MAIN -->
<!-- BEGIN: PROJECTS_ADD_PAYPRO_LIMIT -->
<div class="alert-danger-full uk-margin-remove-vertical" uk-alert>
	<div class="uk-container">
		<h4 class="uk-text-bold uk-animation-slide-right uk-animation-toggle" tabindex="0">
		<img class="uk-animation-shake uk-margin-small-right" width="36" height="36" alt="" uk-img="data-src: /themes/starlance/img/icon/048-notification.svg" uk-svg="uk-preserve" >
		<span class="uk-text-middle">{PHP.L.Warning}</span></h4>
		<p>{PHP.L.paypro_warning_projectslimit_empty}</p>
	</div>
</div>
<!-- END: PROJECTS_ADD_PAYPRO_LIMIT -->
<div class="uk-section uk-background-muted">
	<div class="uk-container">
		<h3 class="uk-heading-bullet uk-text-uppercase uk-text-bold uk-link-text">{PHP.L.projects_add_project_title}</h3>
		<div class="uk-card uk-card-small uk-card-body uk-background-default uk-border-rounded">
		<div class="uk-alert-danger" uk-alert>
		<a class="uk-alert-close" uk-close></a>
		Время сессии ограничено. Основные поля свойств карточки задания заполняйте из заранее подготовленного материала или документа. Лучше сразу сохраниться и затем вернуться к редактированию. 
		</div>
		{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
		<form action="{PRJADD_FORM_SEND}" method="post" name="newadv" enctype="multipart/form-data" class="uk-form-stacked uk-margin-large">
				
				<div class="uk-margin">
				<h4 class="uk-heading-divider uk-text-primary uk-margin-remove"><span class="uk-text-danger">*</span>{PHP.L.Category}:</h4>
					<label class="uk-form-label"></label>
					<div class="uk-form-controls" uk-tooltip="Выберите категорию">
						<div class="uk-inline uk-width-1-1">
							{PRJADD_FORM_CAT}
						</div>
					</div>
				</div>
				

				<div class="uk-margin">
				<h4 class="uk-heading-divider uk-text-primary uk-margin-remove"><span class="uk-text-danger">*</span>{PHP.L.Title}:</h4>
					<label class="uk-form-label"></label>
					<div class="uk-form-controls" uk-tooltip="Название товара или услуги. Обязательно!">
						<div class="uk-inline uk-width-1-1">
							<a class="uk-form-icon uk-form-icon-flip" href="#modal-center-question" uk-toggle><span class="uk-text-primary" uk-icon="icon: question; ratio: 1.2"></span></a>
							{PRJADD_FORM_TITLE}
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

				<!-- IF {PHP.projects_types} -->
				<div class="uk-margin">
				<h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.Type}:</h4>
					<label class="uk-form-label"></label>
					<div class="uk-form-controls">
							{PRJADD_FORM_TYPE}
					</div>
				</div>
				<!-- ENDIF -->
				<div class="uk-margin">
				<h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.Location}:</h4>
					<label class="uk-form-label"></label>
					<div class="uk-form-controls">
							{PRJADD_FORM_LOCATION}
					</div>
				</div>
				<!-- IF {PHP.usr.isadmin} -->
				<div class="uk-child-width-1-2@m" uk-grid>
					<div>
						<div class="uk-margin">
						<h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.Alias}:</h4>
							<label class="uk-form-label"></label>
							<div class="uk-form-controls">
								{PRJADD_FORM_ALIAS}
							</div>
						</div>
					</div>
					<div>
						<div class="uk-margin">
						<h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.Parser}:</h4>
							<label class="uk-form-label"></label>
							<div class="uk-form-controls">
								{PRJADD_FORM_PARSER}
							</div>
						</div>
					</div>
				</div>
				<!-- ENDIF -->
				<div class="uk-margin">
				<h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.Text}:</h4>
					<label class="uk-form-label"></label>
					<div class="uk-form-controls">
						{PRJADD_FORM_TEXT}
					</div>
				</div>
				<div class="uk-width-1-2@m">
					<h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.projects_price}:</h4>
					<label class="uk-form-label"></label>	
					<div class="uk-form-controls uk-position-relative"> 
					{PRJADD_FORM_COST} 
					<span class="uk-position-center-right uk-position-small">{PHP.cfg.payments.valuta}</span> 
					</div> 
				</div>

				<!-- IF {PHP|cot_auth('plug', 'attacher', 'W')} -->
				<div class="uk-margin">
					<h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.Files}, {PHP.L.Image}:</h4>
					<label class="uk-form-label">Расширения <span class="uk-text-danger">{PHP.cfg.plugin.attacher.exts}</span></label>
					<label class="uk-form-label">Макс. размер файлов в байтах <span class="uk-text-danger">{PHP.cfg.plugin.attacher.filesize}</span></label>
					<label class="uk-form-label">Макс количество <span class="uk-text-danger">{PHP.cfg.plugin.attacher.items}</span></label>
					<div class="uk-form-controls"> 
				  {PHP|att_filebox('projects', 0)}
					</div> 
				</div>
				<!-- ENDIF -->
				<!-- IF {PHP.cot_plugins_active.paypro} -->
				<div class="uk-margin">
					<h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.paypro_forpro}:</h4>
					<label class="uk-form-label">Сделать задание доступным только для PRO-аккаунтов ?</label>
					<div class="uk-form-controls"> 
					{PRJADD_FORM_FORPRO}  
					</div> 
				</div>
				<!-- ENDIF -->
			<div class="uk-margin uk-text-center"> 
				<input type="submit" class="uk-button uk-button-default" value="{PHP.L.projects_next}" />
			</div> 
			
		</form>
	
</div>
	</div>
</div>
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