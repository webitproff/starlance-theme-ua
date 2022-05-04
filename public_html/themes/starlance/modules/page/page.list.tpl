<!-- BEGIN: MAIN -->
<div class="uk-section uk-padding-remove-vertical uk-background-primary">
	<div class="uk-container uk-container-large uk-padding-small">
		<div class="uk-grid-small" uk-grid>
			<div class="uk-width-1-3@m">
				<h3 class="uk-heading-bullet uk-link-text">{LIST_CATTITLE} <button class="uk-button uk-button-small uk-button-primary" uk-tooltip="Статей всего в категории">{PHP.cat.count}</button></h3>
			</div>
			<div class="uk-width-2-3@m uk-flex uk-flex-middle uk-visible@m">
				<!-- IF {LIST_CATDESC} -->
				<p class="uk-text-secondary uk-text-light">{LIST_CATDESC}</p>
				<!-- ENDIF -->
			</div>
		</div>
	</div>
</div>
<div class="uk-section uk-background-muted uk-padding-small">
	<div class="uk-container uk-container-large">
		<div class="uk-grid-small" uk-grid>
			<div class="uk-width-3-4@m">
				<div class="uk-margin uk-grid-match uk-grid-medium" uk-grid>
					<!-- BEGIN: LIST_ROW -->
					<div>
						<div class="uk-margin uk-card uk-card-small uk-card-default uk-card-hover uk-grid-collapse uk-child-width-1-2@s uk-visible-toggle uk-animation-toggle" tabindex="-1" uk-grid>
						
							<!-- IF {PHP.cot_plugins_active.attacher} AND {LIST_ROW_ID|att_count('page',$this,'','images')} > 0 -->
							<div class="uk-inline thumbnail uk-cover-container">
								<div data-att-display="all">
									{LIST_ROW_ID|att_display('page',$this,'','attacher.display.pagelist','images',1)}
								</div>
							</div>
							<!-- ELSE -->
							<div class="uk-inline thumbnail uk-cover-container uk-visible@s">
								<canvas width="330" height="320"></canvas>
								<img uk-cover class=""  alt="" uk-img="data-src: themes/{PHP.theme}/img/icon/gallery-empty.svg" uk-svg="uk-preserve" >
							</div>
							<!-- ENDIF -->
							<div class="uk-card-header">
								<div class="uk-position-top-right uk-position-z-index">
									<a class="uk-icon-button uk-button-linear uk-icon" uk-icon="icon: settings; ratio: 1.5"></a>
									<div class="uk-box-shadow-large uk-border-rounded" uk-dropdown="mode: click; animation: uk-animation-slide-left;">
										<ul class="uk-nav uk-dropdown-nav uk-list uk-list-divider">
											<li class="uk-nav-header">Меню статьи <span class="uk-text-muted">из раздела {LIST_CATTITLE}</span></li>
											<li><a class="uk-link-text" href="{LIST_ROW_URL}" title="{LIST_ROW_SHORTTITLE}"><span class="uk-text-primary" uk-icon="icon: paint-bucket; ratio: 1.2"></span><span class="uk-margin-small-left uk-text-uppercase uk-text-middle">{PHP.L.view_full_content}</span></a></li>
											<!-- IF {PHP.usr.id} == {LIST_ROW_OWNER_ID} OR {PHP.usr.isadmin} OR {PHP.usr.maingrp} == 5 -->
											<li><a class="uk-link-text" href="{LIST_ROW_ID|cot_url('page','m=edit&id='$this)}"><span class="uk-text-danger" uk-icon="icon: file-edit; ratio: 1.2"></span><span class="uk-margin-small-left uk-text-uppercase uk-text-bold uk-text-middle">{PHP.L.Edit}</span></a></li>
											<!-- ENDIF -->
											<!-- IF {PHP.usr.auth_write} -->
											<li><a class="uk-link-text" uk-tooltip="{PHP.L.Add}" href="{PAGE_CAT|cot_url('page','m=add&c=$this')}"><span class="uk-text-danger" uk-icon="icon: plus-circle; ratio: 1.2"></span><span class="uk-margin-small-left uk-text-uppercase uk-text-bold uk-text-middle">{PHP.L.page_addtitle}</span></a></li>
											<!-- ENDIF -->
											<li><a class="uk-link-text" href="{PHP.R.Page_How_Add}" title="{PRD_ROW_SHORTTITLE}" target="_blank"><span class="uk-text-primary" uk-icon="icon: question; ratio: 1.2"></span><span class="uk-margin-small-left uk-text-uppercase uk-text-middle">Как добавить свои статьи и новости</span></a></li>
										</ul>
									</div>
								</div>
							<h3 class="uk-heading-bullet uk-margin-remove-top"><a class="uk-link-text" href="{LIST_ROW_URL}" title="{LIST_ROW_SHORTTITLE}"><span>{LIST_ROW_SHORTTITLE}</span></a></h3>
							<h4 class="uk-heading-line uk-margin-remove uk-text-center uk-link-text uk-text-light"><span>{LIST_ROW_CATTITLE}</span></h4>
							<!-- IF {LIST_ROW_DESC} -->
							<p class="uk-margin-remove-top uk-text-secondary">{LIST_ROW_DESC}...</p>
							<!-- ELSE -->
							<p class="uk-margin-remove-top">{LIST_ROW_TEXT_CUT|strip_tags($this)|mb_substr($this, 0, 350, 'UTF-8')}...</p>
							<!-- ENDIF -->
							<hr class="uk-divider-icon uk-margin-remove-top uk-margin-small">
								<div class="uk-grid-small uk-flex-middle" uk-grid>
									<div class="uk-width-auto">
										<!-- IF {LIST_ROW_OWNER_AVATAR_SRC} -->
										<img class="uk-border-rounded" width="50" height="50" alt="{LIST_ROW_OWNER_NICKNAME}" src="{LIST_ROW_OWNER_AVATAR_SRC}">
										<!-- ELSE -->
										<img class="uk-border-rounded" width="50" height="50" alt="{LIST_ROW_OWNER_NICKNAME}" src="themes/{PHP.theme}/img/avatar.png">
										<!-- ENDIF -->
									</div>
									<div class="uk-width-expand">
										<!-- IF {LIST_ROW_OWNER_FIRST_SECOND_NAME} -->
										<p class="uk-margin-remove uk-text-truncate">
											<a class="uk-link-text" href="{LIST_ROW_OWNER_DETAILSLINK}"><span class="uk-margin-small-right">{LIST_ROW_OWNER_FIRST_SECOND_NAME}</span></a>
										</p>
										<!-- ENDIF -->
										<h4 class="uk-margin-remove"><a class="uk-margin-remove uk-link-text" href="{LIST_ROW_OWNER_DETAILSLINK}">{LIST_ROW_OWNER_NICKNAME}</a></h4>
									</div>
								</div>
							</div>
							<!-- UIkit CARD FOOTER -->
							<div class="uk-card-footer uk-card-footer-folio uk-width-expand">
								<div class="uk-grid-small uk-grid-divider uk-child-expand@s uk-flex-center uk-text-center" uk-grid>
									<div>
										<div uk-tooltip="Количество просмотров"><span class="uk-icon uk-text-warning" uk-icon="icon: users; ratio: 1.2"></span><span class="uk-text-bold uk-link-text uk-margin-small-left uk-text-middle">{LIST_ROW_COUNT}</span></div>
									</div>
									<!-- IF {PHP.cot_plugins_active.attacher} -->
									<div>
										<div uk-tooltip="Всего прикрепленно файлов / из них картинок / другие для бесплатного скачивания"><span class="uk-margin-small-left uk-icon uk-text-warning" uk-icon="icon: image; ratio: 1.2"></span><span class="uk-text-bold uk-link-text uk-margin-small-left uk-text-middle">{LIST_ROW_ID|att_count('page',$this)}/{LIST_ROW_ID|att_count('page',$this,'','images')}/{LIST_ROW_ID|att_count('page',$this,'','files')}</span></div>
									</div>
									<!-- ENDIF -->
									<div class="uk-visible@m">
										<div uk-tooltip="Последнее обновление"><span class="uk-margin-small-left uk-icon uk-text-warning" uk-icon="icon: history; ratio: 1.2"></span><span class="uk-text-bold uk-link-text uk-margin-small-left uk-text-middle">{LIST_ROW_DATE}</span></div>
									</div>
									<div>
										<div uk-tooltip="Комментариев всего"><span class="uk-margin-small-left uk-icon uk-text-warning" uk-icon="icon: comments; ratio: 1.2"></span><span class="uk-text-bold uk-link-text uk-margin-small-left uk-text-middle">{LIST_ROW_COMMENTS}</span></div>
									</div>
								</div>
								<a class="uk-hidden-hover folio-link-more uk-animation-slide-right" href="{LIST_ROW_URL}"><span uk-icon="icon: link; ratio: 3"></span></a>
							</div>
						</div>
					</div>
					<!-- END: LIST_ROW -->
				</div>
				<!-- IF {LIST_TOP_PAGINATION} -->
				<div class="uk-panel uk-margin-top">
					<ul class="uk-pagination uk-flex-center uk-flex-middle uk-margin-auto" uk-margin>		{LIST_TOP_PAGEPREV}
					{LIST_TOP_PAGINATION}
					{LIST_TOP_PAGENEXT}
					</ul>
				</div>
				<!-- ENDIF -->
			</div>
			<div class="uk-width-1-4@m">
			<!-- IF {PHP.cfg.menu1} -->
				<div class="uk-card uk-card-default uk-card-body uk-margin-bottom">
					<ul class="uk-list uk-list-divider">
					{PHP.cfg.menu1}
					</ul>
					<!-- IF {PHP.usr.isadmin} --> 
					<div class="uk-position-top-right">
						<a class="uk-icon-button uk-button-danger uk-icon" uk-icon="icon: cog; ratio: 1.5"></a>
						<div uk-dropdown="mode: click; animation: uk-animation-slide-left;">
							<ul class="uk-nav uk-dropdown-nav uk-list uk-list-divider">
								<li class="uk-nav-header">Настраиваем ссылки в этом блоке</li>
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
			<!-- IF {PHP.usr.auth_write} -->
				<div class="uk-card uk-card-default uk-card-body uk-margin-bottom">
				<h2 class="">{PHP.L.Admin}</h2>
				<ul class="uk-list uk-list-divider">
					<!-- IF {PHP.usr.isadmin} -->
					<li><a href="{PHP|cot_url('admin')}">{PHP.L.Adminpanel}</a></li>
					<li><a href="{PHP|cot_url('admin','m=page')}">{PHP.L.Adminpanel}</a></li>
					<!-- ENDIF -->
					<li>{LIST_SUBMITNEWPAGE}</li>
				</ul>
				</div>
			<!-- ENDIF -->
			</div>
		</div>
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
	<div class="uk-container">
		<!-- IF {LIST_TAG_CLOUD} -->
		{PHP.L.Tags} {LIST_TAG_CLOUD}
		<!-- ENDIF -->
	</div>
</div>
<!-- END: MAIN -->