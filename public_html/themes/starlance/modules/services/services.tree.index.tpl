<!-- BEGIN: MAIN -->
<div class="uk-section uk-section-xsmall">
  <style>
    .mrktcontent {
      display: none;
    }
  </style>
  <div class="uk-container uk-container-large uk-margin-top uk-margin-bottom" id="index-services-cats">
    <header>
      <h3 class="uk-heading-bullet uk-text-uppercase uk-text-bold uk-link-text">
        <span uk-tooltip="{PHP.L.services_descr}">{PHP.L.services_title}</span>
      </h3>
    </header>
    <div class="uk-grid-small uk-child-width-1-4@l uk-child-width-1-3@m uk-child-width-1-2@s uk-flex-center uk-text-center" uk-grid uk-scrollspy="target: > div; cls: uk-animation-scale-up uk-transform-origin-top-center">
      <!-- BEGIN: CATS -->
      <div class="mrktcontent">
        <div class="uk-card uk-border-rounded-mdm uk-background-primary">
          <div class="uk-visible@s">
            <!-- IF {ROW_ICON} -->
            <img class="uk-margin-small-top uk-background-default uk-border-rounded-mdm" width="64" height="64" alt="" src="{ROW_ICON}">
            <!-- ELSE -->
            <img class="uk-margin-small-top uk-background-default uk-border-circle" width="64" height="64" alt="" uk-img="data-src: themes/{PHP.theme}/img/icon/flower.svg" uk-svg="uk-preserve">
            <!-- ENDIF -->
          </div>
          <div class="uk-padding-small">
            <a class="uk-link-text" uk-tooltip="{PHP.L.Prd_Cat_tooltip} «{ROW_TITLE}»" href="{ROW_HREF}">
              <span class="">{ROW_TITLE} ({ROW_COUNT})</span>
            </a>
          </div>
        </div>
      </div>
      <!-- END: CATS -->
    </div>
    <div class="uk-margin-top uk-text-center">
      <a class="uk-button uk-button-primary" href="#" id="loadMoreMrkt">Показать еще</a>
    </div>
  </div>
  <script>
    $(document).ready(function() {
      $(".mrktcontent").slice(0, 8).show();
      $("#loadMoreMrkt").on("click", function(e) {
        e.preventDefault();
        $(".mrktcontent:hidden").slice(0, 4).slideDown();
        if ($(".mrktcontent:hidden").length == 0) {
          $("#loadMoreMrkt").text("это всё !").addClass("noContent");
        }
      });
    })
  </script>
</div>
<!-- END: MAIN -->