<!-- BEGIN: MAIN -->
<div class="uk-margin-top uk-margin-bottom">
	<div class="" uk-grid>
		<div class="uk-width-auto@m uk-width-1-1@s">
			<header>
				<h3 class="uk-heading-bullet uk-text-uppercase uk-text-bold uk-link-text uk-margin-remove">{PHP.L.Prd_Marketplace}</h3>
				<span class="uk-heading-bullet uk-text-uppercase uk-text-bold uk-link-text uk-margin-remove">{PHP.L.Prd_My_Market_On_The_place}</span>
			</header>
		</div>
		<div class="uk-width-expand@m uk-width-1-1@s">
			<div class="uk-grid-small uk-grid-divider uk-child-width-expand@s uk-text-right" uk-grid>
				<div>
					<!-- IF {PHP.usr.id} == {PHP.urr.user_id} AND {ADDPRD_SHOWBUTTON} -->
					<a class="uk-button uk-button-small uk-button-default" uk-tooltip="" href="{PRD_ADDPRD_URL}">{PHP.L.market_add_product}</a>
					<!-- ENDIF -->
				</div>
				<div>
				<!-- IF {PAGENAV_COUNT} > 0 -->
					<span class="uk-icon-button uk-button-primary" uk-tooltip="Количество предложений" >{PHP.pagenav.entries}</span>
					<!-- ENDIF -->
					<a uk-tooltip="{PHP.L.Prd_My_Market_On_The_place} - Предложения по категориям" href="#usersmarketstructure" uk-toggle class="uk-icon-button uk-button-default" uk-icon="thumbnails"></a>
				</div>
			</div>
		</div>
	</div>
