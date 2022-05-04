<!-- BEGIN: MAIN -->
				<!-- IF {PHP.usr.maingrp} == 5 OR {PHP.usr.isadmin} -->
				<div class="uk-margin-remove-vertical uk-alert-primary" uk-alert>
					<a class="uk-alert-close" uk-close></a>
					<p>Формирование шаблона страницы: <code>payments.balance.tpl</code></p>
					<div class="uk-panel uk-text-break uk-text-secondary">{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/{PHP.env.type}/{PHP.env.ext}/{PHP.m}/{PHP.n}</div>
				</div>
				<!-- ENDIF -->
<!-- BEGIN: COMMENTS_TITLE -->
<h3><a href="{COMMENTS_TITLE_URL}">{COMMENTS_TITLE}</a></h3>
<!-- END: COMMENTS_TITLE -->
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
<!-- BEGIN: COMMENTS_FORM_EDIT -->
<div class="uk-container uk-container-center">
<div id="content" class="content_page">
<h4 class="tm-article-subtitle">{PHP.L.Edit_a_comment}</h4>
                            <dl class="uk-description-list-line">
                                <dt>{COMMENTS_POSTER_TITLE}:</dt>
                                <dd>{COMMENTS_POSTER}</dd>
                                <dt>{COMMENTS_IP_TITLE}:</dt>
                                <dd>{COMMENTS_IP}</dd>
                                <dt>{COMMENTS_DATE_TITLE}:</dt>
                                <dd>{COMMENTS_DATE}</dd>
                            </dl>
    <form id="commentform" name="comments" action="{COMMENTS_FORM_POST}" method="post">


                            


                    <div class="uk-form-row uk-margin-bottom">
                        <label class="uk-form-label"><h3>Текст комментария</h3></label>
                        <div class="uk-form-controls">
                            {COMMENTS_FORM_TEXT}
                        </div>
                    </div>
        
        <button type="submit"  class="btn_a uk-button uk-button-success uk-button-small" >{COMMENTS_FORM_UPDATE_BUTTON}</button>
    </form>
</div>
</div>
<!-- END: COMMENTS_FORM_EDIT -->
<!-- END: MAIN -->
<!-- BEGIN: COMMENTS -->

<!-- IF !{COMMENTS_EMPTYTEXT} -->
    <div  class="comments_div"  style="display:{COMMENTS_DISPLAY}" >
<!-- ENDIF -->

<div id="ajax_display">
    <!-- BEGIN: COMMENTS_ROW -->
    <div id="pos{COMMENTS_ROW_ID}"  class="par_authorbox" style=" margin-left:{COMMENTS_ROW_REPLY_MARGIN}px;" >
    <div class="startline" id="stline{COMMENTS_ROW_ID}"></div>
    <!-- IF {COMMENTS_ROW_LEVEL} > 0 -->
        <div class="rc_sub_line{COMMENTS_ROW_ID}" style="width:{COMMENTS_ROW_WL}px;left:-{COMMENTS_ROW_WL}px; border-top:1px dashed {COMMENTS_ROW_COLOR};" ><span class="rc_sub_line_arrow" style="border-color: transparent transparent transparent {COMMENTS_ROW_COLOR} ;" ></span></div>
    <!-- ENDIF -->
        <div class="authorbox">
            <div class="fright date_comm ">{COMMENTS_ROW_DATE}</div>
            <span class="avatar avatar-80">{COMMENTS_ROW_AUTHOR_AVATAR}</span>
            <div class="author_name ">
                <a href="{COMMENTS_ROW_URL}" id="c{COMMENTS_ROW_ID}" class="order_link">{COMMENTS_ROW_ORDER}.</a>&nbsp;{COMMENTS_ROW_AUTHOR}
                <!-- IF {COMMENTS_ROW_REPLY_NUM} -->
                &nbsp;&raquo;
                {COMMENTS_ROW_REPLY_LINK}
                <!-- ENDIF -->
            </div>
            <div class="author_desc uk-block-muted tp-panel-body" id="commtxt{COMMENTS_ROW_ID}" >{COMMENTS_ROW_TEXT}</div>
            <!-- IF {COMMENTS_ROW_REPLY} -->
            <span class="icon-share-alt opac03"></span>&nbsp;{COMMENTS_ROW_REPLY}

            {COMMENTS_ROW_REPLY_BOX}
            <!-- ENDIF -->
            <div class="fright uk-text-small">{COMMENTS_ROW_ADMIN}{COMMENTS_ROW_EDIT}</div>
            <div class="clear"></div>
        </div><!-- END "div.authorbox" -->
    </div>
    <!-- END "div.pos" -->
    <!-- END: COMMENTS_ROW -->
 </div>

{COMMENTS_REPLY_PAGES}


<!-- BEGIN: PAGNAVIGATOR -->
    <!-- IF {COMMENTS_PAGES_PAGNAV} -->
    <div class="wp-pagenavi pagenavi_top">
        <span class="pages">{COMMENTS_PAGES_INFO}</span>
        <span class="fleft">{COMMENTS_PAGES_PAGESPREV}{COMMENTS_PAGES_PAGNAV}{COMMENTS_PAGES_PAGESNEXT}</span>
    </div>
    <!-- ENDIF -->
<!-- END: PAGNAVIGATOR -->

<!-- BEGIN: COMMENTS_EMPTY -->
<div class="uk-alert uk-alert-warning" data-uk-alert>
    <a href="" class="uk-alert-close uk-close"></a>
    {COMMENTS_EMPTYTEXT}
</div>
<!-- END: COMMENTS_EMPTY -->

<!-- BEGIN: COMMENTS_NEWCOMMENT -->
<div class="clear"></div>
    {PHP.L.New_comment|cot_uk_heading(3, "$this")}
    {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
    
    <div id="rcomm_mes" >{PHP.reply_error}</div>
    <form action="{COMMENTS_FORM_SEND}" {COMMENTS_REPLY_SEND_AJAX} method="post" name="newcomment" id="commentform">
    {COMMENTS_REPLY_ADD_INPUT}
        <!-- BEGIN: GUEST -->
        <div>{PHP.L.Name}: {COMMENTS_FORM_AUTHOR}</div>
        <!-- END: GUEST -->
        <div class="rcommenttxtarea" >{COMMENTS_FORM_TEXT}</div>
        <!-- IF {PHP.usr.id} == 0 AND {COMMENTS_FORM_VERIFYIMG} -->
        <div><span id="rcomm_verify0" >{COMMENTS_FORM_VERIFYIMG}</span> : {COMMENTS_FORM_VERIFY}</div>
        <!-- ENDIF -->
        <button type="submit"  class="uk-button uk-button-success" id="button_ajax_loader_main">{PHP.L.Submit}</button>
    </form>
<!-- END: COMMENTS_NEWCOMMENT -->

<!-- BEGIN: COMMENTS_CLOSED -->
<div class="uk-alert uk-alert-danger" data-uk-alert>
    <a href="" class="uk-alert-close uk-close"></a>
    {COMMENTS_CLOSED}
</div>
<!-- END: COMMENTS_CLOSED -->

<!-- IF !{COMMENTS_EMPTYTEXT} -->
    </div>
<!-- ENDIF -->
{COMMENTS_REPLY_SCRIPT}
<!-- END: COMMENTS -->