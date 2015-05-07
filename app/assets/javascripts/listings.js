$(document).ready(function() {
  $('body').on('click', '.listing-confirm-button', function() {
    $(this).val('√');
    $(this).removeClass('btn-primary');
  });
});
