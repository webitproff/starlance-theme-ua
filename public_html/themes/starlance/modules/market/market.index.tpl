<!-- BEGIN: MARKET -->
<div class="uk-background-muted uk-section" id="index-market">
	<div class="uk-container uk-container-large">
		<div class="uk-margin">
			<h3 class="uk-heading-bullet uk-text-bold uk-link-text uk-margin-remove">{PHP.L.market_title}:</h3>
			<span class="uk-text-light uk-margin-remove">{PHP.L.market_descr}</span>
		</div>

		<div id="listmarket">
		<div class="uk-margin uk-grid-medium uk-child-width-1-2@s uk-child-width-1-3@m uk-child-width-1-4@l"  uk-grid="masonry: true">
			<!-- BEGIN: PRD_ROWS -->
			<div>
				<div class="uk-card uk-background-default">
					<!-- IF {PHP.usr.id} == {PRD_ROW_OWNER_ID} OR {PHP.usr.isadmin} OR {PHP.usr.maingrp} == 5 -->
					<div class="uk-position-top-right uk-position-z-index">
						<a uk-tooltip="{PHP.L.Edit}" class="uk-icon-button uk-button-danger" href="{PRD_ROW_ID|cot_url('market','m=edit&id='$this)}" uk-icon="icon:  file-edit; ratio: 1.2" title=""></a>
					</div>
					<!-- ENDIF -->
					<!-- IF {PRD_ROW_YOUTUBE_LINK_PRD} -->
					<div class="uk-position-top-left uk-position-z-index">
						<div uk-lightbox="animation: scale">
							<canvas width="36" height="36"></canvas>
							<a href="https://www.youtube.com/watch?v={PRD_ROW_YOUTUBE_LINK_PRD}"  data-caption="{PRD_ROW_YOUTUBE_LINK_PRD_TITLE} - {PRD_ROW_SHORTTITLE}" data-attrs="width: 854; height: 480;" uk-tooltip="{PRD_ROW_YOUTUBE_LINK_PRD_TITLE} - {PRD_ROW_SHORTTITLE}">
							<img src=" themes/{PHP.theme}/img/iconsoclogo/YouTube_soc.svg" title="Открыть видео {PRD_ROW_SHORTTITLE}" uk-tooltip="Открыть видео {PRD_ROW_SHORTTITLE}" alt="" uk-cover></a>
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
					<div class="uk-grid-small uk-flex-middle" uk-grid>
						<div class="uk-width-auto">
							<!-- IF {PRD_ROW_OWNER_AVATAR_SRC} -->
							<img class="uk-border-rounded" width="30" height="30" alt="{PRD_ROW_OWNER_NICKNAME}" src="{PRD_ROW_OWNER_AVATAR_SRC}">
							<!-- ELSE -->
							<img class="uk-border-rounded" width="30" height="30" alt="{PRD_ROW_OWNER_NICKNAME}" src="themes/{PHP.theme}/img/avatar.png">
							<!-- ENDIF -->
						</div>
						<div class="uk-width-expand">
							<h5 class="uk-text-uppercase uk-margin-remove"><a class="uk-link-text" href="{PRD_ROW_OWNER_DETAILSLINK}" uk-tooltip="Открыть полный профиль поставщика"><span class="uk-text-middle"><!-- IF {PRD_ROW_OWNER_NAME_COMPANY} -->{PRD_ROW_OWNER_NAME_COMPANY}<!-- ELSE -->{PRD_ROW_OWNER_NICKNAME}<!-- ENDIF --></span><img class="uk-margin-small-left" width="27" height="27" alt="" src=" themes/{PHP.theme}/img/iconuserdet/verification.png"></a></h5>
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
									<span class="">{PRD_ROW_TEXT}</span>
								</div>
								<div class="uk-modal-footer">
									<div class="uk-grid-small uk-child-width-1-2@s  uk-flex-center uk-text-center" uk-grid>
										<div>
											<a class="uk-button uk-button-primary uk-width-1-1" href="{PRD_ROW_URL}"><span uk-icon="info" class="uk-margin-small-right"></span><span class="uk-text-middle" uk-tooltip="{PHP.L.Prd_Pagellink_desc}" title="">{PHP.L.Prd_Pagellink}</span></a>
										</div>
										<div>
											<a class="uk-button uk-button-default uk-width-1-1" href="{PRD_ROW_OWNER_DETAILSLINK}"><span uk-icon="happy" class="uk-margin-small-right"></span><span class="uk-text-middle" uk-tooltip="{PHP.L.Prd_Pagellink_supplier_desc}" title="">{PHP.L.Prd_Pagellink_supplier}</span></a>
										</div>
										<!-- IF {PHP.cot_plugins_active.orderform} -->
										<div>
											<a class="uk-button uk-button-success uk-width-1-1" href="{PRD_ROW_ID|cot_url('orderform', 'area=market&code='$this)}"><span uk-icon="mail" class="uk-margin-small-right"></span><span class="uk-text-middle" uk-tooltip="{PHP.L.Prd_Orderlink_desc}" title="">{PHP.L.Prd_Orderlink}</span></a>
										</div>
										<!-- ENDIF -->
										<!-- IF {PRD_ROW_COST} > 0 -->
										<!-- IF {PHP.cot_plugins_active.marketorders} -->
										<div>
											<a class="uk-button uk-button-danger uk-width-1-1" <!-- IF {PHP.usr.id} > 0 -->href="{PRD_ROW_ID|cot_url('marketorders', 'm=neworder&pid='$this)}"<!-- ELSE -->href="#AuthModal" uk-toggle<!-- ENDIF -->><span uk-icon="cart" class="uk-margin-small-right"></span><span class="uk-text-middle" uk-tooltip="{PHP.L.prd_marketorders_neworder_descr}" title="">{PHP.L.prd_marketorders_neworder_title}</span></a>
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
	</div>
</div>
<script>
// Change the second argument to your options:
// https://github.com/sampotts/plyr/#options
const player = new Plyr('video', { captions: { active: true } });

// Expose player so it can be used from the console
window.player = player;
</script>
<!-- END: MARKET -->
