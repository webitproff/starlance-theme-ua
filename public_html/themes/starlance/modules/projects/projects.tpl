<!-- BEGIN: MAIN -->
<div class="uk-section uk-padding-remove-vertical uk-background-primary uk-visible@m">
  <div class="uk-container uk-container-large uk-padding-small uk-link-text">
    <ul class="uk-breadcrumb">
      <li>
        <a href="{PHP.cfg.mainurl}">{PHP.L.Home}</a>
      </li> {PRJ_TITLE|ul_transform($this)}
    </ul>
  </div>
</div>
<div class="uk-section uk-background-muted">
  <div class="uk-container">
    <!-- IF {PRJ_STATE} == 2 -->
    <div class="uk-alert-warning" uk-alert>{PHP.L.projects_forreview}</div>
    <!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} --> Администратор, в админке сайта 
	<hr class="uk-margin-small">
	<a href=" {PHP.cfg.mainurl}/admin/projects?m=projects&p=default&c=&type=&sq=&country=0&c=&sort=&state=2" class="uk-button uk-button-danger">утвердите проект</a>
    <!-- ENDIF -->
    <!-- ENDIF -->
    <!-- IF {PRJ_STATE} == 1 -->
    <div class="uk-alert-warning" uk-alert>{PHP.L.projects_hidden}</div>
    <!-- ENDIF -->
    <div class="uk-card uk-card-default uk-card-small uk-margin-bottom uk-margin-top uk-border-rounded">
      <!-- IF {PRJ_USER_IS_ADMIN} -->
      <div class="uk-position-top-right uk-position-z-index">
        <a class="uk-icon-button uk-button-danger uk-icon" uk-icon="icon: cog; ratio: 1.5"></a>
        <div uk-dropdown="mode: click; animation: uk-animation-slide-left;">
          <ul class="uk-nav uk-dropdown-nav uk-list uk-list-divider">
            <li class="uk-nav-header">
              <span class="uk-link-text">{PRJ_ADMIN_EDIT}</span>
            </li>
            <!-- IF {PRJ_STATE} != 2 -->
            <li>
              <a href="{PRJ_HIDEPROJECT_URL}" class="uk-link-text">{PRJ_HIDEPROJECT_TITLE}</a>
            </li>
            <!-- IF {PRJ_PERFORMER} -->
            <li>
              <a href="{PRJ_REALIZEDPROJECT_URL}" class="uk-link-text">{PRJ_REALIZEDPROJECT_TITLE}</a>
            </li>
            <!-- ENDIF -->
            <!-- ENDIF -->
          </ul>
        </div>
      </div>
      <!-- ENDIF -->
      <div class="uk-grid-small uk-grid-divider" uk-grid>
        <div class="uk-width-3-4@m">
          <div class="uk-panel uk-padding-small">
            <h1 class="uk-heading-bullet uk-text-light uk-h3">{PRJ_SHORTTITLE} - {PRJ_CATTITLE}
              <!-- IF {PRJ_COUNTRY} OR {PRJ_REGION} OR {PRJ_CITY} --> {PRJ_COUNTRY} {PRJ_REGION} {PRJ_CITY}
              <!-- ENDIF -->
            </h1>
          </div>
        </div>
        <div class="uk-width-1-4@m">
          <div class="uk-panel uk-padding-small">
            <!-- IF {PRJ_COST} > 0 -->
            <div class="uk-text-center">
              <span class="uk-link-text">{PHP.L.projects_price}: </span>
              <span class="uk-button uk-button-small uk-button-success">{PRJ_COST}</span>
              <span class="uk-text-warning"> {PHP.cfg.payments.valuta}</span>
            </div>
            <!-- ELSE --> не указано
            <!-- ENDIF -->

          </div>
        </div>
      </div>
		<hr class="uk-margin-small">
		<div class="uk-grid-small uk-grid-divider uk-child-width-expand@m uk-text-center" uk-grid>
			<div>
				<p class="uk-margin-remove"><span class="uk-icon uk-text-warning" uk-icon="icon: users; ratio: 1.2"></span><span class="uk-text-bold uk-link-text uk-margin-small-left uk-text-middle" uk-tooltip="Количество просмотров">{PRJ_COUNT}</span> просмотров</p>
			</div>
			<div>
				<p class="uk-margin-remove">{PHP.L.Date}: {PRJ_DATE}</p>
			</div>
			<div>
				<p class="uk-margin-remove"><span class="uk-text-danger uk-margin-small-left uk-text-middle" uk-tooltip="{PHP.L.offers_count}" uk-icon="icon: commenting"> {PRJ_OFFERS_COUNT|cot_declension($this, '')}</span> предложений </p>
			</div>
		</div>
      <div class="uk-card-body">

	  {PRJ_TEXT}
        <!-- IF {PRJ_REALIZED} -->
        <div class="uk-text-bold uk-text-danger">{PHP.L.projects_isrealized}</div>
        <!-- ENDIF -->
        <p class="uk-heading-line">
          <span class="uk-comment-meta">{PHP.cot_groups.7.title} </span>
        </p>
        <div class="uk-comment-header">
          <div class="uk-grid-medium uk-flex-middle" uk-grid>
            <div class="uk-width-auto">
              <!-- IF {PRJ_OWNER_AVATAR_SRC} -->
              <img class="uk-comment-avatar uk-border-rounded" src="{PRJ_OWNER_AVATAR_SRC}" width="50" height="50" alt="">
              <!-- ELSE -->
              <img class="uk-border-rounded" width="50" height="50" alt="{PRJ_OWNER_AVATAR_SRC}" src="themes/{PHP.theme}/img/avatar.png">
              <!-- ENDIF -->
            </div>
            <div class="uk-width-expand">
              <h4 class="uk-comment-title uk-margin-remove">{PRJ_OWNER_NAME}</h4>
              <div class="uk-comment-meta uk-margin-remove-top">
                <!-- IF {PRJ_PERFORMER_TEXT} -->
                <span class="uk-text-muted">О себе: </span>
                <span class="">{PRJ_OWNER_TEXT}</span>
                <!-- ENDIF -->
                <p>
                  
                </p>
              </div>
            </div>
          </div>
        </div>
        <!-- IF {PRJ_ID|att_count('projects',$this)} > 0 -->
        <hr class="uk-divider-icon uk-margin-small">
        <div data-att-display="all">
          <p>{PHP.L.att_attachments} <span class="uk-margin-small-left uk-icon uk-text-warning" uk-icon="icon: image; ratio: 1.2"></span>
            <span class="uk-text-bold uk-link-text uk-margin-small-left uk-text-middle" uk-tooltip="Всего прикрепленно файлов / из них картинок / другие">{PRJ_ID|att_count('projects',$this)}/{PRJ_ID|att_count('projects',$this,'','images')}/{PRJ_ID|att_count('projects',$this,'','files')}</span>
          </p> {PRJ_ID|att_display('projects',$this,'','attacher.display.projects','all')}
        </div>
        <!-- ENDIF -->
      </div>

    </div>
      <!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
      <div class="uk-margin-remove-vertical uk-alert-primary" uk-alert>
        <a class="uk-alert-close" uk-close></a>
        <p>Расположение файла, формирующего шаблон страницы:</p>
        <div class="uk-panel uk-text-break uk-text-secondary"><span class="uk-text-danger uk-margin-small-right" uk-icon="arrow-up"></span>{PHP.mskin}</div>
      </div>
      <!-- ENDIF -->
  </div>
</div>
<div class="uk-section uk-padding-remove-vertical uk-background-muted">
  <div class="uk-container"> {OFFERS} </div>
</div>
<!-- END: MAIN -->