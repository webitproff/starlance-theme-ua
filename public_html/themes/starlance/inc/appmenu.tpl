<div id="AppMenu" uk-offcanvas>
  <div class="uk-offcanvas-bar">
    <button class="uk-offcanvas-close" type="button" uk-close></button>
    <ul class="uk-list uk-list-divider uk-text-uppercase uk-light">
      <li class="uk-nav-header">{PHP.L.menu_by_section}</li>
      <li>
        <a uk-tooltip="{PHP.L.Home} {PHP.cfg.separator} {PHP.cfg.maintitle} {PHP.cfg.separator} {PHP.cfg.subtitle}" href="{PHP|cot_url('index')}">
          <span class="uk-text-middle uk-h2">
            <i class="ti ti-home"></i>
          </span>
          <span class="uk-text-uppercase uk-text-middle">{PHP.L.Home}</span>
        </a>
      </li>
      <!-- IF {PHP.cot_modules.projects} -->
      <li>
        <a uk-tooltip="{PHP.L.projects_descr}" href="{PHP|cot_url('projects')}">
          <span class="uk-text-middle uk-h2">
            <i class="ti ti-bell-ringing"></i>
          </span>
          <span class="uk-text-uppercase uk-text-middle">{PHP.L.projects_title}</span>
        </a>
      </li>
      <!-- ENDIF -->
      <!-- IF {PHP.cot_modules.services} -->
      <li>
        <a uk-tooltip="{PHP.L.services_descr}" href="{PHP|cot_url('services')}">
          <span class="uk-text-middle uk-h2">
            <i class="ti ti-truck-loading"></i>
          </span>
          <span class="uk-text-uppercase uk-text-middle">{PHP.L.services_title}</span>
        </a>
      </li>
      <!-- ENDIF -->
      <!-- IF {PHP.cot_modules.market} -->
      <li>
        <a uk-tooltip="{PHP.L.market_descr}" href="{PHP|cot_url('market')}">
          <span class="uk-text-middle uk-h2">
            <i class="ti ti-building-store"></i>
          </span>
          <span class="uk-text-uppercase uk-text-middle">{PHP.L.market_title}</span>
        </a>
      </li>
      <!-- ENDIF -->
      <li>
        <a uk-tooltip="{PHP.cot_groups.4.desc}" href="{PHP.cot_groups.4.alias|cot_url('users', 'group='$this)}">
          <span class="uk-text-middle uk-h2">
            <i class="ti ti-users"></i>
          </span>
          <span class="uk-text-uppercase uk-text-middle">{PHP.cot_groups.4.name}</span>
        </a>
      </li>
      <!-- IF {PHP.cot_modules.folio} -->
      <li>
        <a uk-tooltip="{PHP.L.folio_descr}" href="{PHP|cot_url('folio')}">
          <span class="uk-text-middle uk-h2">
            <i class="ti ti-trophy"></i>
          </span>
          <span class="uk-text-uppercase uk-text-middle">{PHP.L.folio_title}</span>
        </a>
      </li>
      <!-- ENDIF -->
      <!-- IF {PHP.cot_modules.forums} -->
      <li>
        <a uk-tooltip="{PHP.L.Forums}" href="{PHP|cot_url('forums')}">
          <span class="uk-text-middle uk-h2">
            <i class="ti ti-blockquote"></i>
          </span>
          <span class="uk-text-uppercase uk-text-middle">{PHP.L.Forums}</span>
        </a>
      </li>
      <!-- ENDIF -->
      <!-- IF {PHP.cot_modules.page} -->
      <li>
        <a uk-tooltip="{PHP.L.News}" href="{PHP|cot_url('page', 'c=news')}">
          <span class="uk-text-middle uk-h2">
            <i class="ti ti-news"></i>
          </span>
          <span class="uk-text-uppercase uk-text-middle">{PHP.L.News}</span>
        </a>
      </li>
      <!-- ENDIF -->
      <!-- IF {PHP.cot_plugins_active.contact} -->
      <li>
        <a uk-tooltip="{PHP.L.Contact}" href="{PHP|cot_url('contact')}">
          <span class="uk-text-middle uk-h2">
            <i class="ti ti-mail-forward"></i>
          </span>
          <span class="uk-text-uppercase uk-text-middle">{PHP.L.Contact}</span>
        </a>
      </li>
      <!-- ENDIF -->
      <li>
        <a class="uk-animation-toggle" tabindex="0" href="{PHP|cot_url('plug','e=search')}">
          <img class="uk-animation-shake uk-margin-small-right" width="27" height="27" alt="" src="{PHP.cfg.mainurl}/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/icon/search.svg" uk-svg="uk-preserve">
          <span class="uk-text-middle">{PHP.L.Search}</span>
        </a>
      </li>
    </ul>
    <!-- Закоментировано
		<hr class="uk-divider-icon"><ul class="uk-nav-default uk-nav-center" uk-nav><li><a href="http://masterscity.abuyfile.com/apps/MastersCity.apk" title="Скачать андроид-приложение фриланс маркеплейса MastersCity для вашего смартфона" download><img data-src="/{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/img/download-android-app.png" width="200" height="" alt="Скачать андроид-приложение фриланс маркеплейса MastersCity для вашего смартфона" uk-tooltip="Скачать андроид-приложение фриланс маркеплейса MastersCity для вашего смартфона" uk-img></a></li></ul> 
		-->
  </div>
</div>