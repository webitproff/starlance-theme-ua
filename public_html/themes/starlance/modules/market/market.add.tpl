<!-- BEGIN: MAIN -->
<!-- BEGIN: MARKET_ADD_PAYPRO_LIMIT -->
<div class="alert-danger-full uk-margin-remove-vertical" uk-alert>
  <div class="uk-container">
    <h4 class="uk-text-bold uk-animation-slide-right uk-animation-toggle" tabindex="0">
      <img class="uk-animation-shake uk-margin-small-right" width="36" height="36" alt="" src="/themes/{PHP.cfg.defaulttheme}/img/icon/048-notification.svg" uk-svg="uk-preserve">
      <span class="uk-text-middle">{PHP.L.Warning}</span>
    </h4>
    <p>{PHP.L.paypro_warning_marketlimit_empty}</p>
  </div>
</div>
<!-- END: MARKET_ADD_PAYPRO_LIMIT --> 
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
<div class="uk-section uk-margin-auto-vertical">
  <div class="uk-container uk-background-muted uk-border-rounded">
    <h3 class="uk-margin-top uk-heading-bullet uk-text-uppercase uk-text-bold uk-link-text"> {PHP.L.market_add_product_title}</h3>
    <div class="uk-tile uk-tile-default uk-border-rounded uk-text-center uk-margin">
      <h4 class="uk-text-primary uk-animation-slide-bottom uk-animation-toggle" tabindex="0">
        <img class="uk-animation-shake uk-margin-small-right" width="36" height="36" alt="" src="/themes/{PHP.cfg.defaulttheme}/img/icon/info.svg" uk-svg="uk-preserve">
        <span class="uk-text-middle">Как добавить товар или услугу, а также редактирование карточки предложения</span>
      </h4>
      <div uk-lightbox>
        <a rel="nofollow" data-caption="" class="uk-button uk-button-linear uk-animation-toggle" tabindex="0" href="https://www.youtube.com/watch?v=1z9cu0rjgIs" title="">
          <img class="uk-margin-small-right uk-animation-shake" width="27" height="27" alt="" src="themes/{PHP.theme}/img/iconsoclogo/YouTube_soc.svg" uk-svg="uk-preserve">
          <span class="uk-text-middle">Видеоруководство</span>
        </a>
      </div>
    </div>
    <div class="uk-alert-warning uk-margin-remove-vertical" uk-alert>
      <button class="uk-position-z-index uk-alert-close uk-icon-button uk-button-danger" type="button" uk-close></button>
      <ul class="uk-list uk-list-decimal">
        <li>
          <span class="uk-text-danger">Вы ожидаете, что к Вашему предложению клиент отнесётся серъёзно!</span>
        </li>
        <li>
          <span class="uk-text-warning">Серъёзно отнеситесь и Вы, к достойному оформлению и заполнению полей карточки своего предложения</span>
        </li>
        <li>
          <span class="uk-text-success uk-text-uppercase uk-text-bold">Жадный интерес</span>, <span class="uk-text-primary">вызвать к своему предложению со стороны заказчика, вот над чем Вы сейчас работаете</span>
        </li>
        <li>
          <span class="uk-text-secondary uk-text-light">Раз в 3-5 минут "сохранитесь" при заполнении, во избежание потери данных, - затем снова вернитесь, чтобы сделать « <span class="uk-text-success uk-text-uppercase uk-text-bold">именно ту самую конфетку</span>». Удачи! </span>
        </li>
      </ul>
    </div>
    <form action="{PRDADD_FORM_SEND}" method="post" name="newwork" enctype="multipart/form-data" class="uk-form-stacked uk-margin-large">
      <div class="uk-margin">
        <h4 class="uk-heading-divider uk-text-primary uk-margin-remove">
          <span class="uk-text-danger">*</span>{PHP.L.Category}:
        </h4>
        <label class="uk-text-secondary uk-text-light uk-text-small">Выберите соответствующую категорию</label>
        <div class="uk-form-controls">
          <div class="uk-inline uk-width-1-1"> {PRDADD_FORM_CAT} </div>
        </div>
      </div>
      <div class="uk-margin">
        <h4 class="uk-heading-divider uk-text-primary uk-margin-remove">
          <span class="uk-text-danger">*</span>{PHP.L.Title}:
        </h4>
        <code>H1</code>
        <label class="uk-text-secondary uk-text-light uk-text-small">Название товара или услуги. Обязательно!</label>
        <div class="uk-form-controls">
          <div class="uk-inline uk-width-1-1">
            <a class="uk-form-icon uk-form-icon-flip" href="#modal-center-question" uk-toggle>
              <span class="uk-text-primary" uk-icon="icon: question; ratio: 1.2"></span>
            </a>
            <input class="uk-input uk-width-1-1" type="text" name="rtitle" value="" placeholder="Горячий обед и вкусный завтрак с доставкой">
          </div>
          <span id="rtitle" class="uk-text-primary uk-text-small"></span>
          <span class="uk-text-danger uk-text-small"> знаков осталось</span>
          <script type="text/javascript">
            $(document).ready(function() {
              $('input[name=rtitle]').limit('60', '#rtitle');
            });
          </script>
        </div>
        <div id="modal-center-question" class="uk-flex-top" uk-modal>
          <div class="uk-modal-dialog uk-modal-body uk-background-muted uk-border-rounded uk-margin-auto-vertical">
            <button class="uk-modal-close-default uk-button uk-icon-button" type="button" uk-close></button>
            <div class="">
              <h3 class="uk-text-uppercase uk-text-bold uk-link-text">
                <span class="uk-text-primary" uk-icon="icon: info; ratio: 1.5"></span>
                <span class="uk-text-middle uk-margin-small-left">Подсказка</span>
              </h3>
              <ul class="uk-list uk-list-decimal">
                <li>
                  <span class="uk-text-danger">Заголовок</span> должен быть длиной не более 6-10 слов и не более 60 символов.
                </li>
                <li>«Ключевое слово» в заголовке должно быть расположено как можно ближе к началу,</li>
                <li>и чем более распространенной будет форма его употребления, тем лучше.</li>
              </ul>
              <div class="uk-text-right">
                <button class="uk-button uk-button-default uk-modal-close" type="button">Понятно !</button>
              </div>
            </div>
          </div>
        </div>
      </div>
	<div class="uk-panel uk-padding-small uk-visible@s uk-background-default uk-border-rounded">
      <div class="uk-margin">
        <h5 class="uk-heading-divider uk-text-warning uk-margin-remove">{PHP.L.metatitle}:</h5>
        <label class="uk-form-label uk-margin-remove-top">
          <code>SEO-title</code>
        </label>
        <div class="uk-form-controls">
          <div class="uk-inline uk-width-1-1">
            <a class="uk-form-icon uk-form-icon-flip" href="#modal-rmetatitle" uk-toggle>
              <span class="uk-text-primary" uk-icon="icon: question; ratio: 1.2"></span>
            </a>
            <input class="uk-input uk-width-1-1" type="text" name="rmetatitle" value="" maxlength="255" placeholder="Заказать горячий обед с доставкой на дом и на работу">
          </div>
          <span id="rmetatitle" class="uk-text-primary uk-text-small"></span>
          <span class="uk-text-danger uk-text-small"> знаков осталось</span>
          <script type="text/javascript">
            $(document).ready(function() {
              $('input[name=rmetatitle]').limit('60', '#rmetatitle');
            });
          </script>
        </div>
        <div id="modal-rmetatitle" class="uk-flex-top" uk-modal>
          <div class="uk-modal-dialog uk-modal-body uk-background-muted uk-border-rounded uk-margin-auto-vertical">
            <button class="uk-modal-close-default uk-button uk-icon-button" type="button" uk-close></button>
            <div class="">
              <h3 class="uk-text-uppercase uk-text-bold uk-link-text">
                <span class="uk-text-primary" uk-icon="icon: info; ratio: 1.5"></span>
                <span class="uk-text-middle uk-margin-small-left">Подсказка</span>
              </h3>
              <ul class="uk-list uk-list-decimal">
                <li>
                  <span class="uk-text-danger">Мета Заголовок</span> - это то, что мы видим в названии вкладки браузера и в заголовках поисковой выдачи
                </li>
                <li>Мета Title должен быть релевантен запросу пользователя, который по ту сторону монитора ищет в поисковике, где можно <span class="uk-text-danger">Заказать горячий обед с доставкой на дом и на работу</span>
                </li>
                <li>Следовательно ваш Мета Заголовок должен в максимальной степени соответствовать тому, что будет вписано пользователем в поисковую строку гугла или яндекса, чтобы найти ваш товар или услуг</li>
                <li>Мета Title НЕ должен совпадать с содержимым других метаданных (например, description или H1, Название товара или услуги)</li>
              </ul>
              <div class="uk-text-right">
                <button class="uk-button uk-button-default uk-modal-close" type="button">Понятно !</button>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="uk-margin">
        <h5 class="uk-heading-divider uk-text-warning uk-margin-remove">{PHP.L.metadesc}:</h5>
        <label class="uk-form-label uk-margin-remove-top">
          <code>meta name="description"</code>
        </label>
        <div class="uk-form-controls">
          <div class="uk-inline uk-width-1-1">
            <a class="uk-form-icon uk-form-icon-flip" href="#modal-rmetadesc" uk-toggle>
              <span class="uk-text-primary" uk-icon="icon: question; ratio: 1.2"></span>
            </a>
            <textarea class="uk-textarea" name="rmetadesc" placeholder="Скорая доставка горячих обедов и вкусных завтраков, на дом, к месту работы. Заказать обед с доставкой в офис по Москве." rows="2" maxlength="255"></textarea>
          </div>
          <span id="rmetadesc" class="uk-text-primary uk-text-small"></span>
          <span class="uk-text-danger uk-text-small"> знаков осталось</span>
          <script type="text/javascript">
            $(document).ready(function() {
              $('textarea[name=rmetadesc]').limit('160', '#rmetadesc');
            });
          </script>
        </div>
        <div id="modal-rmetadesc" class="uk-flex-top" uk-modal>
          <div class="uk-modal-dialog uk-modal-body uk-background-muted uk-border-rounded uk-margin-auto-vertical">
            <button class="uk-modal-close-default uk-button uk-icon-button" type="button" uk-close></button>
            <div class="">
              <h3 class="uk-text-uppercase uk-text-bold uk-link-text">
                <span class="uk-text-primary" uk-icon="icon: info; ratio: 1.5"></span>
                <span class="uk-text-middle uk-margin-small-left">Подсказка</span>
              </h3>
              <ul class="uk-list uk-list-decimal">
                <li>
                  <span class="uk-text-danger">{PHP.L.metadesc}</span> - это то, что мы видим в описании под заголовками поисковой выдачи
                </li>
                <li>Ориентировочно допустимая длина тега description — <span class="uk-text-danger">150–200</span> символов </li>
                <li>не влияет на внешний вид сайта и не видно обычным пользователям</li>
                <li>Одним-двумя краткими предложениями расскажите поисковику, что именно Вы продаете или предлагаете</li>
              </ul>
              <div class="uk-text-right">
                <button class="uk-button uk-button-default uk-modal-close" type="button">Понятно !</button>
              </div>
            </div>
          </div>
        </div>
      </div>
	</div>
      <!-- IF {PHP.usr.isadmin} -->
      <div uk-grid>
        <div class="uk-width-1-2@m">
          <div class="uk-margin">
            <h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.Alias}:</h4>
            <label class="uk-form-label"></label>
            <div class="uk-form-controls" uk-tooltip="URL, ЧПУ, - уникальный на весь сайт идентификатор материала">
              <div class="uk-inline uk-width-1-1"> {PRDADD_FORM_ALIAS} </div>
            </div>
          </div>
        </div>
        <div class="uk-width-1-2@m">
          <div class="uk-margin">
            <h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.Parser}:</h4>
            <label class="uk-form-label"></label>
            <div class="uk-form-controls">
              <div class="uk-inline uk-width-1-1" uk-tooltip="Разметка для форматирования текстового описания материала"> {PRDADD_FORM_PARSER} </div>
            </div>
          </div>
        </div>
      </div>
      <!-- ENDIF -->

      <div class="uk-margin">
        <h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.Prd_Text}:</h4>
        <label class="uk-form-label uk-margin-remove-top">{PHP.L.Prd_Text_Signature}</label>
        <div class="uk-form-controls">
          {PRDADD_FORM_TEXT}
        </div>
      </div>
      <!-- IF {PHP.cot_plugins_active.locationselector} -->
      <div class="uk-margin">
        <h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.Location}:</h4> {PRDADD_FORM_LOCATION}
      </div>
      <!-- ENDIF -->

      <div uk-grid>
        <div class="uk-width-1-4@m">
          <h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PHP.L.market_price}:</h4>
          <label class="uk-form-label"></label>
          <div class="uk-form-controls uk-position-relative"> {PRDADD_FORM_COST} <span class="uk-position-center-right uk-position-small">{PHP.cfg.payments.valuta}</span>
          </div>
        </div>
        <div class="uk-width-expand@m">
          <!-- IF {PHP.cot_plugins_active.marketorders} -->
          <div class="uk-margin">
            <label class="uk-form-label uk-text-bold">{PHP.L.marketorders_file}</label>
            <div class="uk-form-controls uk-background-muted uk-padding-small"> {PRDADD_FORM_FILE} </div>
          </div>
          <!-- ENDIF -->
        </div>
      </div>
      <!-- IF {PHP|cot_auth('plug', 'attacher', 'W')} -->
      <div class="uk-margin">
        <h4 class="uk-heading-divider uk-text-primary uk-margin-remove">
          <span class="uk-text-danger">*</span>{PHP.L.Files}: {PHP.L.Prd_Image}:
        </h4>
        <label class="uk-form-label"></label>
        <div class="uk-form-controls uk-background-muted uk-padding-small"> {PHP|att_filebox('market', 0)} </div>
      </div>
      <!-- ENDIF -->
	<!-- IF {PRDADD_FORM_YOUTUBE_LINK_PRD} -->
	<div class="uk-margin">
	<h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PRDADD_FORM_YOUTUBE_LINK_PRD_TITLE}</h4>
		<label class="uk-form-label uk-text-bold uk-text-danger"> (загрузите видео по идентификатору)</label>
		<div class="uk-grid" uk-grid>
			<div class="uk-width-1-2@m">
			https://www.youtube.com/watch?v=<span class="uk-text-bold uk-text-primary">w7nB-YC8jc8</span>
			</div>
			<div class="uk-width-1-2@m">
			{PRDADD_FORM_YOUTUBE_LINK_PRD}                            
			</div>
		</div>
	</div>
	<!-- ENDIF -->
	<hr>
	<!-- IF {PRDADD_FORM_DEMONSTRATION} -->
	<div class="uk-margin">
		<h4 class="uk-heading-divider uk-text-primary uk-margin-remove">{PRDADD_FORM_DEMONSTRATION_TITLE}:</h4>
		<label class="uk-form-label uk-margin-remove-top"></label>
		<div class="uk-form-controls">
			{PRDADD_FORM_DEMONSTRATION}
		</div>	
	</div>
	<!-- ENDIF -->
	  <!-- IF {PRDADD_FORM_ALLOW_ONLINE_ORDER} -->
      <div class="uk-margin-top">
        <div class="uk-alert-danger uk-border-rounded" uk-alert>
          <label class="uk-form-label uk-text-bold uk-text-danger">{PRDADD_FORM_ALLOW_ONLINE_ORDER_TITLE}:</label>
          <div class="uk-form-controls uk-margin-small"> {PRDADD_FORM_ALLOW_ONLINE_ORDER} </div>
        </div>
      </div>
	  <!-- ENDIF -->
      <div class="uk-margin uk-text-center">
        <button type="submit" class="button uk-button uk-button-default uk-margin-top" id="submit">{PHP.L.Save_and_Add}</button>
      </div>
    </form>
  </div>
</div>

<script>

  (function($) {
    $.fn.extend({
      limit: function(limit, element) {
        var interval;
        var self = $(this);
        var check_limit = function() {
          var val = self.val();
          var length = val.length;
          if (length > limit) {
            self.val(val.substring(0, limit));
          }
          if ($(element).html() !== limit - length) {
            $(element).html((limit - length <= 0) ? '0' : limit - length);
          }
        };
        self.focus(function() {
          interval = window.setInterval(check_limit, 100);
        });
        self.blur(function() {
          clearInterval(interval);
          check_limit();
        });
        check_limit();
      }
    });
  })(jQuery);
</script>
<!-- END: MAIN -->
