<!-- BEGIN: MAIN -->

<div class="reviews">

	<!-- BEGIN: REVIEWS_ROWS -->
<article class="uk-comment uk-comment-primary">
    <div class="uk-card uk-padding-small jlbubbleR">
        <div class="uk-grid-medium uk-flex-middle" uk-grid>
            <div class="uk-width-auto@m uk-width-1-1@s uk-text-center">
                <img class="uk-comment-avatar uk-border-rounded" src="{REVIEW_ROW_AVATAR_SRC}" width="80" height="80" alt="">
            </div>
            <div class="uk-width-expand@m uk-width-1-1@s">
                <h4 class="uk-comment-title uk-margin-remove">
				<a class="uk-link-text" href="{REVIEW_ROW_DETAILSLINK}"><span class="uk-text-emphasis uk-text-bold uk-margin-small-right">[{REVIEW_ROW_NICKNAME}]</span><!-- IF {REVIEW_ROW_FIRST_SECOND_NAME} --><span class="uk-text-warning uk-margin-small-left">{REVIEW_ROW_FIRST_SECOND_NAME}</span><!-- ENDIF --></a></h4>
                <ul class="uk-comment-meta uk-subnav uk-subnav-divider uk-margin-remove-top">
                    <li><a href="#">{REVIEW_ROW_DATE|date('d.m.Y H:i', $this)}</a></li>
					<!-- IF {PHP.usr.id} > 0 AND {PHP.usr.id} == {REVIEW_ROW_OWNERID} -->
					<li><a href="#ReviewEditModal{REVIEW_ROW_ID}" uk-toggle><span uk-icon="pencil" class="uk-margin-small-right uk-icon"></span> <span class="uk-text-middle">{PHP.L.Edit}</span></a></li>
					<!-- ENDIF -->
					<li><!-- IF {REVIEW_ROW_DELETE_URL} --><a href="{REVIEW_ROW_DELETE_URL}"><span uk-icon="trash" class="uk-margin-small-right uk-icon"></span> <span class="uk-text-middle">{PHP.L.Delete}</span></a><!-- ENDIF --></li>
                </ul>
				<!-- IF {REVIEW_ROW_AREA} == 'projects' -->
				<p class="uk-margin-remove uk-font-face">{PHP.L.reviews_reviewforproject}: <a href="{REVIEW_ROW_PRJ_URL}">{REVIEW_ROW_PRJ_SHORTTITLE}</a></p>
				<!-- ENDIF -->
				<p class="uk-margin-remove uk-font-face uk-dropcap">{REVIEW_ROW_TEXT}</p>
            </div>
        </div>
        
    </div>
</article>

	
		<!-- BEGIN: EDITFORM -->
		<div id="ReviewEditModal{REVIEW_FORM_ID}" uk-modal>
			<div class="uk-modal-dialog" role="document">
				<button class="uk-modal-close-default" type="button" uk-close></button>
				<div class="uk-modal-header">
					<h2 class="uk-modal-title">{PHP.L.reviews_edit_review}</h2>
				</div>
				<div class="uk-modal-body">
					<div class="customform">
						<form action="{REVIEW_FORM_SEND}" method="post" name="newreview" enctype="multipart/form-data">
							<div class="form-group row">
								<label class="col-md-3 form-control-label">{PHP.L.reviews_text}:</label>
								<div class="col-md-9">{REVIEW_FORM_TEXT}</div>
							</div>
							<div class="form-group row">
								<label class="col-md-3 form-control-label">{PHP.L.reviews_score}:</label>
								<div class="col-md-9">{REVIEW_FORM_SCORE}</div>
							</div>
							<div class="form-group row">
								<label class="col-md-3 form-control-label"></label>
								<div class="col-md-9">
									<input type="submit" value="{PHP.L.apply_changes}" class="uk-button uk-button-success" />
									<a href="{REVIEW_FORM_DELETE_URL}" class="uk-button uk-button-warning">{PHP.L.Delete}</a>	   
								</div>
							</div>
						</form>
					</div>
				</div>
				<div class="uk-modal-footer uk-text-right">
					<button class="uk-button uk-button-default uk-modal-close" type="button">Cancel</button>
				</div>
			</div>
		</div>
		<!-- END: EDITFORM -->	
	
		<hr/>
	<!-- END: REVIEWS_ROWS -->
</div>

{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}

<!-- BEGIN: FORM -->
	<h4 class="m-y-2"><!-- IF {REVIEW_FORM_ACTION} == "EDIT" -->{PHP.L.reviews_edit_review}<!-- ELSE -->{PHP.L.reviews_add_review}<!-- ENDIF --></h4>
	<div class="card">
		<div class="card-block">
			<form action="{REVIEW_FORM_SEND}" method="post" name="newreview" enctype="multipart/form-data">
				<!-- IF {REVIEW_FORM_PROJECTS} -->
				<div class="form-group">
					<div class="alert alert-info">{PHP.L.reviews_projectsonly}</div>
				</div>
				<div class="form-group row">
					<label class="col-md-3 form-control-label">{PHP.L.reviews_chooseprj}:</label>
					<div class="col-md-9">{REVIEW_FORM_PROJECTS}</div>
				</div>
				<!-- ENDIF -->
				<div class="form-group row">
					<label class="col-md-3 form-control-label">{PHP.L.reviews_text}:</label>
					<div class="col-md-9">{REVIEW_FORM_TEXT}</div>
				</div>
				<div class="uk-margin">
					<div class="uk-form-label">{PHP.L.reviews_score}:</div>
					<div class="uk-form-controls">
						<ul class="uk-list uk-list-divider">
							<li><input type="radio" class="uk-radio" name="rscore" value="1"><span class="uk-margin-left uk-margin-small-right uk-text-warning" uk-icon="happy"></span><span class="uk-text-success">Положительный</span></li>
							<li><input type="radio" class="uk-radio" name="rscore" value="-1"><span class="uk-margin-left uk-margin-small-right uk-text-danger" uk-icon="warning"></span><span class="uk-text-danger">NEGATIVE</span></li>
						</ul>
					</div>
				</div>

				<input class="uk-button uk-button-success" type="submit" value="<!-- IF {REVIEW_FORM_ACTION} == "EDIT" -->{PHP.L.apply_changes}<!-- ELSE -->{PHP.L.Add}<!-- ENDIF -->" />
						<!-- IF {REVIEW_FORM_ACTION} == "EDIT" --> <a href="{REVIEW_FORM_DELETE_URL}">{PHP.L.Delete}</a><!-- ENDIF -->	   
				</div>
			</form>
		</div>
	</div>
<!-- END: FORM -->
<!-- END: MAIN -->