<div class="uk-position-relative uk-visible-toggle" tabindex="-1"  uk-slideshow="min-height: 420; max-height: 600; animation: push">
    <ul class="uk-slideshow-items">
        <li>
            <img src="themes/{PHP.theme}/img/slider/Delivery_express.jpg" alt="" uk-cover>
            <div class="uk-position-center  uk-position-small uk-text-center">
		<div class="uk-container-large uk-overlay uk-overlay-default uk-border-rounded-mdm uk-text-center uk-margin-large-bottom">
			<h1 class="uk-link-text uk-text-uppercase uk-heading-large uk-text-bold uk-visible@m">{PHP.cfg.maintitle}</h1>
			<h2 class="uk-link-text uk-text-uppercase uk-heading-medium uk-text-bold uk-hidden@m">{PHP.cfg.maintitle}</h2>
			<h4 class="uk-link-text uk-visible@s uk-text-bold uk-text-uppercase">{PHP.cfg.subtitle}</h4>
			<h4 class="uk-link-text uk-hidden@s ">{PHP.cfg.subtitle}</h4>
		</div>
            </div>
        </li>
    </ul>
    <div class="uk-visible@s">
    <a class="uk-position-center-left uk-position-small uk-icon-button uk-button-danger uk-hidden-hover" href="#" uk-slidenav-previous uk-slideshow-item="previous"></a>
    <a class="uk-position-center-right uk-position-small uk-icon-button uk-button-danger uk-hidden-hover" href="#" uk-slidenav-next uk-slideshow-item="next"></a>
    </div>
    <div class="uk-hidden@s">
    <a class="uk-position-center-left uk-position-small uk-hidden-hover" href="#" uk-slidenav-previous uk-slideshow-item="previous"></a>
    <a class="uk-position-center-right uk-position-small uk-hidden-hover" href="#" uk-slidenav-next uk-slideshow-item="next"></a>
    </div>
	<div class="uk-visible@s uk-position-bottom uk-overlay uk-text-center">
		<ul class="uk-slideshow-nav uk-dotnav uk-flex-center uk-margin-small-top uk-margin-small-bottom"></ul>
	</div>
</div>
<div class="uk-background-muted uk-section uk-padding-small">
	<div class="uk-container">
		<div class="uk-visible@m uk-grid-small uk-child-width-1-2@m" uk-grid>
			<div>
				<a uk-tooltip="{PHP.L.Prj_Slider_Add_Prj_tooltip}" class="uk-button uk-button-success uk-button-large uk-width-1-1"href="#AuthModal" uk-toggle>
              <span class="uk-text-middle uk-h20">
                <i class="uk-light ti ti-bell-ringing"></i>
              </span>
				<span class="uk-text-middle">{PHP.L.Prj_Slider_Add_Prj}</span></a>
			</div>
			<div>
				<a uk-tooltip="{PHP.L.Prd_Slider_Add_Prd_tooltip}" class="uk-button uk-button-linear uk-button-large uk-width-1-1 uk-animation-toggle" tabindex="0"  href="#AuthModal" uk-toggle><span uk-icon="credit-card" class="uk-margin-small-right uk-animation-slide-left"></span><span class="uk-text-middle">{PHP.L.Prd_Slider_Add_Prd}</span></a>
			</div>
		</div> 
		<div class="uk-hidden@m uk-grid-small uk-child-width-1-2@s" uk-grid>
			<div>
				<a uk-tooltip="{PHP.L.Prj_Slider_Add_Prj_tooltip}" class="uk-button uk-button-success uk-button-large uk-width-1-1 uk-animation-toggle" tabindex="0" href="#AuthModal" uk-toggle>              
				<span class="uk-text-middle uk-h2">
                <i class="uk-light ti ti-bell-ringing"></i>
              </span>
			  <span class="uk-text-middle">{PHP.L.Prj_Slider_Add_Prj}</span></a>
			</div>
			<div>
				<a uk-tooltip="{PHP.L.Prd_Slider_Add_Prd_tooltip}" class="uk-button uk-button-linear uk-button-large uk-width-1-1 uk-animation-toggle" tabindex="0"  href="#AuthModal" uk-toggle><span uk-icon="credit-card" class="uk-margin-small-right uk-animation-slide-left"></span><span class="uk-text-middle">{PHP.L.Prd_Slider_Add_Prd}</span></a>
			</div>
		</div>
	</div>
</div>