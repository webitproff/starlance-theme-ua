<!-- IF {PHP.usr.id} == 0 -->
<header class="uk-position-relative">
  <div class="starlance-bg-darkgreenblue" uk-sticky="top: 10; animation: uk-animation-slide-top">
    <nav class="uk-navbar-height uk-navbar-container uk-container uk-container-large uk-navbar-transparent" uk-navbar>
      <div class="uk-navbar-left uk-light">
        <ul class="uk-navbar-nav uk-light">
          <li>
            <a rel="ugc nofollow" uk-toggle="target: #AppMenu" href="#">
              <span class="uk-text-middle uk-h2">
                <i class="ti ti-menu-2"></i>
              </span>
            </a>
          </li>
        </ul>
      </div>
      <div class="uk-navbar-left uk-light uk-visible@s uk-hidden@l">
        <ul class="uk-navbar-nav uk-light">
          <li>
            <a uk-tooltip="{PHP.L.Home} {PHP.cfg.separator} «{PHP.cfg.maintitle}» {PHP.cfg.separator} {PHP.cfg.subtitle}" href="{PHP|cot_url('index')}">
              <span class="uk-text-middle uk-h2">
                <i class="ti ti-home"></i>
              </span>
            </a>
          </li>
          <!-- IF {PHP.cot_modules.projects} -->
          <li>
            <a uk-tooltip="{PHP.L.projects_descr}" href="{PHP|cot_url('projects')}">
              <span class="uk-text-middle uk-h2">
                <i class="ti ti-bell-ringing"></i>
              </span>
            </a>
          </li>
          <!-- ENDIF -->
          <!-- IF {PHP.cot_modules.services} -->
          <li>
            <a uk-tooltip="{PHP.L.services_descr}" href="{PHP|cot_url('services')}">
              <span class="uk-text-middle uk-h2">
                <i class="ti ti-truck-loading"></i>
              </span>
            </a>
          </li>
          <!-- ENDIF -->
          <!-- IF {PHP.cot_modules.market} -->
          <li>
            <a uk-tooltip="{PHP.L.market_title} {PHP.L.market_descr}" href="{PHP|cot_url('market')}">
              <span class="uk-text-middle uk-h2">
                <i class="ti ti-building-store"></i>
              </span>
            </a>
          </li>
          <!-- ENDIF -->
          <li>
            <a uk-tooltip="{PHP.cot_groups.4.desc}" href="{PHP.cot_groups.4.alias|cot_url('users', 'group='$this)}">
              <span class="uk-text-middle uk-h2">
                <i class="ti ti-users"></i>
              </span>
            </a>
          </li>
          <!-- IF {PHP.cot_modules.folio} -->
          <li>
            <a uk-tooltip="{PHP.L.folio_descr}" href="{PHP|cot_url('folio')}">
              <span class="uk-text-middle uk-h2">
                <i class="ti ti-trophy"></i>
              </span>
            </a>
          </li>
          <!-- ENDIF -->
          <!-- IF {PHP.cot_modules.forums} -->
          <li>
            <a uk-tooltip="{PHP.L.Forums}" href="{PHP|cot_url('forums')}">
              <span class="uk-text-middle uk-h2">
                <i class="ti ti-blockquote"></i>
              </span>
            </a>
          </li>
          <!-- ENDIF -->
          <!-- IF {PHP.cot_modules.page} -->
          <li>
            <a uk-tooltip="{PHP.L.News}" href="{PHP|cot_url('page', 'c=news')}">
              <span class="uk-text-middle uk-h2">
                <i class="ti ti-news"></i>
              </span>
            </a>
          </li>
          <!-- ENDIF -->
          <!-- IF {PHP.cot_plugins_active.contact} -->
          <li>
            <a uk-tooltip="{PHP.L.Contact}" href="{PHP|cot_url('contact')}">
              <span class="uk-text-middle uk-h2">
                <i class="ti ti-mail-forward"></i>
              </span>
            </a>
          </li>
          <!-- ENDIF -->
        </ul>
      </div>
      <div class="uk-navbar-left uk-visible@l">
        <ul class="uk-navbar-nav uk-light">
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
        </ul>
      </div>
      <div class="uk-navbar-right">
        <ul class="uk-navbar-nav uk-light">
          <li>
            <a rel="ugc nofollow" uk-toggle="target: #aut_user" href="#">
              <span class="uk-text-middle uk-h2">
                <i class="ti ti-user-circle"></i>
              </span>
              <span class="uk-text-uppercase uk-text-middle">{PHP.L.My_Profile}</span>
            </a>
        </ul>
      </div>
    </nav>
  </div>
</header>
<!-- ENDIF -->