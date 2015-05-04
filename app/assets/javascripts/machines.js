$(document).ready(function() {

  $('.machine-preview').click(function() {
    $('.machine-stats').toggleClass('hide-element');
    $('.table-container-wide').toggleClass('table-container-narrow', 600, 'easeOutSine');
    $('.sort-header').toggleClass('sort-header-narrow', 600, 'easeOutSine');

    $('#edit-form-container').html('');
    $('#edit-form-container').toggleClass('edit-form-container-show');
    $('.edit-machine-link').toggleClass('unactive-link');

    $('.machine-preview').toggleClass('machine-preview-blur', 600, 'easeOutSine');
    $('.machine-preview').toggleClass('unactive-link');
    $(this).toggleClass('machine-preview-override');
    $(this).toggleClass('unactive-link');
  });

});

