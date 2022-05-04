<!-- BEGIN: MAIN -->
<div class="uk-section uk-padding-remove-vertical uk-background-primary uk-visible@m">
	<div class="uk-container uk-container-large uk-padding-small uk-link-text">
		<ul class="uk-breadcrumb">
            <li><a href="{PHP.cfg.mainurl}">{PHP.L.Home}</a></li>
            {FORUMS_SECTIONS_PAGETITLE}
		</ul>
	</div>
</div>
<!-- BEGIN: FORUMS_SECTIONS -->
<div class="uk-background-muted uk-section">
	<div class="uk-container uk-container-large">
<!-- BEGIN: CAT -->
        <div id="{FORUMS_SECTIONS_ROW_CAT}" class="starlance-bg-darkgreenblue uk-padding-small uk-panel uk-margin-bottom">
            <p><a class="uk-light" href="{FORUMS_SECTIONS_ROW_SECTIONSURL}" onclick="return toggleblock('blk_{FORUMS_SECTIONS_ROW_CAT}')"><span class="uk-margin-small-right" uk-icon="icon: triangle-right; ratio: 2"></span><span class="uk-text-middle uk-text-uppercase">{FORUMS_SECTIONS_ROW_TITLE}</span></a></p>
        </div>
		<div id="blk_{FORUMS_SECTIONS_ROW_CAT}"
			<!-- IF {FORUMS_SECTIONS_ROW_FOLD} --> style="display:none;"<!-- ENDIF -->  class="uk-background-default">
			<div class="uk-overflow-auto uk-width-expand">
				<table class="uk-table uk-table-striped uk-table-hover uk-table-middle uk-table-divider">
					<thead>
						<tr>
							<th class="uk-table-shrink uk-text-lowercase"></th>
							<th class="uk-width-xlarge uk-text-lowercase uk-text-nowrap">Название подразделов, {PHP.L.Category}, {PHP.L.Description}</th>
							<th class="uk-width-large uk-width-1-3 uk-text-nowrap uk-text-lowercase">{PHP.L.Lastpost}</th>
							<th class="uk-table-shrink uk-text-lowercase">{PHP.L.forums_topics}</th>
							<th class="uk-table-shrink uk-text-lowercase">{PHP.L.forums_posts}</th>
							<th class="uk-table-shrink uk-text-lowercase">{PHP.L.Activity}</th>
						</tr>
					</thead>
					<tbody>
	<!-- BEGIN: SECTION -->
						<tr class="uk-animation-toggle" tabindex="0">
							<td>
							<!-- IF {FORUMS_SECTIONS_ROW_ICON} -->
								{FORUMS_SECTIONS_ROW_ICON}
							<!-- ELSE -->
								<img class="uk-animation-shake uk-margin-small-right" width="27" height="27" alt="" uk-img="data-src: /themes/starlance/img/icon/048-notification.svg" uk-svg="uk-preserve" >
							<!-- ENDIF -->
							</td>
							<td>
								<h1 class="uk-heading-bullet uk-margin-remove-vertical uk-h4"><a class="uk-link-text" href="{FORUMS_SECTIONS_ROW_URL}">{FORUMS_SECTIONS_ROW_TITLE}</a></h1>
								<!-- IF {FORUMS_SECTIONS_ROW_DESC} -->
								<h2 class="uk-margin-remove-vertical uk-text-small uk-text-secondary uk-text-light">{FORUMS_SECTIONS_ROW_DESC}</h2>
								<!-- ENDIF -->
								<ul class="subforums">
	<!-- BEGIN: SUBSECTION -->
									<li>{PHP.R.forums_icon_subforum}<a href="{FORUMS_SECTIONS_ROW_URL}">{FORUMS_SECTIONS_ROW_TITLE}</a></li>
	<!-- END: SUBSECTION -->
								</ul>
							</td>
							<td>
								{FORUMS_SECTIONS_ROW_LASTPOST}<br />
								{FORUMS_SECTIONS_ROW_LASTPOSTDATE} {FORUMS_SECTIONS_ROW_LASTPOSTER}
							</td>
							<td>{FORUMS_SECTIONS_ROW_TOPICCOUNT}</td>
							<td>{FORUMS_SECTIONS_ROW_POSTCOUNT}</td>
							<td>{FORUMS_SECTIONS_ROW_ACTIVITY}</td>
						</tr>
	<!-- END: SECTION -->
					</tbody>
				</table>
			</div>
		</div>
	<!-- END: CAT -->
	</div>
</div>
<!-- END: FORUMS_SECTIONS -->
<div class="uk-background-muted uk-section">
	<div class="uk-container uk-container-large">
		<nav class="uk-navbar-container uk-navbar-transparent" uk-navbar>
			<div class="uk-navbar-left">
				<ul class="uk-navbar-nav">
				<!-- IF {PHP.cot_plugins_active.search} -->
					<li><a class="uk-link-text" href="{PHP|cot_url('plug','e=search&amp;tab=frm')}">{PHP.L.forums_searchinforums}</a></li>
				<!-- ENDIF -->
				<!-- IF {PHP.cot_plugins_active.forumstats} -->
					<li><a class="uk-link-text" href="{PHP|cot_url('plug','e=forumstats')}">{PHP.L.Statistics}</a></li>
				<!-- ENDIF -->
					<li><a class="uk-link-text" href="{PHP|cot_url('forums','n=markall')}" rel="nofollow">{PHP.L.forums_markasread}</a></li>
				</ul>
			</div>
		</nav>
		<!-- IF {PHP.cot_plugins_active.tags} -->
		<hr>
		<h1 class="uk-heading-bullet uk-text-uppercase uk-text-bold uk-link-text uk-h4 uk-margin-remove-vertical">{PHP.L.Tags}</h1>
			{FORUMS_SECTIONS_TAG_CLOUD}
		<!-- ENDIF -->
	</div>
</div>
<!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
<div class="uk-margin-remove-vertical uk-alert-primary" uk-alert>
	<p>раздел шаблона страницы: <code>forums.sections.tpl</code></p>
	<div class="uk-panel uk-text-break uk-text-secondary">{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/{PHP.env.type}/{PHP.env.ext}/{PHP.m}/{PHP.n}</div>
</div>
<!-- ENDIF -->
<!-- END: MAIN -->
