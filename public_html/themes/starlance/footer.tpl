<!-- BEGIN: FOOTER -->
<div class="footer uk-background-secondary">
	<div class="uk-container uk-container-large uk-padding-small">
	<div class="uk-card ">
		<div class="uk-grid uk-grid-medium" uk-grid>
			<div class="uk-width-1-4@s">
				<h3 class="uk-heading-bullet uk-text-bold uk-light uk-text-uppercase">{PHP.cfg.maintitle}</h3>
				<hr class="uk-divider-icon">
				<p class="uk-light uk-font-face"> {PHP.cfg.subtitle} <br>{PHP.L.feedback_form} <a href="{PHP|cot_url('contact')}" title="">{PHP.cfg.adminemail}</a></p>
				<div>
					<a href="{PHP.R.Instagram}" target="_blank" class=""  uk-tooltip="{PHP.cfg.maintitle} в Instagram открыть нашу страницу в новой вкладке"><img class="" width="36" height="36" alt="" src="{PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/iconsoclogo/instagram.svg" uk-svg="uk-preserve"  ></a>
					<a href="{PHP.R.Facebook}" target="_blank" class="" uk-tooltip="{PHP.cfg.maintitle} на FaceBook открыть нашу страницу в новой вкладке"><img class="" width="36" height="36" alt="" src="{PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/iconsoclogo/facebook.svg" uk-svg="uk-preserve"></a>
					<a href="{PHP.R.Youtube}" target="_blank" class="" uk-tooltip="{PHP.cfg.maintitle} на Youtube открыть нашу страницу в новой вкладке"><img class="" width="36" height="36" alt="" src="{PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/iconsoclogo/YouTube_soc.svg" uk-svg="uk-preserve"  ></a>
					<a href="{PHP.R.Telegram}" target="_blank" class="" uk-tooltip="{PHP.cfg.maintitle} на TELEGRAM открыть нашу страницу в новой вкладке"><img class="" width="36" height="36" alt="" src="{PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/iconsoclogo/telegram.svg" uk-svg="uk-preserve"  ></a>
					
				</div>
			</div>
			<div class="uk-width-1-4@s">
			{PHP.cfg.menu7}
			<!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
			<div class="uk-margin-remove-vertical uk-alert-primary uk-visible@l" uk-alert>
				<a class="uk-alert-close" uk-close></a>
				<div class="uk-panel uk-text-break uk-text-secondary">
				<p>{PHP.L.notemenu7}</p>
				</div>
			</div>
			<!-- ENDIF -->
			</div>
			<div class="uk-width-1-4@s">
			{PHP.cfg.menu8}
			<!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
			<div class="uk-margin-remove-vertical uk-alert-primary uk-visible@l" uk-alert>
				<a class="uk-alert-close" uk-close></a>
				<div class="uk-panel uk-text-break uk-text-secondary">
				<p>{PHP.L.notemenu8}</p>
				</div>
			</div>
			<!-- ENDIF -->
			</div>
			<div class="uk-width-1-4@s">
			{PHP.cfg.menu9}
			<!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
			<div class="uk-margin-remove-vertical uk-alert-primary uk-visible@l" uk-alert>
				<a class="uk-alert-close" uk-close></a>
				<div class="uk-panel uk-text-break uk-text-secondary">
				<p>{PHP.L.notemenu9}</p>
				</div>
			</div>
			<!-- ENDIF -->
			</div>				
		</div>
	</div>
	<hr class="uk-margin-small">
	<div class="uk-flex-middle" uk-grid>
		<div class="uk-width-expand@m">
			<div class=" uk-grid-small" uk-grid>
				<div>
					<!-- IF {PHP.cot_plugins_active.easypay} -->
					<a uk-tooltip="Простой платёж в поддержку проекта, популярными платежными способами, без регистрации на сайте" class="uk-button uk-button-linear uk-animation-toggle" tabindex="0" href="{PHP|cot_url('easypay', 'code=donation')}"><img class="uk-margin-small-right uk-animation-shake" width="27" height="27" alt="" src="{PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/icon/wallet.svg" uk-svg="uk-preserve"><span class="uk-text-middle">Сказать спасибо</span></a>
					<!-- ENDIF -->		
				</div>
				<div>
					<a rel="nofollow" href="{PHP.R.payments_manual_link}" uk-tooltip="ЮMoney - Принимаем YooMoney и оплату на сайте картами">
						<img class="" width="40" height="38" alt="Принимаем YooMoney и оплату на сайте картами" src="themes/{PHP.theme}/img/payments/io.svg" uk-svg="uk-preserve">
					</a>
				</div>
				<div>
			<a href="{PHP.R.payments_manual_link}"><img class="uk-border-rounded-mdm" width="150" height="38" src="{PHP.cfg.themes_dir}/{PHP.theme}/img/payments/pay_visa_mc.png" title="Принимаем оплату на сайте картами"></a>
				</div>
			</div>
		</div>
		
		<div class="uk-width-auto@m">
			<a href="#_" title="Скачать андроид-приложение для вашего смартфона" download><img data-src="/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/download-android-app.png" width="200" height="" alt="Скачать андроид-приложение для вашего смартфона" uk-tooltip="Скачать андроид-приложение для вашего смартфона" uk-img></a>
		</div> 
		
	</div>
	</div>
