<!-- BEGIN: MAIN -->
    	<!-- IF {NEWORDER_SERV_ORDER_ID} -->
    	<h4 class="uk-text-center uk-text-bold uk-text-danger">Вы уже купили этот товар или услугу!</h4>
    	<script>
    		$(function(){
    			setTimeout(function () {
    				location.href='{NEWORDER_SERV_ORDER_URL|cot_redirect()}';
    			}, 15000);
    		});
    	</script>
    	<!-- ENDIF -->
<div class="uk-section uk-padding-remove-vertical uk-background-primary uk-visible@m">
	<div class="uk-container uk-container-large uk-padding-small uk-link-text">
		<ul class="uk-breadcrumb">
            {NEWORDER_SERV_TITLE|ul_transform($this)}
		</ul>
	</div>
</div>
<div class="uk-section uk-padding-remove-vertical uk-background-default">
    <div class="uk-container uk-container-large uk-margin-top uk-margin-bottom">
<h1>{PHP.L.orderservices_neworder_title}</h1>
	  <!-- IF {NEWORDER_SERV_ALLOW_ONLINE_ORDER} == 'Нет' -->
      <div class="uk-margin-top">
	    <div class="uk-card uk-card-body uk-background-default uk-border-rounded">
			<div class="uk-alert-danger uk-border-rounded" uk-alert>
				<h3 class="uk-text-danger uk-text-light">Онлайн заказ и оплата времено приостановлена пользователем, но Вы можете:</h3>
				<ul class="uk-list uk-list-divider">
					<li class="uk-link-text uk-text-light">1. Зайти на страницу продавца(исполнителя) <a class="uk-text-danger uk-text-uppercase" href="{PHP.item.user_name|cot_url('users', 'm=details&u='$this)}">{PHP.item.user_name}</a> и связаться с ним напрямую. </li>
					<li class="uk-link-text uk-text-light">2. Воспользуйтесь другими услугами раздела <a uk-tooltip="{PHP.L.services_descr}" href="{PHP|cot_url('services')}">{PHP.L.services_title}</a></li>
					<!-- IF {PHP.cot_modules.projects} -->
					<li class="uk-link-text uk-text-light">3. В раздел <a class="" href="{PHP|cot_url('projects')}">«{PHP.L.Prj_Depart_Name}»</a>, <a <!-- IF {PHP.usr.auth_write} -->href="{PHP|cot_url('projects', 'm=add')}"<!-- ENDIF --> > <span class="uk-text-bold uk-text-warning">добавить заявку</span></a> о том, что Вы нуждаетесь в конкретных услугах. </li>
					<!-- ENDIF -->
				</ul>
			</div>
        </div>
      </div>
	  <!-- ELSE -->
<div class="customform">
	{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
	<form action="{NEWORDER_FORM_SEND}" method="post" name="neworderform">
		<table class="table">
			<tr>
				<td align="right" style="width:176px;">{PHP.L.orderservices_neworder_product}:</td>
				<td>[ID {NEWORDER_SERV_ID}] {NEWORDER_SERV_SHORTTITLE}</td>
			</tr>
			<tr>
				<td align="right">{PHP.L.orderservices_neworder_count}:</td>
				<td>{NEWORDER_FORM_COUNT}</td>
			</tr>
			<tr>
				<td align="right">{PHP.L.orderservices_neworder_comment}:</td>
				<td>{NEWORDER_FORM_COMMENT}</td>
			</tr>
			<tr>
				<td align="right">{PHP.L.orderservices_neworder_total}:</td>
				<td><span id="total">{NEWORDER_SERV_COST}</span> {PHP.cfg.payments.valuta}</td>
			</tr>
			<!-- IF {PHP.usr.id} == 0 -->
			<tr>
				<td align="right">{PHP.L.orderservices_neworder_email}:</td>
				<td>{NEWORDER_FORM_EMAIL}</td>
			</tr>
			<!-- ENDIF -->
			<tr>
				<td></td>
				<td>
					<input type="submit" class="btn btn-large btn-success" value="{PHP.L.orderservices_neworder_button}" />
				</td>
			</tr>
		</table>
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

<!-- ENDIF -->
	</div>
</div>
<!-- END: MAIN -->