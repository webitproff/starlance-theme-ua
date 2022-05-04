<!-- BEGIN: MAIN -->
<div class="uk-section uk-padding-remove-vertical uk-background-primary uk-visible@m">
	<div class="uk-container uk-container-large uk-padding-small uk-link-text">
		<ul class="uk-breadcrumb">
            {FORUMS_NEWTOPIC_PAGETITLE}
		</ul>
	</div>
</div>
<div class="uk-background-muted uk-section">
	<div class="uk-container">
			{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
		<div class="uk-card uk-card-small uk-card-body uk-card-default uk-border-rounded-mdm uk-box-shadow-medium">
			<form action="{FORUMS_NEWTOPIC_SEND}" method="post" name="newtopic" class="uk-form-stacked">
				<div class="uk-margin">
				<h4 class="uk-heading-divider uk-text-primary uk-margin-remove"><span class="uk-text-danger">*</span>{PHP.L.New_Topic_Title}:</h4>
					<label class="uk-form-label"></label>
					<div class="uk-form-controls" uk-tooltip="{PHP.L.New_Topic_Title_tooltip}">
						<div class="uk-inline uk-width-1-1">
							<a class="uk-form-icon uk-form-icon-flip" href="#modal-center-question" uk-toggle><span class="uk-text-primary" uk-icon="icon: question; ratio: 1.2"></span></a>
							{FORUMS_NEWTOPIC_TITLE}
						</div>
							<span id="rtopictitle" class="uk-text-primary uk-text-small"></span> <span class="uk-text-danger tp-text-small"> знаков осталось</span>
							<script type="text/javascript"> 
								$(document).ready(function(){				
									$('input[name=rtopictitle]').limit('75','#rtopictitle');
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
									<li>и чем более интересным, и распространенной будет форма его употребления в обычной жизни, тем лучше.</li>
								</ul>		
								<div class="uk-text-right">
									<button class="uk-button uk-button-default uk-modal-close" type="button">Понятно !</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="uk-margin">
				<h4 class="uk-heading-divider uk-text-primary uk-margin-remove"><span class="uk-text-danger">*</span>{PHP.L.New_Topic_Description}:</h4>
					<label class="uk-form-label"></label>
					<div class="uk-form-controls" uk-tooltip="{PHP.L.New_Topic_Description_tooltip}">
						<div class="uk-inline uk-width-1-1">
							<a class="uk-form-icon uk-form-icon-flip" href="#modal-center-question-2" uk-toggle><span class="uk-text-primary" uk-icon="icon: question; ratio: 1.2"></span></a>
							{FORUMS_NEWTOPIC_DESC}
						</div>
							<span id="rtopicdesc" class="uk-text-primary uk-text-small"></span> <span class="uk-text-danger tp-text-small"> знаков осталось</span>
							<script type="text/javascript"> 
								$(document).ready(function(){				
									$('input[name=rtopicdesc]').limit('160','#rtopicdesc');
								});	
							</script> 
					</div>
					<div id="modal-center-question-2" class="uk-flex-top" uk-modal>
						<div class="uk-modal-dialog uk-modal-body uk-background-muted uk-border-rounded uk-margin-auto-vertical">
							<button class="uk-modal-close-default uk-button uk-icon-button" type="button" uk-close></button>
							<div class="">
								<h3 class="uk-text-uppercase uk-text-bold uk-link-text"><span class="uk-text-primary" uk-icon="icon: info; ratio: 1.5"></span><span class="uk-text-middle uk-margin-small-left">Подсказка</span></h3>
								<ul class="uk-list uk-list-decimal">
									<li><span class="uk-text-danger">Описание</span> должно быть длиной не более 160 символов.</li>
									<li>от правильности его составления напрямую зависит просмотр Вашей темы и следовательно получение нужных ответов</li>
								</ul>		
								<div class="uk-text-right">
									<button class="uk-button uk-button-default uk-modal-close" type="button">Понятно !</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- BEGIN: PRIVATE -->
				<div class="uk-margin">
					<label class="uk-form-label">{PHP.L.forums_privatetopic1}:({PHP.L.forums_privatetopic2})</label>
					<div class="uk-form-controls">
						{FORUMS_NEWTOPIC_ISPRIVATE}
					</div>
				</div>
				<!-- END: PRIVATE -->
				<div class="uk-margin">
					<label class="uk-form-label"></label>
					<div class="uk-form-controls">
						{FORUMS_NEWTOPIC_TEXT}
					</div>
				</div>
				<!-- IF {PHP.cfg.forums.edittimeout} != 0 -->
				<div class="uk-margin">
					<label class="uk-form-label">{PHP.L.forums_edittimeoutnote}</label>
					<div class="uk-form-controls">
						<span class="uk-text-danger">{FORUMS_NEWTOPIC_EDITTIMEOUT}</span>
					</div>
				</div>
				<!-- ENDIF -->
<!-- BEGIN: FORUMS_NEWTOPIC_TAGS -->
				<div class="uk-margin">
					<label class="uk-form-label">{PHP.L.Tags}: ({FORUMS_NEWTOPIC_TOP_TAGS_HINT})</label>
					<div class="uk-form-controls">
						{FORUMS_NEWTOPIC_FORM_TAGS} 
					</div>
				</div>
<!-- END: FORUMS_NEWTOPIC_TAGS -->
				<div class="uk-margin uk-text-center">
					<button class="uk-button uk-button-linear" type="submit">{PHP.L.Submit}</button>
				</div>
			</form>
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