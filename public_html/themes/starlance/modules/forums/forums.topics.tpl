<!-- BEGIN: MAIN -->
<div class="uk-section uk-padding-remove-vertical uk-background-primary uk-visible@m">
	<div class="uk-container uk-container-large uk-padding-small uk-link-text">
		<ul class="uk-breadcrumb">
            <li><a href="{PHP.cfg.mainurl}">{PHP.L.Home}</a></li>
            {FORUMS_TOPICS_PAGETITLE}
		</ul>
	</div>
</div>
<div class="uk-background-default uk-section">
	<div class="uk-container uk-container-large">

<!-- BEGIN: FORUMS_SECTIONS -->
			<table class="uk-table uk-table-striped uk-table-hover uk-table-small uk-table-middle uk-table-divider">
				<tr>
					<td class="coltop width5"></td>
					<td class="coltop width45">{PHP.L.Subforums}</td>
					<td class="coltop width30">{PHP.L.Lastpost}</td>
					<td class="coltop width10">{PHP.L.forums_posts}</td>
					<td class="coltop width10">{PHP.L.forums_topics}</td>
				</tr>
<!-- BEGIN: FORUMS_SECTIONS_ROW_SECTION -->
				<tr>
					<td class="centerall {FORUMS_SECTIONS_ROW_ODDEVEN}">
						{PHP.R.icon_subfolder}
					</td>
					<td class="{FORUMS_SECTIONS_ROW_ODDEVEN}">
						<h4><a href="{FORUMS_SECTIONS_ROW_URL}">{FORUMS_SECTIONS_ROW_TITLE}</a></h4>
						<p class="small">{FORUMS_SECTIONS_ROW_DESC}</p>
					</td>
					<td class="centerall b1 {FORUMS_SECTIONS_ROW_ODDEVEN}">
						{FORUMS_SECTIONS_ROW_LASTPOST}<br />
						{FORUMS_SECTIONS_ROW_LASTPOSTER} {FORUMS_SECTIONS_ROW_TIMEAGO}
					</td>
					<td class="centerall {FORUMS_SECTIONS_ROW_ODDEVEN}">
						{FORUMS_SECTIONS_ROW_POSTCOUNT}
					</td>
					<td class="centerall {FORUMS_SECTIONS_ROW_ODDEVEN}">
						{FORUMS_SECTIONS_ROW_TOPICCOUNT}
					</td>
				</tr>
<!-- END: FORUMS_SECTIONS_ROW_SECTION -->
			</table>
<!-- END: FORUMS_SECTIONS -->
			<div id="newf" class="uk-child-width-expand@s uk-margin-small-bottom" uk-grid>
				<div>
					<!-- BEGIN: FORUMS_SECTIONS_POLLS -->
					<a class="uk-button uk-button-linear" href="{FORUMS_TOPICS_NEWPOLLURL}" rel="nofollow">{PHP.L.forums_newpoll}</a>
					<!-- END: FORUMS_SECTIONS_POLLS -->
				</div>
				<div>
					<!-- IF {PHP.usr.id} == 0 -->
					<a uk-tooltip="{PHP.L.forums_newtopic}" class="uk-button uk-button-details uk-width-1-1 uk-animation-toggle" tabindex="0" href="#AuthModal" uk-toggle><img class="uk-margin-small-right uk-animation-shake" width="27" height="27" alt="" uk-img="data-src: themes/{PHP.theme}/img/icon/036-edit.svg" uk-svg="uk-preserve"><span class="uk-text-middle">{PHP.L.forums_newtopic}</span></a>
					<!-- ELSE -->
					<a uk-tooltip="{PHP.L.forums_newtopic}" class="uk-button uk-button-details uk-width-1-1 uk-animation-toggle" tabindex="0" href="{FORUMS_TOPICS_NEWTOPICURL}"><img class="uk-margin-small-right uk-animation-shake" width="27" height="27" alt="" uk-img="data-src: themes/{PHP.theme}/img/icon/036-edit.svg" uk-svg="uk-preserve"><span class="uk-text-middle">{PHP.L.forums_newtopic}</span></a>
					<!-- ENDIF -->	
				</div>
			</div>
			<div class="uk-overflow-auto uk-width-expand">
			<table class="uk-table uk-table-striped uk-table-hover uk-table-small uk-table-middle uk-table-divider">
			<thead>
				<tr>
					<th class="uk-table-shrink"></th>
					<th class="uk-table-shrink uk-text-nowrap">{FORUMS_TOPICS_TITLE_TOPICS} / {FORUMS_TOPICS_TITLE_STARTED}</th>
					<th class="uk-table-shrink uk-text-nowrap">{FORUMS_TOPICS_TITLE_LASTPOST}</th>
					<th class="uk-table-shrink">{FORUMS_TOPICS_TITLE_POSTS}</th>
					<th class="uk-table-shrink">{FORUMS_TOPICS_TITLE_VIEWS}</th>
				</tr>
			</thead>