</div>
		<div id="listmarket">
		<div class="uk-margin uk-grid-medium uk-child-width-1-2@s uk-child-width-1-3@m uk-child-width-1-4@l"  uk-grid="masonry: true">
			<!-- BEGIN: PRD_ROWS -->
			<div>
				<div class="uk-card uk-background-default">
					<!-- IF {PHP.usr.id} == {PHP.urr.user_id} OR {PHP.usr.isadmin} OR {PHP.usr.maingrp} == 5 -->
					<div class="uk-position-top-right uk-position-z-index">
						<a uk-tooltip="{PHP.L.Edit}" class="uk-icon-button uk-button-danger" href="{PRD_ROW_ID|cot_url('market','m=edit&id='$this)}" uk-icon="icon:  file-edit; ratio: 1.2" title=""></a>
					</div>
					<!-- ENDIF -->
					<!-- IF {PRD_ROW_YOUTUBE_LINK_PRD} -->
					<div class="uk-position-top-left uk-position-z-index">
						<div uk-lightbox="animation: scale">
							<canvas width="36" height="36"></canvas>
							<a href="https://www.youtube.com/watch?v={PRD_ROW_YOUTUBE_LINK_PRD}"  data-caption="{PRD_ROW_YOUTUBE_LINK_PRD_TITLE} - {PRD_ROW_SHORTTITLE}" data-attrs="width: 854; height: 480;" uk-tooltip="{PRD_ROW_YOUTUBE_LINK_PRD_TITLE} - {PRD_ROW_SHORTTITLE}">
							<img src="" uk-img="data-src: themes/{PHP.theme}/img/iconsoclogo/YouTube_soc.svg" title="Открыть видео {PRD_ROW_SHORTTITLE}" uk-tooltip="Открыть видео {PRD_ROW_SHORTTITLE}" alt="" uk-cover></a>
						</div>
					</div>
					<!-- ENDIF -->
					<div class="uk-padding-small uk-background-default">
					<!-- IF {PRD_ROW_ID|att_count('market',$this)} > 0 -->
						<div data-att-display="all">
							{PRD_ROW_ID|att_display('market',$this,'','attacher.display.marketlist','all')}
						</div>
					<!-- ENDIF -->
					<h3 class="uk-heading-bullet uk-margin-remove uk-h5"><a class="uk-link-text" href="{PRD_ROW_URL}" title="{PRD_ROW_SHORTTITLE}" uk-tooltip="{PRD_ROW_SHORTTITLE} - Открыть полную страницу карточки товара или услуги"><span>{PRD_ROW_SHORTTITLE}</span></a></h3>
					<div class="uk-flex uk-flex-center uk-flex-middle" uk-grid>
						<!-- IF {PRD_ROW_COST} > 0 -->
						<div class="uk-width-1-2">
							<span class="uk-link-text" uk-icon="icon: credit-card"></span><span class="uk-margin-small-left uk-text-middle uk-text-warning">{PRD_ROW_COST} {PHP.cfg.payments.valuta}</span>
						</div>
						<!-- ENDIF -->
						<div class="uk-width-1-4" uk-tooltip="Количество просмотров {PRD_ROW_COUNT}">
							<span class="uk-link-text" uk-icon="icon: happy"></span>
						</div>
						<div class="uk-width-1-4" uk-tooltip="дата размещения {PRD_ROW_DATE_STAMP|cot_date('j F Y', $this)}">
							<span class="uk-link-text" uk-icon="icon: history"></span>
						</div>
					</div>

						<div class="uk-visible@s uk-text-center">
						<p class="uk-text-justify uk-text-light">{PRD_ROW_TEXT|strip_tags($this)|mb_substr($this, 0, 107, 'UTF-8')}...</p>
						<a class="uk-button uk-button-details uk-width-1-1" rel="nofollow" href="#modal-overflow-{PRD_ROW_ID}" uk-toggle><span uk-icon="icon: link; ratio: 1.5" class="uk-margin-small-right"></span><span class="uk-text-middle" uk-tooltip="узнать больше" title="">{PHP.L.Prd_open_more}</span></a>						
						<div id="modal-overflow-{PRD_ROW_ID}" uk-modal>
							<div class="uk-modal-dialog uk-card uk-padding-small uk-background-primary uk-border-rounded-mdm uk-margin-auto-vertical uk-width-2-3@m uk-width-1-2@xl">
								<button class="uk-modal-close-default uk-button-secondary uk-border-rounded-mdm" type="button" uk-close></button>
								<div class="uk-modal-header">
									<h3 class="uk-heading-bullet uk-margin-remove uk-text-truncate"><a class="uk-link-text" href="{PRD_ROW_URL}" title="{PRD_ROW_SHORTTITLE}"><span>{PRD_ROW_SHORTTITLE}</span></a></h3>
								</div>
								<div class="uk-modal-body uk-background-default" uk-overflow-auto>
								<!-- IF {PRD_ROW_USER_IS_ADMIN} --><span class="uk-label uk-margin">{PRD_ROW_LOCALSTATUS}</span><!-- ENDIF -->
									<span class="">{PRD_ROW_TEXT}</span>
								</div>
								<div class="uk-modal-footer">
									<div class="uk-grid-small uk-child-width-1-2@s uk-child-width-1-2@m uk-child-width-1-3@l uk-flex-center uk-text-center" uk-grid>
										<div>
											<a class="uk-button uk-button-primary uk-width-1-1" href="{PRD_ROW_URL}"><span uk-icon="info" class="uk-margin-small-right"></span><span class="uk-text-middle" uk-tooltip="{PHP.L.Prd_Pagellink_desc}" title="">{PHP.L.Prd_Pagellink}</span></a>
										</div>
										<!-- IF {PHP.usr.id} == {PHP.urr.user_id} OR {PHP.usr.isadmin} OR {PHP.usr.maingrp} == 5 -->
										<div>
											<a class="uk-button uk-width-1-1 uk-button-danger" href="{PRD_ROW_ID|cot_url('market','m=edit&id='$this)}" title=""><span uk-icon="file-edit" class="uk-margin-small-right"></span><span class="uk-text-middle" title="{PHP.L.Edit}">{PHP.L.Edit}</span></a>
										</div>
										<div>

					<!-- IF {PRD_ROW_STATE} != 2 -->
					<a class="uk-button uk-width-1-1 uk-button-danger" href="{PRD_ROW_HIDEPRODUCT_URL}"  uk-tooltip="Снять с публикации, но не удалять из базы данных" ><span uk-icon="file-edit" class="uk-margin-small-right"></span><span class="uk-text-middle" title="">{PRD_ROW_HIDEPRODUCT_TITLE}</span></a>
					<!-- ENDIF -->

										</div>
										<!-- ENDIF -->
										<!-- IF {PHP.cot_plugins_active.orderform} -->
										<!-- IF {PHP.usr.id} != {PHP.urr.user_id} -->
										<div>
											<a class="uk-button uk-button-success uk-width-1-1" href="{PRD_ROW_ID|cot_url('orderform', 'area=market&code='$this)}"><span uk-icon="cart" class="uk-margin-small-right"></span><span class="uk-text-middle" uk-tooltip="{PHP.L.Prd_Orderlink_desc}" title="">{PHP.L.Prd_Orderlink}</span></a>
										</div>
										<!-- ENDIF -->
										<!-- ENDIF -->
									</div>
								</div>
							</div>
						</div>
						</div>
						<div class="uk-hidden@s">
							<p id="prd-fulltext-{PRD_ROW_ID}" class="uk-text-justify">{PRD_ROW_TEXT|strip_tags($this)|mb_substr($this, 0, 107, 'UTF-8')}...</p>
							<div class="" id="prd-fulltext-{PRD_ROW_ID}" hidden>
							<span class="uk-text-light uk-text-justify">{PRD_ROW_TEXT}</span>
							<a class="uk-button uk-button-primary uk-width-1-1" href="{PRD_ROW_URL}"><span uk-icon="info" class="uk-margin-small-right"></span><span class="uk-text-middle" uk-tooltip="{PHP.L.Prd_Pagellink_desc}" title="">{PHP.L.Prd_Pagellink}</span></a>
							</div>
							<div id="prd-fulltext-{PRD_ROW_ID}">
							<a class="uk-button uk-button-details uk-width-1-1 uk-text-center" rel="nofollow" href="#prd-fulltext-{PRD_ROW_ID}" uk-toggle="target: #prd-fulltext-{PRD_ROW_ID}; animation: uk-animation-fade"><span class="uk-text-middle" uk-tooltip="узнать больше" title="">{PHP.L.Prd_open_full_text}</span></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- END: PRD_ROWS -->
		</div>	
		</div>


