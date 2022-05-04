<!-- BEGIN: MAIN -->
    	<!-- IF {NEWORDER_PRD_ORDER_ID} -->
    	<h4 class="uk-text-center uk-text-bold uk-text-danger">Вы уже купили этот товар или услугу!</h4>
    	<script>
    		$(function(){
    			setTimeout(function () {
    				location.href='{NEWORDER_PRD_ORDER_URL|cot_redirect()}';
    			}, 15000);
    		});
    	</script>
    	<!-- ENDIF -->
<div class="uk-section uk-padding-remove-vertical uk-background-primary uk-visible@m">
	<div class="uk-container uk-container-large uk-padding-small uk-link-text">
		<ul class="uk-breadcrumb">
            <li><a href="{PHP.cfg.mainurl}">{PHP.L.Home}</a></li>
            {NEWORDER_PRD_TITLE|ul_transform($this)}
		</ul>
	</div>
</div>
<div class="uk-section uk-padding-remove-vertical uk-background-default">
    <div class="uk-container uk-container-large uk-margin-top uk-margin-bottom">
		<div class="uk-margin-top uk-margin-bottom uk-text-center">
			<h2 class="uk-heading-bullet uk-text-uppercase uk-text-bold uk-link-text">{PHP.L.marketorders_neworder_title}</h2>
			<hr class="uk-divider-icon uk-margin-auto uk-width-1-3@m">    
		</div>
	  <!-- IF {NEWORDER_PRD_ALLOW_ONLINE_ORDER} == 'Нет' -->
      <div class="uk-margin-top">
	    <div class="uk-card uk-card-body uk-background-default uk-border-rounded">
			<div class="uk-alert-danger uk-border-rounded" uk-alert>
				<h3 class="uk-text-danger uk-text-light">Онлайн заказ и оплата времено приостановлена пользователем, но Вы можете:</h3>
				<ul class="uk-list uk-list-divider">
					<li class="uk-link-text uk-text-light">1. Зайти на страницу продавца(исполнителя) <a class="uk-text-danger uk-text-uppercase" href="{PHP.item.user_name|cot_url('users', 'm=details&u='$this)}">{PHP.item.user_name}</a> и связаться с ним напрямую. </li>
					<li class="uk-link-text uk-text-light">2. Ознакомьтесь с другими предложениями раздела <a uk-tooltip="{PHP.L.market_descr}" href="{PHP|cot_url('market')}">{PHP.L.market_title}</a></li>
					<!-- IF {PHP.cot_modules.projects} -->
					<li class="uk-link-text uk-text-light">3. В раздел <a class="" href="{PHP|cot_url('projects')}">«{PHP.L.Prj_Depart_Name}»</a>, <a <!-- IF {PHP.usr.auth_write} -->href="{PHP|cot_url('projects', 'm=add')}"<!-- ENDIF --> > <span class="uk-text-bold uk-text-warning">добавить заявку</span></a> о том, что Вы нуждаетесь в конкретных товарах или услугах. </li>
					<!-- ENDIF -->
				</ul>
			</div>
        </div>
      </div>
	  <!-- ELSE -->
		<div class="uk-grid-small" uk-grid> 
			<div class="uk-width-3-4@m">
				<div class="uk-card uk-card-small uk-card-body uk-background-muted uk-border-rounded uk-margin-bottom">
				{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
				<form action="{NEWORDER_FORM_SEND}" method="post" name="neworderform" class="uk-form-stacked uk-margin-large">
					<div class="uk-grid-collapse" uk-grid>
					<!-- IF {NEWORDER_PRD_ID|att_count('market',$this,'','images')} > 0 -->
						<div  class="uk-width-auto@m uk-width-1-4@m" data-att-display="all">				{NEWORDER_PRD_ID|att_display('market',$this,'','attacher.display.marketorders_purchases','images',1)}
						</div>
					<!-- ENDIF -->
						<div class="uk-width-expand@m uk-width-3-4@m">
							<div class="uk-card uk-card-small uk-card-body">	
								<ul class="uk-list uk-list-divider">
									<li class=""><span class="uk-heading-blilet uk-h4">ID карточки предложения в маркетплейсе: [ID {NEWORDER_PRD_ID}]</span></li>
									<li class=""><span class="uk-heading-blilet uk-h4"><a href="{NEWORDER_PRD_URL}" uk-tooltip="открыть карточку товара или услуги">{NEWORDER_PRD_SHORTTITLE}</a></span></li>
									<li class="">Размещенно: <span uk-icon="calendar" class="uk-margin-small-right uk-icon"></span><span class="uk-text-middle uk-text-success">{NEWORDER_PRD_DATE}</span></li>
									<li class="">Обновленно: <span uk-icon="calendar" class="uk-margin-small-right uk-icon"></span><span class="uk-text-middle uk-text-success">{PHP.item.item_update|cot_date('l, d F Y H:i', $this)}</span></li>
									<li>Текущая стоимость: <span class="uk-text-danger">{NEWORDER_PRD_COST} </span>{PHP.cfg.payments.valuta}</li>
									<li>Деньги защищены на: <span class="uk-text-danger">{PHP.cfg.plugin.marketorders.warranty} </span>дней</li>
									<li>Комиссия за продажи  <span class="uk-text-danger">{PHP.cfg.plugin.marketorders.tax} (%) </span>платит продавец</li>
									<li>Продавец: <a class="uk-text-danger uk-text-uppercase" href="{PHP.item.user_name|cot_url('users', 'm=details&u='$this)}">{PHP.item.user_name}</a></li>
								</ul>
							</div>
						</div>
					</div>
			<hr class="uk-divider-icon uk-margin-small">
			<div class="uk-margin-top">
				<label class="col-md-3 form-control-label">{PHP.L.marketorders_neworder_count}:</label>
				<div class="col-md-9">{NEWORDER_FORM_COUNT}</div>
			</div>
			<div class="uk-margin-top">
				<label class="col-md-3 form-control-label">{PHP.L.marketorders_neworder_comment}:</label>
				<div class="col-md-9">{NEWORDER_FORM_COMMENT}</div>
			</div>
			<div class="uk-margin-top">
					<div class="uk-grid-small" uk-grid>
						<div class="uk-width-expand uk-flex uk-flex-bottom" uk-leader="fill: -">
							<span class="uk-text-large uk-link-text">{PHP.L.marketorders_neworder_total}:</span>
						</div>
						<div>
							<span class="uk-text-large uk-text-danger" id="total">{NEWORDER_PRD_COST}</span> {PHP.cfg.payments.valuta}
						</div>
					</div>
			</div>
			<div class="uk-margin-top">
			<!-- IF {NEWORDER_PRD_COST} > {PHP.usr.id|cot_payments_getuserbalance($this)} -->
			<div class="uk-alert-warning" uk-alert>
				<a class="uk-alert-close" uk-close></a>
				<p><span class="uk-link-text">{PHP.L.User_balance}: </span><span class="uk-text-bold uk-text-danger">{PHP.usr.id|cot_payments_getuserbalance($this)} {PHP.cfg.payments.valuta}</span></p>
				<p><span class="uk-text-bold uk-text-danger">В кошельке недостаточно средств. </span><span class="uk-text-bold uk-text-primary"> Это не проблема!</span></p>
				<ul class="uk-list uk-list-divider">
					<li><span class="uk-link-text">1. Внимательно ознакомьтесь с предложением и его продавцом</span></li>
					<li><span class="uk-link-text">2. Заполните поля, если это необходимо</span></li>
					<li><span class="uk-link-text">3. Нажмите кнопку покупки, - откроется страница пополнения личного кошелька.</span></li>
					<li><span class="uk-link-text">4. После успешного пополнения, - покупка произойдет автоматически.</span></li>
					<li><span class="uk-link-text">5. Ваша покупка станет доступна в разделе </span> <a uk-tooltip="«{PHP.L.Prd_Marketplace}» - {PHP.L.marketorders_purchases_all_list}" class="uk-animation-toggle" tabindex="0" href="{PHP|cot_url('marketorders', 'm=purchases')}"><img class="uk-margin-small-right  uk-animation-shake" width="27" height="27" alt="" uk-img="data-src: themes/{PHP.theme}/img/icon/cart-purchases.svg" uk-svg="uk-preserve"><span class="uk-text-middle">{PHP.L.marketorders_purchases_all_title}</span></a></li>
				</ul>
			</div>
			<!-- ELSE -->
			<div class="uk-alert-success" uk-alert>
				<a class="uk-alert-close" uk-close></a>
				<p><span class="uk-link-text">{PHP.L.User_balance}: </span><span class="uk-text-bold uk-text-primary">{PHP.usr.id|cot_payments_getuserbalance($this)} {PHP.cfg.payments.valuta}</span></p>
				<p>Средств в кошельке достаточно для совершения покупки</p>
			</div>
			<!-- ENDIF -->
			</div>
			<div class="uk-margin-top uk-text-center">
				<input type="submit" class="btn uk-button uk-button-warning uk-button-large" value="{PHP.L.marketorders_neworder_button}" />
			</div>
		</form>			
		<script>

			$().ready(function() {
				$('#count').bind('change click keyup', function (){
					var prdcost = {PHP.item.item_cost};
					var count = $('input[name="rcount"]').val();
					$('#total').html(prdcost*count);
				});
			});
			
		</script>
				</div>
			</div> 
			<div class="uk-width-1-4@m">
				<div class="uk-card uk-card-small uk-background-default uk-border-rounded uk-margin-bottom">
					{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/plugins/marketorders/marketorders.sidemenu.tpl"}
				</div> 
			</div> 
		</div>
		<!-- ENDIF -->
		
</div>
</div>
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/plugins/marketorders/marketorders.quicksupport.tpl"}
<!-- END: MAIN -->