<!-- BEGIN: MAIN -->
<div class="uk-section uk-padding-remove-vertical uk-background-primary uk-visible@m">
	<div class="uk-container uk-container-large uk-padding-small uk-link-text">
		<ul class="uk-breadcrumb">
            <li><a href="{PHP.cfg.mainurl}">{PHP.L.Home}</a></li>
            {PRD_TITLE|ul_transform($this)}
		</ul>
	</div>
</div>
<div class="uk-background-muted uk-section uk-padding-remove-vertical"> 
	<div class="uk-container uk-container-large"> 
	<div class="uk-margin-top uk-margin-large-bottom">
		<div uk-grid>
			<div class="uk-width-expand">
				<h1 class="uk-heading-bullet uk-text-truncate">{PRD_SHORTTITLE}</h1>
			</div>
			<!-- IF {PHP.usr.id} == {PRD_OWNER_ID} OR {PHP.usr.isadmin} OR {PHP.usr.maingrp} == 5 -->
			<div class="uk-width-auto">
				<a uk-tooltip="{PHP.L.Edit}" class="uk-icon-button uk-button-warning" href="{PRD_ID|cot_url('market','m=edit&id='$this)}" uk-icon="icon:  file-edit; ratio: 1.2" title=""></a>
			</div>
			<!-- ENDIF -->
		</div>
		<!-- IF {PRD_STATE} == 2 -->
		<div class="uk-card uk-card-body uk-card-small uk-background-default uk-margin-small uk-border-rounded">
			<div class="uk-alert uk-alert-warning">
			{PHP.L.market_forreview}
			</div>
		</div>
		<!-- ENDIF -->
		<!-- IF {PRD_STATE} == 1 -->
		<div class="uk-card uk-card-body uk-card-small uk-background-default uk-margin-small uk-border-rounded">
			<div class="uk-alert uk-alert-warning">
			{PHP.L.market_hidden}
			</div>
		</div>
		<!-- ENDIF -->
		<div class="uk-grid-small" uk-grid> 
			<div class="uk-width-2-3@m">
				<!-- IF {PRD_ID|att_count('market',$this)} > 0 -->
				<div class="uk-card">
				<div class="uk-position-small uk-position-z-index uk-position-top-right uk-panel"><span class="uk-button uk-button-details" uk-tooltip="Всего прикрепленно файлов / из них картинок / другие для бесплатного скачивания">{PRD_ID|att_count('market',$this)}/{PRD_ID|att_count('market',$this,'','images')}/{PRD_ID|att_count('market',$this,'','files')}</span></div>

					<div data-att-display="all">
						{PRD_ID|att_display('market',$this,'','attacher.display.market','all')}
					</div>
				</div>
				<!-- ENDIF -->
				<!-- IF {PRD_VIDEO_MP4} -->
				<div class="uk-card uk-background-default uk-margin-small-top"> 
				<div class="uk-text-large uk-text-center uk-link-text">{PRD_VIDEO_MP4_TITLE}</div>
					<video 
					controls 
					crossorigin 
					playsinline 
					poster="View_From_A_Blue_Moon_Trailer-HD.jpg">
						 <source src="datas/videoproducts/{PRD_VIDEO_MP4}" type="video/mp4" size="576">
					</video>
				</div> 
				<!-- ENDIF -->
				<!-- IF {PRD_YOUTUBE_LINK_PRD} -->
				<div class="uk-card uk-card-small uk-card-body uk-margin-small-top uk-border-rounded uk-background-primary">
				<iframe src="https://www.youtube-nocookie.com/embed/{PRD_YOUTUBE_LINK_PRD}?autoplay=0&amp;showinfo=0&amp;rel=0&amp;modestbranding=1&amp;playsinline=1&amp;enablejsapi=1" allowfullscreen="" uk-responsive="" uk-video="autoplay: false" class="uk-responsive-width" style="height: 394px;" width="1920" height="1080" frameborder="0"></iframe>
				</div>
				<!-- ENDIF -->
				<div class="uk-grid-small uk-child-width-1-2@s uk-flex-center uk-text-center" uk-grid>
					<div>
						<!-- IF {PRD_DEMONSTRATION} -->
						<div class="uk-text-center uk-margin-top">
							<a class="uk-button uk-button-default" uk-tooltip="ссылка на живое демо товара или услуги, откроется в новой вкладке" target="_blank" href="{PRD_DEMONSTRATION}">{PRD_DEMONSTRATION_TITLE}</a>
						</div>
						<!-- ENDIF -->
					</div>
					<div>
					<!-- заготовка -->
					</div>
				</div>
				<div class="uk-card uk-card-small uk-card-body uk-background-default uk-border-rounded uk-margin-small-top">
				<span class="uk-text-light" id="search">{PRD_TEXT}</span>
					
				</div>
						<!-- IF {PRD_ID|att_count('market',$this,'','files')} > 0 -->
						<div class="uk-alert-success uk-margin-top" uk-alert>
						<div data-att-downloads="download">
							<p><span class="uk-text-danger uk-text-bold">Скачать бесплатно </span><span class="uk-text-secondary">{PRD_SHORTTITLE}</span></p>
							<span class="uk-text-primary uk-text-bold" title="{PRD_SHORTTITLE} Скачать бесплатно">{PRD_ID|att_downloads('market',$this)}</span>
						</div>
						</div>
						<!-- ENDIF -->				
			<div class="uk-text-center uk-margin-top">
			{PHP|share}
			</div>
			</div> 
			<div class="uk-width-1-3@m"> 
				<div class="uk-card uk-card-small uk-card-body uk-background-default uk-border-rounded">
			<!-- IF {PHP.usr.id} > 0 -->
				<!-- IF {PRD_COST} > 0 AND {PRD_STATE} == 0 AND {PHP.cot_plugins_active.marketorders} AND {PHP|cot_auth('plug', 'marketorders', 'R')} -->
					<!-- IF {PRD_ORDER_ID} -->
					<a class="uk-button uk-button-default uk-button-large uk-width-1-1 uk-margin" href="{PRD_ORDER_URL}">{PHP.L.marketorders_title}</a>
						<!-- IF {PRD_ORDER_DOWNLOAD} -->
						<a class="uk-button uk-button-success uk-button-large uk-width-1-1" href="{PRD_ORDER_DOWNLOAD}">{PHP.L.marketorders_file_download}</a>
						<!-- ELSE -->
						<button class="uk-button uk-button-warning uk-width-1-1">{PRD_ORDER_LOCALSTATUS}</button>
						<!-- ENDIF -->  
					<!-- ELSE -->
						<!-- IF {PHP.usr.id} == {PRD_OWNER_ID} -->
						<button class="uk-button uk-button-warning uk-button-large uk-width-1-1" uk-tooltip="Это Ваш товар!. Товар доступен к покупке другим авторизованным пользователям сайта">Товар в продаже</button>
						<!-- ELSE -->
						<a class="uk-button uk-button-default uk-button-large uk-width-1-1" uk-tooltip="{PHP.L.prd_marketorders_neworder_descr}" href="{PRD_ID|cot_url('marketorders', 'm=neworder&pid='$this)}">{PHP.L.prd_marketorders_neworder_title}</a>
						<!-- ENDIF -->
						<!-- IF !{PRD_FILE} -->
						<button class="uk-margin uk-button uk-button-warning uk-button-large uk-width-1-1" uk-tooltip="Файл для скачивания после оплаты товара не прикреплен">Товар не цифровой</button>
						<!-- ENDIF -->
					<!-- ENDIF -->
				<!-- ENDIF -->
				<!-- IF {PRD_COST} == 0 -->
				<a href="{PRD_OWNER_DETAILSLINK}" class="uk-margin uk-button uk-button-large uk-button-details uk-width-1-1" uk-tooltip="Стоимость товара или услуги не указана, следовательно осуществление покупки невозможно. Свяжитесь с продавцом, если это предложение Вас действительно интересует"><span uk-icon="icon: warning; ratio: 1.5" class="uk-text-danger uk-margin-small-right"></span><span class="uk-text-middle" title="">{PHP.L.prd_no_cost_card}</span></a>
				<!-- ENDIF --> 
			<!-- ENDIF -->
			<!-- IF {PHP.usr.id} == 0 -->
				<!-- IF {PRD_COST} > 0 -->
				<a class="uk-button uk-button-default uk-button-large uk-width-1-1" uk-tooltip="{PHP.L.prd_marketorders_neworder_descr}" href="#AuthModal" uk-toggle>{PHP.L.prd_marketorders_neworder_title}</a>
				<!-- ELSE -->
				<a href="{PRD_OWNER_DETAILSLINK}" class="uk-margin uk-button uk-button-large uk-button-details uk-width-1-1" uk-tooltip="Стоимость товара или услуги не указана, следовательно осуществление покупки невозможно. Свяжитесь с продавцом, если это предложение Вас действительно интересует"><span uk-icon="icon: warning; ratio: 1.5" class="uk-text-danger uk-margin-small-right"></span><span class="uk-text-middle" title="">{PHP.L.prd_no_cost_card}</span></a>				
				<!-- ENDIF --> 
			<!-- ENDIF -->
				<hr class="uk-divider-icon uk-margin-small">
				<ul class="uk-list uk-list-divider">
					<!-- IF {PRD_COST} > 0 -->
					<li>
					<div class="uk-grid-small" uk-grid>
						<div class="uk-width-expand uk-flex uk-flex-bottom" uk-leader="fill: -">
							<span class="uk-text-large uk-link-text">{PHP.L.prd_cost_card}:</span>
						</div>
						<div>
							<button class="uk-button uk-button-primary uk-width-1-1">{PRD_COST} {PHP.cfg.payments.valuta}</button>
						</div>
					</div>
					</li>
					<!-- ENDIF -->
					<!-- IF {PHP.usr.id} == {PRD_OWNER_ID} OR {PHP.usr.isadmin} OR {PHP.usr.maingrp} == 5 -->
					<li>
					<div class="uk-grid-small" uk-grid>
						<div class="uk-width-expand uk-flex uk-flex-bottom" uk-leader="fill: -">
							<span class="uk-link-text">Статус:</span>
						</div>
						<div>
							<span class="uk-label">{PRD_LOCALSTATUS}</span>
						</div>
					</div>
					</li>
					<!-- ENDIF -->
					<!-- IF {PRD_USER_IS_ADMIN} -->
					<li>{PRD_ADMIN_EDIT}</li>
					<!-- IF {PRD_STATE} != 2 -->
					<li><a href="{PRD_HIDEPRODUCT_URL}">{PRD_HIDEPRODUCT_TITLE}</a></li>
					<!-- ENDIF -->
					<!-- ENDIF -->
					<li>
					<div class="uk-grid-small" uk-grid>
						<div class="uk-width-expand uk-flex uk-flex-bottom" uk-leader="fill: -">
							<span class="uk-link-text">Количество просмотров:</span>
						</div>
						<div>
							<span class="uk-label">{PRD_COUNT}</span>
						</div>
					</div>
					</li>
					<li>
					<div class="uk-grid-small" uk-grid>
						<div class="uk-width-expand uk-flex uk-flex-bottom" uk-leader="fill: -">
							<span class="uk-link-text">ID карточки в маркетплейсе:</span>
						</div>
						<div>
							<span class="uk-label">#{PRD_ID}</span>
						</div>
					</div>
					</li>
					<li><p class="uk-font-face uk-heading-bullet">Категория: <a class="uk-link-text" href="{PRD_CATURL}"><span uk-icon="link" class="uk-margin-small-right uk-icon"></span><span class="uk-text-bold uk-text-middle uk-text-truncate">{PRD_CATTITLE}</span></a></p></li>
					<li><p class="uk-font-face uk-heading-bullet">Опубликовано: <span uk-icon="calendar" class="uk-margin-small-right uk-icon"></span><span class="uk-text-middle uk-text-success">{PRD_DATE}</span></p></li>
					<!-- IF {PHP.item.item_update} -->
					<li><p class="uk-font-face uk-heading-bullet uk-text-middle">Последнее обновление: <span uk-icon="calendar" class="uk-margin-small-right uk-icon"></span><span class="uk-text-middle">{PHP.item.item_update|cot_build_timeago()}</span></p></li>
					<!-- ENDIF -->
					<!-- IF {PHP.cot_plugins_active.locationselector} -->
					<!-- IF {PRD_COUNTRY} -->
					<li><span uk-icon="world" class="uk-text-warning uk-margin-small-right uk-icon"></span><span class="uk-text-middle uk-link-text" uk-tooltip="{PHP.L.country_tpl}">{PRD_COUNTRY}</span></li>
					<!-- ENDIF -->
					<!-- IF {PRD_REGION} -->
					<li><span uk-icon="location" class="uk-text-warning uk-margin-small-right uk-icon"></span><span class="uk-text-middle uk-link-text" uk-tooltip="{PHP.L.region_tpl}">{PRD_REGION}</span></li>
					<!-- ENDIF -->
					<!-- IF {PRD_CITY} -->
					<li><img  class="uk-margin-small-right" width="27" height="27" alt="" uk-img="data-src: themes/{PHP.theme}/img/icon/university.svg" uk-svg="uk-preserve"><span class="uk-text-bold uk-text-middle uk-link-text" uk-tooltip="{PHP.L.city_tpl}">{PRD_CITY}</span></li>
					<!-- ENDIF -->
					<!-- ENDIF -->
				</ul>
				</div>
				<div class="uk-card uk-card-body uk-card-small uk-background-default uk-margin-top">
					<a class="uk-button uk-button-success uk-width-1-1" href="{PRD_OWNER_DETAILSLINK}"><span uk-icon="happy" class="uk-margin-small-right"></span><span class="uk-text-middle" uk-tooltip="{PHP.L.Prd_Pagellink_supplier_desc}" title="">{PHP.L.Prd_Pagellink_supplier}</span></a>
					<hr class="uk-divider-icon uk-margin-small">
					<div class="uk-grid-small" uk-grid> 
						<div class="uk-width-1-3@m uk-text-center">
							<!-- IF {PRD_OWNER_AVATAR_SRC} -->
							<div class="uk-margin-small-bottom">
								<img class="uk-border-rounded" src="{PRD_OWNER_AVATAR_SRC}" alt="{PRD_OWNER_NICKNAME}"  width="250" height="250" />
							</div>
							<!-- ELSE -->
							<div class="uk-margin-small-bottom">
								<img class="uk-border-rounded" src="themes/{PHP.theme}/img/avatar.png" alt="{PRD_OWNER_NICKNAME}"  width="250" height="250" />
							</div>
							<!-- ENDIF -->
							<p class="uk-font-face uk-text-meta uk-margin-small-top"> 
								<a class="uk-link-text" href="{PRD_OWNER_DETAILSLINK}#tab_reviews">Отзывов: <span class="uk-label">{PRD_OWNER_REVIEWS_SUMM}</span></a>
							</p> 
						</div>
						<div class="uk-width-expand@m"> 
							<h5 class="uk-margin-remove">
								<a class="uk-link-text" uk-tooltip="{PRD_OWNER_NICKNAME}" href="{PRD_OWNER_DETAILSLINK}">
								<!-- IF {PRD_OWNER_FIRST_SECOND_NAME} -->
								<span class="uk-text-warning">{PRD_OWNER_FIRST_SECOND_NAME}</span>
								<hr class="uk-margin-remove">
								<!-- ELSE -->
								<span class="uk-text-emphasis uk-text-bold">[{PRD_OWNER_NICKNAME}]</span>
								<!-- ENDIF -->
								</a>
							</h5> 
							<div class="uk-margin-remove">
							<!-- IF {PRD_OWNER_ISPRO} -->
							<span class="uk-label uk-label-success">PRO</span>
							<!-- ENDIF -->
							<span class="uk-label uk-label-success">{PRD_OWNER_USERPOINTS}</span>
							<!-- IF {PRD_OWNER_TEXT} -->
							<span class="uk-text-emphasis uk-text-small">{PRD_OWNER_TEXT|cot_string_truncate($this,211)}</span>
							<!-- ELSE -->
							{PHP.cfg.maintitle} - {PHP.cfg.subtitle} ( в настройках профиля смените текст на свой)
							<!-- ENDIF -->
							</div> 
						</div> 
					</div>
				</div>
			</div> 
		</div>
		<!-- IF {PHP.cot_plugins_active.tags} AND {PHP.cot_plugins_active.tagslance} AND {PHP.cfg.plugin.tagslance.market} -->
		<div class="uk-card uk-visible@l uk-margin-top">
		<hr class="uk-divider-icon">
			<div class="uk-flex uk-flex-center">
			<!-- BEGIN: PRD_TAGS_ROW -->
			<!-- IF {PHP.tag_i} > 0 -->, <!-- ENDIF -->
			<a href="{PRD_TAGS_ROW_URL}" title="{PRD_TAGS_ROW_TAG}">{PRD_TAGS_ROW_TAG}</a>
			<!-- END: PRD_TAGS_ROW -->
			</div>
		</div>
		<!-- ENDIF -->	
	</div> 
</div>
</div>
<script>
// Change the second argument to your options:
// https://github.com/sampotts/plyr/#options
const player = new Plyr('video', { captions: { active: true } });

// Expose player so it can be used from the console
window.player = player;
</script>
<!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
<div class="uk-margin-remove-vertical uk-alert-primary" uk-alert>
    <a class="uk-alert-close" uk-close></a>
    <p>Расположение файла, формирующего шаблон страницы:</p>
	<div class="uk-panel uk-text-break uk-text-secondary">{PHP.mskin}</div>
</div>
<!-- ENDIF -->
<!-- END: MAIN -->