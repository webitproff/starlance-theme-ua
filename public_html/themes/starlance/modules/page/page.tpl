<!-- BEGIN: MAIN -->
<div class="uk-section uk-padding-remove-vertical uk-background-primary uk-visible@m">
	<div class="uk-container uk-container-large uk-padding-small uk-link-text">
		<ul class="uk-breadcrumb">
            <li><a href="{PHP.cfg.mainurl}">{PHP.L.Home}</a></li>
            {PAGE_TITLE|ul_transform($this)}
		</ul>
	</div>
</div>
<div class="uk-section uk-background-muted uk-padding-small">
	<div class="uk-container uk-container-large">
		<div uk-grid>
			<div class="uk-width-expand">
				<h3 class="uk-heading-bullet uk-text-truncate">{PAGE_SHORTTITLE}</h3>
			</div>
			<!-- IF {PHP.usr.id} == {PAGE_OWNER_ID} OR {PHP.usr.isadmin} OR {PHP.usr.maingrp} == 5 -->
			<div class="uk-width-auto">
			<!-- IF {PHP.usr.auth_write} -->
				<a uk-tooltip="{PHP.L.Add}" href="{PAGE_CAT|cot_url('page','m=add&c=$this')}" class="uk-margin-small-left uk-icon-button uk-button-warning" uk-icon="plus-circle"></a>
			<!-- ENDIF -->
				<a uk-tooltip="{PHP.L.Edit}" class="uk-icon-button uk-button-danger" href="{PAGE_ID|cot_url('page','m=edit&id='$this)}" uk-icon="icon:  file-edit; ratio: 1.2" title=""></a>
			</div>
			<!-- ENDIF -->
		</div>	
		<div class="uk-grid-small" uk-grid>
			<div class="uk-width-2-3@m">
			<!-- IF {PHP.cot_plugins_active.attacher} -->
				<!-- IF {PAGE_ID|att_count('page',$this,'','images')} > 0 -->
				<div class="uk-card"> 
					<div data-att-display="all">
						{PAGE_ID|att_display('page',$this,'','attacher.display.pagepostimages','images')}
					</div>
				</div>
				<!-- ENDIF -->
				<!-- ENDIF -->
				<!-- IF {PRD_YOUTUBE_LINK_FOLIO} -->
				<div class="uk-card uk-margin-small">
				<iframe src="https://www.youtube-nocookie.com/embed/{PAGE_YOUTUBE_LINK_FOLIO}?autoplay=0&amp;showinfo=0&amp;rel=0&amp;modestbranding=1&amp;playsinline=1&amp;enablejsapi=1" allowfullscreen="" uk-responsive="" uk-video="autoplay: false" class="uk-responsive-width" style="height: 394px;" width="1920" height="1080" frameborder="0"></iframe>
				</div>
				<!-- ENDIF -->
				<div class="uk-card uk-card-body uk-card-small uk-background-default uk-margin-small uk-border-rounded">
				<!-- IF {PAGE_DESC} -->
				<p class="uk-text-secondary">{PAGE_DESC}</p>
				<!-- ELSE -->
				<p class="uk-text-muted">{PAGE_CATTITLE} - {PAGE_CATDESC} - {PAGE_TEXT|strip_tags($this)|mb_substr($this, 0, 220, 'UTF-8')}...</p>
				<!-- ENDIF -->
				<div class="uk-grid-small uk-grid-divider uk-child-expand@s uk-flex-center uk-text-center" uk-grid>
					<div>
						<div uk-tooltip="Количество просмотров"><span class="uk-icon uk-text-warning" uk-icon="icon: users; ratio: 1.2"></span><span class="uk-text-bold uk-link-text uk-margin-small-left uk-text-middle">{PAGE_COUNT}</span></div>
					</div>
					<!-- IF {PHP.cot_plugins_active.attacher} -->
					<div>
						<div uk-tooltip="Всего прикрепленно файлов / из них картинок / другие для бесплатного скачивания"><span class="uk-margin-small-left uk-icon uk-text-warning" uk-icon="icon: image; ratio: 1.2"></span><span class="uk-text-bold uk-link-text uk-margin-small-left uk-text-middle">{PAGE_ID|att_count('page',$this)}/{PAGE_ID|att_count('page',$this,'','images')}/{PAGE_ID|att_count('page',$this,'','files')}</span></div>
					</div>
					<!-- ENDIF -->
					<div class="uk-visible@m">
						<div uk-tooltip="Опубликовано"><span class="uk-margin-small-left uk-icon uk-text-warning" uk-icon="icon: history; ratio: 1.2"></span><span class="uk-link-text uk-margin-small-left uk-text-middle">{PAGE_DATE_STAMP|cot_date('d.m.Y H:i:s', $this)}</span></div>
					</div>
					<div class="uk-visible@m">
						<div uk-tooltip="Статья обновленна"><span class="uk-margin-small-left uk-icon uk-text-warning" uk-icon="icon: clock; ratio: 1.2"></span><span class="uk-link-text uk-margin-small-left uk-text-middle">{PAGE_UPDATED_STAMP|cot_date('d.m.Y H:i:s', $this)}</span></div>
					</div>
					<div>
						<div uk-tooltip="Комментариев всего"><span class="uk-margin-small-left uk-icon uk-text-warning" uk-icon="icon: comments; ratio: 1.2"></span><span class="uk-text-bold uk-link-text uk-margin-small-left uk-text-middle">{PAGE_COMMENTS_COUNT}</span></div>
					</div>
				</div>
				<div class="uk-dropcap uk-text-light">
					{PAGE_TEXT}
				</div>
				</div>
			</div>
			<div class="uk-width-1-3@m">
				<!-- IF {PHP.cfg.menu1} -->
					<div class="uk-margin-bottom uk-card uk-card-body uk-card-small uk-background-default uk-border-rounded">
						<ul class="uk-list uk-list-divider">
						{PHP.cfg.menu1}
						</ul>
						<!-- IF {PHP.usr.isadmin} --> 
						<div class="uk-position-top-right">
							<a class="uk-icon-button uk-button-danger uk-icon" uk-icon="icon: cog; ratio: 1.5"></a>
							<div uk-dropdown="mode: click; animation: uk-animation-slide-left;">
								<ul class="uk-nav uk-dropdown-nav uk-list uk-list-divider">
									<li class="uk-nav-header">Настроиваем ссылки в этом блоке</li>
									<li><a target="_blank" href="{PHP|cot_url('admin')}">Зайдите в Админку сайта</a></li>
									<li>Управление сайтом / Конфигурация / Слоты для меню</li>
									<li>найдите Меню #1<code>{(PHP.cfg.menu1)}</code> во всех файлах .tpl: </li>
									<li>Заполните своими ссылками поле<code>PHP.cfg.menu1</code></li>
								</ul>
							</div>
						</div>
						<!-- ENDIF -->
					</div>
				<!-- ENDIF -->
				<!-- BEGIN: PAGE_ADMIN -->
				<div class="uk-card uk-card-body uk-card-small uk-background-default uk-margin-small uk-border-rounded">
				<ul class="uk-list uk-list-divider">
					<!-- IF {PHP.usr.isadmin} -->
					<li><a href="{PHP|cot_url('admin')}">{PHP.L.Adminpanel}</a></li>
					<!-- ENDIF -->
					<li><a href="{PAGE_CAT|cot_url('page','m=add&c=$this')}">{PHP.L.page_addtitle}</a></li>
					<li>{PAGE_ADMIN_UNVALIDATE}</li>
					<li>{PAGE_ADMIN_EDIT}</li>
					<li>{PAGE_ADMIN_CLONE}</li>
					<li>{PAGE_ADMIN_DELETE}</li>
				</ul>
				</div>
				<!-- END: PAGE_ADMIN -->
			</div>
		</div>
		<!-- IF {PAGE_ID|att_count('page',$this,'','files')} > 0 -->
		<div class="uk-alert uk-alert-success uk-margin-top" uk-alert>
		<hr class="uk-divider-icon" />
		<div data-att-downloads="download">
			<h3>{PHP.L.att_downloads}</h3>
			{PAGE_ID|att_downloads('page',$this)}
		</div>
		</div>
		<!-- ENDIF -->
		<!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
		<div class="uk-alert-primary" uk-alert>
			<a class="uk-alert-close" uk-close></a>
			<p>Расположение файла, формирующего шаблон страницы:</p>
			<div class="uk-panel uk-text-break uk-text-secondary">{PHP.mskin}</div>
		</div>
		<!-- ENDIF -->
	</div>
