<!-- BEGIN: MAIN -->
<div class="uk-section uk-padding-remove-vertical uk-background-primary uk-visible@m">
	<div class="uk-container uk-container-large uk-padding-small uk-link-text">
		<ul class="uk-breadcrumb">
            {FORUMS_POSTS_PAGETITLE}
		</ul>
	</div>
</div>
<div class="uk-background-muted uk-section">
{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
	<!-- BEGIN: FORUMS_POSTS_TOPICPRIVATE -->
	<div class="alert-danger-full uk-margin-remove-vertical" uk-alert>
		<div class="uk-container">
			<h4 class="uk-text-bold uk-animation-slide-right uk-animation-toggle" tabindex="0">
			<img class="uk-animation-shake uk-margin-small-right" width="36" height="36" alt="" uk-img="data-src: /themes/starlance/img/icon/048-notification.svg" uk-svg="uk-preserve" >
			<span class="uk-text-middle">{PHP.L.Warning}</span></h4>
			<p>{PHP.L.forums_privatetopic}</p>
		</div>
	</div>
	<!-- END: FORUMS_POSTS_TOPICPRIVATE -->
	<!-- BEGIN: POLLS_VIEW -->
	<div class="uk-container uk-container-large">
		<h2 class="uk-heading-bullet uk-text-uppercase uk-text-bold uk-link-text">{POLLS_TITLE}</h2>
		{POLLS_FORM}
	</div>
	<!-- END: POLLS_VIEW -->
	<div class="uk-container uk-container-large">
		<h1 class="uk-heading-bullet uk-h3">{FORUMS_POSTS_SHORTTITLE}</h1>
		<!-- BEGIN: FORUMS_POSTS_ADMIN -->
		<div class="uk-card uk-card-default uk-card-body uk-card-small uk-margin-small-bottom">
			<div class="uk-position-top-right uk-position-small uk-position-z-index">
				<a class="uk-icon-button uk-button-linear uk-icon" uk-icon="icon: settings; ratio: 1.5"></a>
				<div class="uk-box-shadow-large uk-border-rounded" uk-dropdown="mode: click; animation: uk-animation-slide-left;">
					<ul class="uk-nav uk-dropdown-nav uk-list uk-list-divider">
						<li class="uk-nav-header">{PHP.L.forums_topicoptions}:</li>
						<li><a href="{FORUMS_POSTS_BUMP_URL}" title="{PHP.L.forums_explainbump}">{PHP.L.forums_bump}</a></li>
						<li><a href="{FORUMS_POSTS_LOCK_URL}" title="{PHP.L.forums_explainlock}">{PHP.L.Lock}</a></li>
						<li><a href="{FORUMS_POSTS_STICKY_URL}" title="{PHP.L.forums_explainsticky}">{PHP.L.forums_makesticky}</a></li>
						<li><a href="{FORUMS_POSTS_ANNOUNCE_URL}" title="{PHP.L.forums_explainannounce}">{PHP.L.forums_announcement}</a></li>
						<li><a href="{FORUMS_POSTS_PRIVATE_URL}" title="{PHP.L.forums_explainprivate}">{PHP.L.forums_private} (#)</a></li>
						<li><a href="{FORUMS_POSTS_CLEAR_URL}" title="{PHP.L.forums_explaindefault}">{PHP.L.Default}</a></li>
						<li><a href="{FORUMS_POSTS_DELETE_URL}" title="{PHP.L.forums_explaindelete}" class="confirmLink">{PHP.L.Delete}</a></li>
					</ul>
				</div>
			</div>
			<form id="movetopic" action="{FORUMS_POSTS_MOVE_URL}" method="post" class="uk-form-stacked uk-margin">
				<div class="uk-grid-small" uk-grid>
					<div class="uk-width-1-2@m">
						<label class="uk-form-label">{PHP.L.Move}:</label>
						<div class="uk-form-controls">
							{FORUMS_POSTS_MOVEBOX_SELECT}
						</div>
					</div>
					<div class="uk-width-1-2@m">
						<label class="uk-form-label"><span class="">{FORUMS_POSTS_MOVEBOX_KEEP} {PHP.L.forums_keepmovedlink}</span></label>
						<div class="uk-form-controls">
							<button class="uk-button uk-button-default" type="submit">{PHP.L.Move}</button>
						</div>
					</div>
				</div>
			</form>
		</div>
		<!-- END: FORUMS_POSTS_ADMIN -->
		<div class="uk-grid-small" uk-grid>
			<div class="uk-width-1-4@m uk-width-1-6@l">
				<div class="uk-card uk-card-small uk-card-default">
					<div class="uk-card-header">	
						<!-- IF {FORUMS_POSTS_ROW_USERAVATAR_SRC} -->
						<img class="uk-box-shadow-medium uk-align-center uk-border-rounded-mdm uk-margin-remove-bottom" width="150" height="150" alt="{FORUMS_POSTS_ROW_USERAVATAR_NICKNAME}" src="{FORUMS_POSTS_ROW_USERAVATAR_SRC}">
						<!-- ELSE -->
						<img class="uk-box-shadow-medium uk-align-center uk-border-rounded-mdm uk-margin-remove-bottom" width="150" height="150" alt="{FORUMS_POSTS_ROW_USERAVATAR_NICKNAME}" src="themes/{PHP.theme}/img/avatar.png">
						<!-- ENDIF -->
						<div class="uk-text-center">
							<h3 class="uk-margin-remove">{FORUMS_POSTS_ROW_USERNAME}</h3>
							<p class="uk-text-meta uk-margin-remove-top">{FORUMS_POSTS_ROW_USERMAINGRPTITLE}</p>
						</div>
						<hr class="uk-divider-icon uk-margin-remove">
						<div uk-grid>
							<div class="uk-width-auto">
							<!-- IF {PHP.cot_plugins_active.whosonline} -->
								<img src="themes/{PHP.theme}/img/online{FORUMS_POSTS_ROW_USERONLINE}.png" title="{PHP.L.Status}: {FORUMS_POSTS_ROW_USERONLINETITLE}" alt="" class="userstatus" />
							<!-- ENDIF -->
							</div>
							<div class="uk-width-expand">
								<div class="uk-text-meta {FORUMS_POSTS_ROW_ODDEVEN}">
									{PHP.L.forums_posts}: {FORUMS_POSTS_ROW_USERPOSTCOUNT}
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="uk-width-3-4@m uk-width-5-6@l">
				<div class="uk-card uk-card-small uk-card-default">
			<!-- BEGIN: FORUMS_POSTS_ROW -->
					<div class="uk-card-header uk-background-primary {FORUMS_POSTS_ROW_ODDEVEN}">
						<div class="uk-grid-small uk-flex-middle" uk-grid>
							<div class="uk-width-auto">
								{FORUMS_POSTS_ROW_ANCHORLINK}
							</div>
							<div class="uk-width-expand">
								<ul class="uk-comment-meta uk-subnav uk-subnav-divider uk-margin-remove-top">
									<li><a class="uk-text-bold uk-text-warning" name="{FORUMS_POSTS_ROW_ID}" id="{FORUMS_POSTS_ROW_POSTID}" href="{FORUMS_POSTS_ROW_IDURL}" rel="nofollow">#{FORUMS_POSTS_ROW_ORDER}</a></li>
									<li><span class="uk-link-text">{FORUMS_POSTS_ROW_CREATION_STAMP|cot_date('j F Y', $this)}</span></li>
									<!-- IF {FORUMS_POSTS_ROW_POSTERIP} -->
									<li><span class="uk-link-text">{FORUMS_POSTS_ROW_POSTERIP}</span></li>
									<!-- ENDIF -->
									<!-- IF {FORUMS_POSTS_ROW_QUOTE} -->
									<li><span class="uk-link-text">{FORUMS_POSTS_ROW_QUOTE}</span></li>
									<!-- ENDIF -->
									<!-- IF {FORUMS_POSTS_ROW_EDIT} -->
									<li><span class="uk-link-text">{FORUMS_POSTS_ROW_EDIT}</span></li>
									<!-- ENDIF -->
									<!-- IF {FORUMS_POSTS_ROW_DELETE} -->
									<li><span class="uk-link-text">{FORUMS_POSTS_ROW_DELETE}</span></li>
									<!-- ENDIF -->
									<!-- IF {FORUMS_POSTS_ROW_BOTTOM} -->
									<li><span class="uk-link-text">{FORUMS_POSTS_ROW_BOTTOM}</span></li>
									<!-- ENDIF -->
								</ul>
							</div>
						</div>
					</div>
					<div class="uk-card-body {FORUMS_POSTS_ROW_ODDEVEN}">
						<div class="uk-text-light uk-text-secondary">
							{FORUMS_POSTS_ROW_TEXT}
						</div>
						<!-- IF {FORUMS_POSTS_ROW_UPDATEDBY} -->
						<div class="" uk-alert>{FORUMS_POSTS_ROW_UPDATEDBY}</div>
						<!-- ENDIF -->						
					</div>
					<div class="starlance-bg-darkgreenblue uk-padding-small uk-panel">
						<h5 class="uk-heading-divider uk-margin-remove"><span class="uk-light uk-text-uppercase uk-text-middle">{FORUMS_POSTS_ROW_USERNAME} - {FORUMS_POSTS_ROW_CREATION}</span></h5>
						<div class="uk-text-meta uk-text-warning {FORUMS_POSTS_ROW_ODDEVEN}">
							{FORUMS_POSTS_ROW_USERTEXT}
						</div>
					</div>
			<!-- END: FORUMS_POSTS_ROW -->	
			<!-- BEGIN: FORUMS_POSTS_NEWPOST -->
					<div class="uk-card-footer">
						<form action="{FORUMS_POSTS_NEWPOST_SEND}" method="post" name="newpost">
							<div class="uk-margin-top">
								<label class="uk-form-label">
								</label>
								<div class="uk-form-controls">
									{FORUMS_POSTS_NEWPOST_TEXT}
								</div>
							</div>
							<div class="uk-margin-top">
								<!-- IF {PHP.cfg.forums.edittimeout} != 0 -->
								{PHP.L.forums_edittimeoutnote} <span class="uk-label">{FORUMS_POSTS_NEWPOST_EDITTIMEOUT} </span>   
								<!-- ENDIF -->
							</div>
							<div class="uk-margin uk-text-center">
								<button class="uk-button uk-button-linear" type="submit">{PHP.L.Reply}</button>
							</div>
						</form>
					</div>
			<!-- END: FORUMS_POSTS_NEWPOST -->			
				</div>
			</div>
		</div>
		<!-- IF {FORUMS_POSTS_PAGES} -->
		<ul class="uk-pagination uk-flex-center" uk-margin>
		{FORUMS_POSTS_PAGEPREV}{FORUMS_POSTS_PAGENEXT}{FORUMS_POSTS_PAGES}
		</ul>
		<!-- ENDIF -->
	</div>
	<div class="uk-container uk-container-large uk-padding-small uk-link-text">
		<!-- BEGIN: FORUMS_POSTS_TOPICLOCKED -->
		<div class="uk-alert-warning uk-margin-remove-vertical" uk-alert>{FORUMS_POSTS_TOPICLOCKED_BODY}</div>
		<!-- END: FORUMS_POSTS_TOPICLOCKED -->
		<!-- BEGIN: FORUMS_POSTS_ANTIBUMP -->
		<div class="uk-alert-warning uk-margin-remove-vertical" uk-alert>{FORUMS_POSTS_ANTIBUMP_BODY}</div>
		<!-- END: FORUMS_POSTS_ANTIBUMP -->	
	</div>
</div>
<!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
<div class="uk-margin-remove-vertical uk-alert-primary" uk-alert>
    <a class="uk-alert-close" uk-close></a>
    <p>Расположение файла, формирующего шаблон страницы:</p>
	<div class="uk-panel uk-text-break uk-text-secondary">{PHP.mskin}</div>
</div>
<!-- ENDIF -->
<!-- END: MAIN -->