</div>
<div class="uk-section uk-padding-remove-vertical starlance-bg-darkgreenblue">
	<div class="uk-container uk-container-large uk-padding-small">
		
		<div class="uk-grid-collapse uk-child-width-expand@s uk-text-center" uk-grid>
			<div>
				<p class="uk-margin-remove uk-text-small uk-light">{PHP.cfg.maintitle} &copy; 2021 - {PHP.sys.now|cot_date('Y', $this)}</p>
			</div>
			<div>
				<p class="uk-margin-remove"><a href="https://github.com/Cotonti/Cotonti" class="uk-link-text" target="blank"><span class="uk-text-middle uk-text-uppercase uk-text-warning" uk-tooltip="Сайт работает на Cotonti CMF, открыть исходный код на GitHub">Powered by</span></a> <img class="" src="themes/{PHP.theme}/img/cotonti-icon-by-webitproff.png" width="27" height="27" alt="Cotonti CMF"> <a href="https://t.me/webitproff" class="uk-link-text" target="blank"><span class="uk-text-middle uk-text-uppercase uk-text-primary" uk-tooltip="написать в телеграм">webitproff</span></a></p>
			</div>
			<div>
				<p class="uk-margin-remove uk-text-small uk-light">{FOOTER_CREATIONTIME}</p>
			</div>
		</div>	
	</div>
</div>
<!-- IF {PHP.usr.id} == 0 -->
<!-- IF {PHP.env.ext} == 'index' OR {PHP.env.ext} == 'projects' OR {PHP.env.ext} == 'market' -->
<!-- IF {PHP.cot_plugins_active.boxes} AND {PHP.box2} -->
<!-- <div class="box2" data-timeout="10000">{PHP.box2}</div> -->
<script>
document.addEventListener('DOMContentLoaded', function () {

	var Alerts = document.querySelectorAll(".box2");
		if (Alerts.length > 0) {
			Alerts.forEach(function(el) {
				var Timeout = el.getAttribute('data-timeout');
				console.log(Timeout);
				alertTimeout = setTimeout(function() {
	         		UIkit.alert(el).close();
	    		}, Timeout)
			});
		}

});
</script>
<!-- ENDIF -->
<!-- ENDIF -->
<!-- ENDIF -->
<!-- AppMenu - left hamburger menu for mobile device -->
{FILE "themes/{PHP.theme}/inc/appmenu.tpl"}
<!-- AppMenu END -->
<!-- IF {PHP.usr.id} == 0 -->
{FILE "themes/{PHP.theme}/inc/aut_user.tpl"}
{FILE "themes/{PHP.theme}/inc/authmodal.tpl"}
<!-- ENDIF -->
<div <!-- IF !{PHP.usr.maingrp} == 5 -->style="display: none;"<!-- ENDIF --> class="uk-section uk-padding-remove-vertical uk-background-primary uk-visible@m">
	<div class="uk-container uk-container-large uk-padding-small uk-link-text">
		{FOOTER_BOXES_STAT}
	</div>
</div>
{FOOTER_RC}
</body>
</html>
<!-- END: FOOTER -->