<tbody>			
<!-- BEGIN: FORUMS_TOPICS_ROW -->
			
				<tr>
					<td class="uk-table-shrink {FORUMS_TOPICS_ROW_ODDEVEN}">{FORUMS_TOPICS_ROW_ICON}</td>
					<td class="uk-table-link  uk-text-nowrap {FORUMS_TOPICS_ROW_ODDEVEN}">
								<h1 class="uk-margin-remove-vertical uk-h4"><a class="uk-link-text" href="{FORUMS_TOPICS_ROW_URL}" title="{FORUMS_TOPICS_ROW_PREVIEW|strip_tags($this)|mb_substr($this, 0, 107, 'UTF-8')}">{FORUMS_TOPICS_ROW_TITLE}</a></h1>
								<!-- IF {FORUMS_TOPICS_ROW_DESC} -->
								<h2 class="uk-margin-remove-vertical uk-text-small uk-text-secondary uk-text-light">{FORUMS_TOPICS_ROW_DESC}</h2>
								<!-- ENDIF -->
						<hr class=" uk-visible@s uk-margin-remove-vertical">
						<p class="uk-margin-remove-vertical uk-visible@s uk-text-small uk-text-secondary uk-text-light">{FORUMS_TOPICS_ROW_CREATIONDATE}: {FORUMS_TOPICS_ROW_FIRSTPOSTER} {FORUMS_TOPICS_ROW_PAGES} {FORUMS_TOPICS_ROW_TAGS}</p>
					</td>
					<td class=" {FORUMS_TOPICS_ROW_ODDEVEN}">
					<p class="uk-text-small uk-text-secondary uk-text-light">
						{FORUMS_TOPICS_ROW_UPDATED} {FORUMS_TOPICS_ROW_LASTPOSTER}
					</p>
					</td>
					<td class=" uk-text-center {FORUMS_TOPICS_ROW_ODDEVEN}">
						{FORUMS_TOPICS_ROW_POSTCOUNT}
					</td>
					<td class=" uk-text-center {FORUMS_TOPICS_ROW_ODDEVEN}">
						{FORUMS_TOPICS_ROW_VIEWCOUNT}
					</td>
				</tr>
			
<!-- END: FORUMS_TOPICS_ROW -->
</tbody>
			</table>
			</div>
			<div class="uk-alert uk-margin" uk-alert>
<!-- BEGIN: FORUMS_SECTIONS_VIEWERS -->
				<span>{PHP.L.forums_viewers}: {FORUMS_TOPICS_VIEWERS} {FORUMS_TOPICS_VIEWER_NAMES}</span>
<!-- END: FORUMS_SECTIONS_VIEWERS -->
				
			</div>
		<ul class="uk-pagination uk-flex-center" uk-margin>
		{FORUMS_TOPICS_PAGEPREV}{FORUMS_TOPICS_PAGES}{FORUMS_TOPICS_PAGENEXT}
		</ul>
			
		</div>
		<div class="uk-container uk-container-large">
    <button class="uk-button uk-button-primary uk-margin" type="button" uk-toggle="target: #toggle-usage">{PHP.L.Help}</button>
	<div class="uk-animation-slide-bottom" id="toggle-usage" hidden>
			<table class="uk-table uk-table-striped uk-table-hover uk-table-small uk-table-middle uk-table-divider">
				<tr>
					<td>{PHP.R.forums_icon_posts}{PHP.L.forums_nonewposts}</td>
					<td>{PHP.R.forums_icon_posts_new}{PHP.L.forums_newposts}</td>
					<td>{PHP.R.forums_icon_posts_hot}{PHP.L.forums_nonewpostspopular}</td>
					<td>{PHP.R.forums_icon_posts_new_hot}{PHP.L.forums_newpostspopular}</td>
				</tr>
				<tr>
					<td>{PHP.R.forums_icon_posts_sticky}{PHP.L.forums_sticky}</td>
					<td>{PHP.R.forums_icon_posts_new_sticky}{PHP.L.forums_newpostssticky}</td>
					<td>{PHP.R.forums_icon_posts_locked}{PHP.L.forums_locked}</td>
					<td>{PHP.R.forums_icon_posts_new_locked}{PHP.L.forums_newpostslocked}</td>
				</tr>
				<tr>
					<td>{PHP.R.forums_icon_posts_sticky_locked}{PHP.L.forums_announcment}</td>
					<td>{PHP.R.forums_icon_posts_new_sticky_locked}{PHP.L.forums_newannouncment}</td>	
					<td colspan="2">
						{PHP.R.forums_icon_posts_moved}{PHP.L.forums_movedoutofthissection}
					</td>
				</tr>
			</table>
		</div>
	</div>
</div>
<!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
<div class="uk-margin-remove-vertical uk-alert-primary" uk-alert>
    <a class="uk-alert-close" uk-close></a>
    <p>Расположение файла, формирующего шаблон страницы: <code>forums.topics.tpl</code></p>
	<div class="uk-panel uk-text-break uk-text-secondary">{PHP.mskin}</div>
</div>
<!-- ENDIF -->
<!-- END: MAIN -->