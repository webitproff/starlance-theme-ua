<!-- BEGIN: MAIN -->
<div class="uk-section uk-background-muted uk-padding-small">
	<div class="uk-container">
		<h1 class="uk-heading-bullet">{PAGEADD_PAGETITLE} #{PAGEADD_FORM_ID}</h1>
	</div>
</div>
<div class="uk-section uk-background-muted uk-padding-small">
	<div class="uk-container">
		{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
		<div class="uk-card uk-card-body uk-background-default uk-border-rounded"> 
			<form class="uk-form-horizontal uk-margin-small" action="{PAGEADD_FORM_SEND}" enctype="multipart/form-data" method="post" name="pageform">
				<div class="uk-margin">
					<label class="uk-form-label">{PHP.L.Title}:</label>
					<div class="uk-form-controls">
						{PAGEADD_FORM_TITLE}
					</div>
				</div>
				<div class="uk-margin">
					<label class="uk-form-label">{PHP.L.Category}:</label>
					<div class="uk-form-controls">
						{PAGEADD_FORM_CAT}
					</div>
				</div>
				<div class="uk-margin">
					<label class="uk-form-label">{PHP.L.Description}:</label>
					<div class="uk-form-controls">
						{PAGEADD_FORM_DESC}
					</div>
				</div>
				<div class="uk-margin">
					<label class="uk-form-label">{PHP.L.Author}:</label>
					<div class="uk-form-controls">
						{PAGEADD_FORM_AUTHOR}
					</div>
				</div>
				<div class="uk-margin">
					<label class="uk-form-label">{PHP.L.Begin}:</label>
						{PAGEADD_FORM_BEGIN}
				</div>
				<hr class="uk-divider-icon">
				<div class="uk-margin">
					<label class="uk-form-label">{PHP.L.Expire}:</label>
						{PAGEADD_FORM_EXPIRE}
				</div>
				<div class="uk-margin">
					<label class="uk-form-label">{PHP.L.Alias}:</label>
					<div class="uk-form-controls">
						{PAGEADD_FORM_ALIAS}
					</div>
				</div>
				<div class="uk-margin">
					<label class="uk-form-label">{PHP.L.page_metakeywords}:</label>
					<div class="uk-form-controls">
						{PAGEADD_FORM_KEYWORDS}
					</div>
				</div>
				<div class="uk-margin">
					<label class="uk-form-label">{PHP.L.page_metatitle}:</label>
					<div class="uk-form-controls">
						{PAGEADD_FORM_METATITLE}
					</div>
				</div>
				<div class="uk-margin">
					<label class="uk-form-label">{PHP.L.page_metadesc}:</label>
					<div class="uk-form-controls">
						{PAGEADD_FORM_METADESC}
					</div>
				</div>
<!-- BEGIN: TAGS -->
				<div class="uk-margin">
					<label class="uk-form-label">{PAGEADD_TOP_TAGS}:</label>
					<div class="uk-form-controls">
					{PAGEADD_FORM_TAGS|cot_rc_modify($this, 'class="uk-input"')} ({PAGEADD_TOP_TAGS_HINT})
					</div>
				</div>
<!-- END: TAGS -->
<!-- BEGIN: ADMIN -->
				<div class="uk-margin">
					<label class="uk-form-label">{PHP.L.Owner}:</label>
					<div class="uk-form-controls">
						{PAGEADD_FORM_OWNERID}
					</div>
				</div>
<!-- END: ADMIN -->
				<div class="uk-margin">
					<label class="uk-form-label">{PHP.L.Parser}:</label>
					<div class="uk-form-controls">
					{PAGEADD_FORM_PARSER}
					</div>
				</div>
				<div class="uk-margin">
					<label class="uk-form-label">{PHP.L.Summary}</label>
					<div class="uk-form-controls">
					{PAGEADD_FORM_TEXT}
					</div>
				</div>
	<!-- IF {PHP|cot_auth('plug', 'attacher', 'W')} -->	
	<div class="uk-margin">
		<h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.Files}/{PHP.L.Image}:</h4>
		<label class="uk-form-label">
			<ul class="uk-list uk-list-divider">
				<li>Расширения <span class="uk-text-danger">{PHP.cfg.plugin.attacher.exts}</span></li>
				<li>Макс. размер файлов в байтах <span class="uk-text-danger">{PHP.cfg.plugin.attacher.filesize}</span></li>
				<li>Макс количество <span class="uk-text-danger">{PHP.cfg.plugin.attacher.items}</span></li>
			</ul>
		</label>
		<div class="uk-form-controls"> 
			{PHP|att_filebox('page', 0)}
		</div>
	</div>
	<!-- ENDIF -->
<!-- IF {PHP.cot_modules.pfs} -->
				<table class="cells">
					<tr>
						<td>	
							<!-- IF {PAGEADD_FORM_PFS} -->{PAGEADD_FORM_PFS}<!-- ENDIF -->
							<!-- IF {PAGEADD_FORM_SFS} --><span class="spaced">{PHP.cfg.separator}</span>{PAGEADD_FORM_SFS}<!-- ENDIF -->
						</td>
					</tr>
					<tr>
						<td>{PHP.L.page_file}:<br />
							{PHP.themelang.pageadd.Filehint}</td>
						<td>{PAGEADD_FORM_FILE}</td>
					</tr>
					<tr>
						<td>{PHP.L.URL}:<br />{PHP.L.page_urlhint}</td>
						<td>{PAGEADD_FORM_URL}<br />{PAGEADD_FORM_URL_PFS} &nbsp; {PAGEADD_FORM_URL_SFS}</td>
					</tr>
					<tr>
						<td>{PHP.L.page_filesize}:<br />{PHP.L.page_filesizehint}</td>
						<td>{PAGEADD_FORM_SIZE}</td>
					</tr>
					<tr>
						<td>{PHP.L.page_filehitcount}:<br />{PHP.L.page_filehitcounthint}</td>
						<td>{PAGEADD_FORM_FILECOUNT}</td>
					</tr>
				</table>
<!-- ENDIF -->

				<div class="uk-grid-small uk-child-width-expand@s uk-text-center" uk-grid>
					<div>
						<!-- IF {PHP.usr_can_publish} -->
						<button class="uk-button uk-button-default uk-width-1-1" type="submit" name="rpagestate" value="0">{PHP.L.Publish}</button>
						<!-- ENDIF -->
					</div>
					<div>
						<button class="uk-button uk-button-primary uk-width-1-1" type="submit" name="rpagestate" value="2" class="submit">{PHP.L.Saveasdraft}</button>
					</div>
					<div>
						<button class="uk-button uk-button-warning uk-width-1-1" type="submit" name="rpagestate" value="1">{PHP.L.Submitforapproval}</button>
					</div>
				</div>
			</form>
			<div class="uk-alert" uk-alert>{PHP.L.page_formhint}</div>
		</div>
	</div>
</div>
<!-- END: MAIN -->