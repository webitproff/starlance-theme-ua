<!-- BEGIN: MAIN -->
<ul class="uk-list uk-list-divider uk-nav-default uk-nav-parent-icon" uk-nav>
<li></li>
<!-- IF {LEVEL} == 0 -->
<li><a href="{PHP|cot_url('projects')}">{PHP.L.All} {PHP.L.projects_projects}</a></li>		
<!-- ENDIF -->
<!-- BEGIN: CATS -->
<li class="<!-- IF {ROW_SELECTED} -->uk-active<!-- ENDIF --><!-- IF {ROW_SUBCAT} --> uk-parent<!-- ENDIF -->">
    <a href="<!-- IF {ROW_SUBCAT} -->#<!-- ELSE -->{ROW_HREF}<!-- ENDIF -->">{ROW_TITLE}</a>
    <!-- IF {ROW_SUBCAT} -->
    <ul class="uk-nav-sub">
        {ROW_SUBCAT}
    </ul>
    <!-- ENDIF -->
</li>
<!-- END: CATS -->
</ul>
<!-- END: MAIN -->