<!-- IF {PAGENAV_COUNT} > 0 -->
				<div class="uk-panel uk-margin-top">
					<ul class="uk-pagination uk-flex-center uk-flex-middle uk-margin-auto" uk-margin>{PAGENAV_PREV}{PAGENAV_PAGES}{PAGENAV_NEXT}</ul>
				</div>
<!-- ELSE -->
	<div class="uk-alert-warning uk-border-rounded-mdm" uk-alert>
		<span>{PHP.L.Prd_My_Empty}</span>
	</div>
<!-- ENDIF -->
<div id="usersmarketstructure" uk-offcanvas="flip: true; overlay: true">
    <div class="uk-offcanvas-bar">
	<button class="uk-offcanvas-close uk-light uk-button-default uk-border-rounded-mdm" type="button" uk-close></button>
	<!-- IF {PAGENAV_COUNT} > 0 -->
	<ul class="uk-list uk-list-divider">
	  <li>
	 	  <a href="{PHP.urr.user_id|cot_url('users', 'm=details&id=$this&tab=market')}">{PHP.L.market} - {PHP.L.All}: {PHP.pagenav.entries}</a>
	  </li>
	  	<!-- BEGIN: CAT_ROW -->
	  		<li class=" <!-- IF {PRD_CAT_ROW_SELECT} -->uk-active<!-- ENDIF -->">
	  				<a href="{PRD_CAT_ROW_URL}">
	  						<!-- IF {PRD_ROW_CAT_ICON} -->
	  							<img src="{PRD_CAT_ROW_ICON}" alt="{PRD_CAT_ROW_TITLE} ">
	  						<!-- ENDIF -->
	  						{PRD_CAT_ROW_TITLE}
	  					<span class="uk-badge">{PRD_CAT_ROW_COUNT_MARKET}</span>
	  				</a>
	  		</li>
	  	<!-- END: CAT_ROW -->
	</ul>
	<!-- ELSE -->
	<div class="uk-alert-warning uk-border-rounded-mdm" uk-alert>
		<span>{PHP.L.Prd_My_Empty}</span>
	</div>
	<!-- ENDIF -->
	<hr>
	<!-- IF {PHP.usr.id} == {PHP.urr.user_id} AND {ADDPRD_SHOWBUTTON} -->
	<div class="uk-margin-top">
		<a class="uk-button uk-button-warning uk-width-expand" uk-tooltip="" href="{PHP|cot_url('market', 'm=add')}"><span>{PHP.L.market_add_product}</span></a>
	</div>
	<!-- ENDIF -->
    </div>
</div>
<!-- END: MAIN -->