</div>
<div class="uk-section uk-background-muted uk-padding-small">
	<div class="uk-container uk-container-large">
		<div class="uk-grid-small" uk-grid>
			<div class="uk-width-2-3@m">
			<!-- IF {PHP.cot_plugins_active.comments} -->
				<div class="uk-card uk-margin-small uk-border-rounded">
					<h3 class="uk-heading-line uk-text-center"><span>{PHP.L.comments_comments}: {PAGE_COMMENTS_COUNT}</span></h3>
					<div>{PAGE_COMMENTS_DISPLAY}</div>		
				</div>
			<!-- ENDIF -->
			</div>
			<div class="uk-width-1-3@m">
<!-- IF {PHP.cot_plugins_active.tags} -->
				<div class="uk-card uk-card-body uk-card-small uk-background-default uk-margin-small uk-border-rounded">
				<span class="uk-text-secondary">{PHP.L.Tags}:</span>
<!-- BEGIN: PAGE_TAGS_ROW -->
<!-- IF {PHP.tag_i} > 0 -->, <!-- ENDIF --><a href="{PAGE_TAGS_ROW_URL}" title="{PAGE_TAGS_ROW_TAG}" rel="nofollow">{PAGE_TAGS_ROW_TAG}</a>
<!-- END: PAGE_TAGS_ROW -->
<!-- BEGIN: PAGE_NO_TAGS -->
{PAGE_NO_TAGS}
<!-- END: PAGE_NO_TAGS -->
				</div>
<!-- ENDIF -->
			</div>
		</div>
<!-- BEGIN: PAGE_MULTI -->
			<div>
				<h2 class="info">{PHP.L.Summary}:</h2>
				{PAGE_MULTI_TABTITLES}
				<p class="paging">{PAGE_MULTI_TABNAV}</p>
			</div>
<!-- END: PAGE_MULTI -->
	</div>
</div>
<!-- END: MAIN -->