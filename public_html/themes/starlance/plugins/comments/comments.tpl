<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
<!-- BEGIN: COMMENTS_TITLE -->
<div class="uk-section uk-padding-remove-vertical uk-background-primary uk-visible@m">
	<div class="uk-container uk-padding-small uk-link-text">
		<ul class="uk-breadcrumb">
            <li><a href="{PHP.cfg.mainurl}">{PHP.L.Home}</a></li>
			<li><span class="uk-text-bold uk-text-warning comments">Правка коммента</span></li>
		</ul>
	</div>
</div>
<!-- END: COMMENTS_TITLE -->
<!-- BEGIN: COMMENTS_FORM_EDIT -->
<div class="uk-section uk-background-muted">
	<div class="uk-container">
		<div class="uk-card uk-card-default uk-card-body">
		<form class="uk-form-stacked uk-margin-small" id="comments" name="comments" action="{COMMENTS_FORM_POST}" method="post">
			<div class="uk-margin">
				<label class="uk-form-label">{COMMENTS_POSTER_TITLE}:</label>
				<div class="uk-form-controls">
					{COMMENTS_POSTER}
				</div>
			</div>
			<div class="uk-margin">
				<label class="uk-form-label">{COMMENTS_IP_TITLE}:</label>
				<div class="uk-form-controls">
					{COMMENTS_IP}
				</div>
			</div>
			<div class="uk-margin">
				<label class="uk-form-label">{COMMENTS_DATE_TITLE}:</label>
				<div class="uk-form-controls">
					{COMMENTS_DATE}
				</div>
			</div>
			<div class="uk-margin">
				<label class="uk-form-label">{PHP.L.Summary}</label>
				<div class="uk-form-controls">
					{COMMENTS_FORM_TEXT}
				</div>
			</div>
			<!-- IF {PHP.cot_modules.pfs} -->
			<div class="uk-margin">
				<!-- IF {COMMENTS_FORM_PFS} -->{COMMENTS_FORM_PFS}<!-- ENDIF -->
				<!-- IF {COMMENTS_FORM_SFS} --><span class="spaced">{PHP.cfg.separator}</span>{COMMENTS_FORM_SFS}<!-- ENDIF -->
			</div>
			<!-- ENDIF -->
			<div class="uk-margin uk-text-center">
				<button type="submit" value="{COMMENTS_FORM_UPDATE_BUTTON}" class="submit uk-button uk-button-warning" type="submit">{PHP.L.Edit}</button>
			</div>
			</form>
		</div>
	</div>
</div>
<!-- END: COMMENTS_FORM_EDIT -->
<!-- END: MAIN -->
<!-- BEGIN: COMMENTS -->
				<!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
				<div class="tm-timeout" data-timeout="5000">
				<div class="uk-margin uk-alert-primary" uk-alert>
					<a class="uk-alert-close" uk-close></a>
					
					<div class="uk-text-light uk-text-secondary">
					<p><span class="uk-text-danger">{PHP.cot_groups.5.title}!</span> Формирование шаблона страницы: <code>{PHP.cfg.themes_dir}/{PHP.theme}/{PHP.cfg.plugins_dir}/comments/comments.tpl</code>
					 адрес может быть другим, взависимости от вашего шаблона</p></div>
				</div>
				</div>
				<!-- ENDIF -->

		<a name="comments"></a>
		<div <!-- IF {COMMENTS_DISPLAY} == 'none' -->style="display:none;"<!-- ENDIF -->>
		<!-- BEGIN: COMMENTS_ROW -->
		<article class="uk-comment uk-margin-bottom">
			<div class="uk-card uk-padding-small jlbubbleR comments1">
				<div class="uk-grid-medium uk-flex-middle" uk-grid>
					<div class="uk-width-auto@m uk-width-1-1@s uk-text-center">
					<!-- IF {COMMENTS_ROW_AUTHOR_AVATAR_SRC} -->
					<img class="uk-comment-avatar uk-border-rounded" src="{COMMENTS_ROW_AUTHOR_AVATAR_SRC}" width="80" height="80" alt="">
					<!-- ELSE -->
					<img class="uk-comment-avatar uk-border-rounded" src="themes/{PHP.theme}/img/avatar.png" width="80" height="80" alt="">
					<!-- ENDIF -->
					</div>
					<div class="uk-width-expand@m uk-width-1-1@s">
						<h4 class="uk-comment-title uk-margin-remove"> </h4>
						<div class="comments2">
							<span class="uk-link-text uk-text-light">{COMMENTS_ROW_TEXT}</span>
						</div>
						<ul class="uk-comment-meta uk-subnav uk-subnav-divider uk-margin">
							<li><a class="uk-link-text" href="{COMMENTS_ROW_URL}" id="c{COMMENTS_ROW_ID}">#{COMMENTS_ROW_ORDER}</a></li>
							<li><a class="uk-link-text" href="#">{COMMENTS_ROW_DATE}</a></li>
							<li><span class="uk-link-text">{COMMENTS_ROW_AUTHOR}</span></li>
							<li><span class="uk-link-text">{COMMENTS_ROW_ADMIN}</span></li>
							<li><span class="uk-link-text">{COMMENTS_ROW_EDIT}</span></li>
						</ul>
					</div>
				</div>
			</div>
		</article>
	
		<!-- END: COMMENTS_ROW -->
		</div>
