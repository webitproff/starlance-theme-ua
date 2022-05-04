<!-- BEGIN: MAIN -->
<div class="uk-section uk-background-muted">
	<div class="uk-container">
		<h3 class="uk-heading-bullet uk-text-uppercase uk-text-bold uk-link-text">{PHP.L.projects_edit_project_title}</h3>
		<div class="uk-card uk-card-small uk-card-body uk-background-default uk-box-shadow-medium uk-border-rounded">
		{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
		<form action="{PRJEDIT_FORM_SEND}" method="post" name="edit" enctype="multipart/form-data" class="uk-form-stacked uk-margin-large">
				<!-- IF {PHP.projects_types} -->
				<div class="uk-margin">
				<h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.Type}:</h4>
					<label class="uk-form-label"></label>
					<div class="uk-form-controls">
							{PRJEDIT_FORM_TYPE}
					</div>
				</div>
				<!-- ENDIF -->
				<div class="uk-margin">
				<h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.Category}:</h4>
					<label class="uk-form-label"></label>
					<div class="uk-form-controls">
							{PRJEDIT_FORM_CAT}
					</div>
				</div>
				<div class="uk-margin">
				<h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.Title}:</h4>
					<label class="uk-form-label"></label>
					<div class="uk-form-controls">
						{PRJEDIT_FORM_TITLE}
					</div>
				</div>
				<div class="uk-margin">
				<h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.Location}:</h4>
					<label class="uk-form-label"></label>
					<div class="uk-form-controls">
							{PRJEDIT_FORM_LOCATION}
					</div>
				</div>
				<!-- IF {PHP.usr.isadmin} -->
				<div class="uk-child-width-1-2@m" uk-grid>
					<div>
						<div class="uk-margin">
						<h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.Alias}:</h4>
							<label class="uk-form-label"></label>
							<div class="uk-form-controls">
								{PRJEDIT_FORM_ALIAS}
							</div>
						</div>
					</div>
					<div>
						<div class="uk-margin">
						<h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.Parser}:</h4>
							<label class="uk-form-label"></label>
							<div class="uk-form-controls">
								{PRJEDIT_FORM_PARSER}
							</div>
						</div>
					</div>
				</div>
				<!-- ENDIF -->
				<div class="uk-margin">
				<h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.Text}:</h4>
					<label class="uk-form-label"></label>
					<div class="uk-form-controls">
						{PRJEDIT_FORM_TEXT}
					</div>
				</div>
				<div class="uk-width-1-2@m">
					<h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.projects_price}:</h4>
					<label class="uk-form-label"></label>	
					<div class="uk-form-controls uk-position-relative"> 
					{PRJEDIT_FORM_COST} 
					<span class="uk-position-center-right uk-position-small">{PHP.cfg.payments.valuta}</span> 
					</div> 
				</div>
				<!-- IF {PHP|cot_auth('plug', 'attacher', 'W')} -->
				<div class="uk-margin">
				{PRJEDIT_FORM_ID|att_filebox('projects', $this)}	
				</div>
				<!-- ENDIF -->
				<!-- IF {PHP.cot_plugins_active.paypro} -->
				<div class="uk-margin">
					<h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.paypro_forpro}:</h4>
					<label class="uk-form-label">Сделать задание доступным только для PRO-аккаунтов ?</label>	
					<div class="uk-form-controls"> 
					{PRJEDIT_FORM_FORPRO}  
					</div> 
				</div>
				<!-- ENDIF -->
			<!-- IF {PHP.usr.isadmin} -->
				<div class="uk-margin">
					<h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.Delete}:</h4>
					<label class="uk-form-label"></label>	
					<div class="uk-form-controls"> 
					{PRJEDIT_FORM_DELETE} 
					</div> 
				</div>
			<!-- ENDIF -->
			<div class="uk-margin uk-text-center"> 
				<input type="submit" class="uk-button uk-button-default" value="{PHP.L.projects_next}" />
			</div> 
		</form>
	</div>
</div>
</div>
<!-- END: MAIN -->