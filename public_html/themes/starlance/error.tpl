<!-- BEGIN: MAIN -->
<!DOCTYPE html>
<html>
<head>
<title>{MESSAGE_TITLE}</title> 
<meta htuk-equiv="content-type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="generator" content="by webitproff on Cotonti http://www.cotonti.com" />
<!-- UIkit CSS -->
<link href="{PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/css/uikit.min.css" type="text/css" rel="stylesheet" />
<link href="{PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/css/starlance.css" type="text/css" rel="stylesheet" />
<!-- UIkit JS -->
<script src="{PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/js/uikit.min.js"></script>
<script src="{PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/js/uikit-icons.min.js"></script>
{MESSAGE_BASEHREF}
{MESSAGE_STYLESHEET}
</head>
<body>
<div class="uk-background-cover uk-height-medium" style="background-image: url(themes/starlance/img/bg-ath.png);">
	<div class="uk-section uk-padding uk-position-center uk-position-small uk-text-center">
        <div class="uk-panel uk-animation-fade uk-flex-auto">
			<h1 class="uk-heading-bullet uk-text-uppercase uk-text-primary uk-text-bold uk-visible@m">{PHP.cfg.maintitle}</h1>
			<h2 class="uk-heading-bullet uk-text-uppercase uk-text-primary uk-text-bold uk-hidden@m">{PHP.cfg.maintitle}</h2>
			<div class="uk-margin-large uk-card uk-card-small uk-card-default uk-card-body uk-border-rounded uk-text-left uk-width-1-1">
				<div class="uk-alert-warning" uk-alert>
					<h3 class="uk-card-title uk-text-danger">{MESSAGE_TITLE}</h3>
					<span class="uk-text-secondary">
					{MESSAGE_BODY}
					</span>
				</div>
			</div>
		</div>
		<hr class="uk-divider-icon">
		<div class="uk-panel uk-margin-top">
			<div class="uk-grid-small uk-child-width-1-2@m" uk-grid>
				<div>
					<a uk-tooltip="{PHP.L.Home}" class="uk-button uk-button-linear uk-button-large uk-width-1-1 uk-animation-toggle" tabindex="0" href="{PHP|cot_url('index')}"><span uk-icon="home" class="uk-margin-small-right uk-animation-shake"></span><span class="uk-text-middle">{PHP.L.Home}</span></a>
				</div>
				<div>
					<a uk-tooltip="открыть страницу поиска по сайту" class="uk-button uk-button-default uk-button-large uk-width-1-1 uk-animation-toggle" tabindex="0" href="{PHP|cot_url('plug','e=search')}"><span uk-icon="search" class="uk-margin-small-right uk-animation-shake"></span><span class="uk-text-middle">Найти на сайте</span></a>
				</div>
			</div>
		</div>			
		<div class="uk-panel uk-margin-large-top uk-flex-auto">
			<p><a href="https://github.com/Cotonti/Cotonti" class="uk-link-text" target="blank"><span class="uk-text-middle uk-text-uppercase uk-text-warning" uk-tooltip="Сайт работает на Cotonti CMF, открыть исходный код на GitHub">Powered by</span></a> <img class="" src="themes/{PHP.theme}/img/cotonti-icon-by-webitproff.png" width="27" height="27" alt="Cotonti CMF"> <a href="https://t.me/webitproff" class="uk-link-text" target="blank"><span class="uk-text-middle uk-text-uppercase uk-text-primary" uk-tooltip="написать в телеграм">webitproff</span></a></p>
			<p><span class="uk-text-small">© 2020 - {PHP.sys.now|cot_date('Y', $this)} | Built with <a href="//getuikit.com" title="Visit UIkit 3 site front-end framework" target="_blank" uk-tooltip><span uk-icon="uikit"></span></a></p>     
		</div>
	</div>
</div>
</body>
</html>
<!-- END: MAIN -->