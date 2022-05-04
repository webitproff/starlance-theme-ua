<!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.maingrp} == 4 -->
<!-- IF {PHP.env.ext} == "marketorders" AND {PHP.m} == "purchases" -->
<a uk-tooltip="«{PHP.L.Prd_Marketplace}» - {PHP.L.marketorders_sales_all_list}" class="uk-button uk-button-details uk-button-large uk-width-1-1 uk-animation-toggle uk-margin-bottom" tabindex="0" href="{PHP|cot_url('marketorders', 'm=sales')}"><img class="uk-margin-small-right  uk-animation-shake" width="27" height="27" alt="" uk-img="data-src: themes/{PHP.theme}/img/icon/cart-sales.svg" uk-svg="uk-preserve"><span class="uk-text-middle">{PHP.L.marketorders_sales_all_title}</span></a>
<!-- ENDIF -->
<!-- ENDIF -->
<!-- IF {PHP.env.ext} == "marketorders" AND {PHP.m} == "sales" OR {PHP.m} == "addclaim" OR {PHP.m} == "order" -->
<a uk-tooltip="«{PHP.L.Prd_Marketplace}» - {PHP.L.marketorders_purchases_all_list}" class="uk-button uk-button-details uk-button-large uk-width-1-1 uk-animation-toggle" tabindex="0" href="{PHP|cot_url('marketorders', 'm=purchases')}"><img class="uk-margin-small-right  uk-animation-shake" width="27" height="27" alt="" uk-img="data-src: themes/{PHP.theme}/img/icon/cart-purchases.svg" uk-svg="uk-preserve"><span class="uk-text-middle">{PHP.L.marketorders_purchases_all_title}</span></a>
<!-- ENDIF -->


<ul class="uk-list uk-list-divider">
	<!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.maingrp} == 4 -->
	<li><a uk-tooltip="«{PHP.L.Prd_Marketplace}» - {PHP.L.Prd_My_Market_showcase_descr}" class="uk-link-text uk-animation-toggle" tabindex="0" href="{PHP.usr.id|cot_url('users', 'm=details&id='$this'&tab=market')}"><img class="uk-margin-small-right  uk-animation-shake" width="27" height="27" alt="" uk-img="data-src: themes/{PHP.theme}/img/icon/my-ecommerce.svg" uk-svg="uk-preserve"><span class="uk-text-middle">{PHP.L.Prd_My_Market_showcase}</span></a></li>
	<!-- ENDIF -->
	<li class="uk-text-truncate"><a uk-tooltip="{PHP.L.User_balance_descr}" class="uk-link-text uk-animation-toggle" tabindex="0" href="{PHP.usr.id|cot_url('payments', 'm=balance')}"><img class="uk-margin-small-right  uk-animation-shake" width="27" height="27" alt="" uk-img="data-src: themes/{PHP.theme}/img/icon/wallet.svg" uk-svg="uk-preserve"><span class="uk-text-middle">{PHP.L.User_balance}</span> <span class="uk-text-middle uk-text-bold uk-text-danger">{PHP.usr.id|cot_payments_getuserbalance($this)} {PHP.cfg.payments.valuta}</span></a></li>
	<li><a uk-tooltip="{PHP.L.Quick_support_link_Descr}" class="uk-link-text uk-animation-toggle" tabindex="0" href="#quick-support-marketorders" uk-toggle><img class="uk-margin-small-right  uk-animation-shake" width="27" height="27" alt="" uk-img="data-src: themes/{PHP.theme}/img/icon/quick-support.svg" uk-svg="uk-preserve"><span class="uk-text-middle">{PHP.L.Quick_support_link_Title}</span></a></li>
	<li uk-lightbox><a uk-tooltip="{PHP.L.How_it_work_link_Descr}" class="uk-link-text uk-animation-toggle" tabindex="0" href="{PHP.R.How_it_work_link_marketorders}" data-caption="YouTube" data-attrs="width: 1280; height: 720;"><img class="uk-margin-small-right uk-animation-shake" width="27" height="27" alt="" uk-img="data-src: themes/{PHP.theme}/img/iconsoclogo/YouTube_soc.svg" uk-svg="uk-preserve"><span class="uk-text-middle">{PHP.L.How_it_work_link_Title}</span></a></li>
	<li><a uk-tooltip="«{PHP.L.Prd_Marketplace}» - {PHP.L.Manual_Faq_link_Descr}" class="uk-link-text uk-animation-toggle" tabindex="0" href="{PHP.R.Manual_Faq_link}"><img class="uk-margin-small-right  uk-animation-shake" width="27" height="27" alt="" uk-img="data-src: themes/{PHP.theme}/img/icon/question.svg" uk-svg="uk-preserve"><span class="uk-text-middle">{PHP.L.Manual_Faq_link_Title}</span></a></li>
</ul>
<!-- IF !{PHP.status} AND {PHP.usr.maingrp} == 7 -->
<div class="uk-margin uk-alert-warning" uk-alert>
    <a class="uk-alert-close" uk-close></a>
    <p>Если вы хотите продать свои товары или услуги, - вам следует в настройках личного профиля сменить группу с покупателя на продавца. После этого, вам станет доступна собственная онлайн-витрина, на которой сможете разместить свои торговые предложения, - добавить товары и услуги.</p>
</div>
<!-- ENDIF -->