<!-- BEGIN: PAGNAVIGATOR -->
				<!-- IF {COMMENTS_PAGES_PAGNAV} -->
				<p>{COMMENTS_PAGES_PAGESPREV}{COMMENTS_PAGES_PAGNAV}{COMMENTS_PAGES_PAGESNEXT}</p>
				<p><span>{COMMENTS_PAGES_INFO}</span></p>
				<!-- ENDIF -->
<!-- END: PAGNAVIGATOR -->
		<!-- BEGIN: COMMENTS_NEWCOMMENT -->
		<div class="uk-panel uk-background-default uk-padding-small">
		<h4 class="comments">{PHP.L.Newcomment}</h4>
		{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
		<form class="uk-form-stacked uk-margin-small" action="{COMMENTS_FORM_SEND}" method="post" name="newcomment">
			<!-- BEGIN: GUEST -->
			<div class="uk-margin">
				<label class="uk-form-label">{PHP.L.Name}:</label>
				<div class="uk-form-controls">
					{COMMENTS_FORM_AUTHOR}
				</div>
			</div>
			<!-- END: GUEST -->
			<div class="uk-margin">
				<label class="uk-form-label">{PHP.L.Summary}</label>
				<div class="uk-form-controls">
					{COMMENTS_FORM_TEXT}
				</div>
			</div>
			<!-- IF {PHP.usr.id} == 0 AND {COMMENTS_FORM_VERIFYIMG} -->
			<div class="uk-margin">
				<label class="uk-form-label">{COMMENTS_FORM_VERIFYIMG}:</label>
				<div class="uk-form-controls">
					{COMMENTS_FORM_VERIFY}
				</div>
			</div>
			<!-- ENDIF -->
			<div class="uk-margin uk-text-center">
				<button  class="uk-button uk-button-success" type="submit">{PHP.L.Add}</button>
			</div>
		</form>
		<div class="uk-alert-warning" uk-alert>
			<ul class="uk-list uk-list-collapse">
				<li><span class="uk-label">{PHP.cfg.plugin.comments.minsize}</span> - {PHP.L.cfg_minsize}</li>
				<li><span class="uk-label uk-label-danger">{PHP.cfg.plugin.comments.rss_commentmaxsymbols}</span> - {PHP.L.cfg_rss_commentmaxsymbols}</li>
				<li>{COMMENTS_FORM_HINT}</li>
			</ul>
		</div>
		</div>
		<!-- END: COMMENTS_NEWCOMMENT -->
		<!-- BEGIN: COMMENTS_EMPTY -->
		<div uk-alert>
			<a class="uk-alert-close" uk-close></a>
			{COMMENTS_EMPTYTEXT}
		</div>
		<!-- END: COMMENTS_EMPTY -->
		<!-- BEGIN: COMMENTS_CLOSED -->
		<div class="uk-alert-danger" uk-alert>
			<a class="uk-alert-close" uk-close></a>
			{COMMENTS_CLOSED}
		</div>
		<!-- END: COMMENTS_CLOSED -->
<!-- END: COMMENTS -->