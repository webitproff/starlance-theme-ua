<!-- BEGIN: MAIN -->
<div class="breadcrumb">{PHP.L.qiwiwalletbilling_title}</div>
<div class="alert alert-success">{QIWI_TEXT}</div>
<div class="alert" id="qiwiwalletbilling_check">
  <p>
    {PHP.L.qiwiwalletbilling_pay_check_text}
    <a role="button">Проверить оплату</a>
  </p>
  <span></span>
</div>

<script>
  $(document).ready(function() {
    $('#qiwiwalletbilling_check a').click(function() {
      $.get('index.php?r=qiwiwalletbilling&m=check&pid={QIWI_PID}', function(data) {
        $('#qiwiwalletbilling_check span').html('<b>' + data + '</b>');
      });
    });
  });
</script>
<!-- END: MAIN -->