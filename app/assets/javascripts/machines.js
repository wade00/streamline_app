$(document).ready(function(){

  $('.sidebar-preview').click( function() {
    $('.table-container-wide').toggleClass('table-container-narrow', 600, "easeOutSine");
    $('#edit-form-container').html('');
    $('#edit-form-container').toggleClass('edit-form-container-show');
    $('.machine-preview-cell').toggleClass('machine-preview-cell-narrow', 600, "easeOutSine");
    $('.description-cell').toggleClass('description-cell-hide', 100, "easeOutSine");
    $('.sidebar-preview').toggleClass('sidebar-preview-blur', 600, "easeOutSine");
    $('.edit-machine-link').toggleClass('unactive-link');
    $(this).toggleClass('sidebar-preview-override');
  });

});

// $(document).ready(function(){
//   $('.cancel-machine-form').click( function() {
//     $('.table-container-wide').toggleClass('table-container-narrow', 600, "easeOutSine");

//     $('#edit-form-container').hide();

//     $('.machine-preview-cell').toggleClass('machine-preview-cell-narrow', 600, "easeOutSine");

//     $('.description-cell').toggleClass('description-cell-hide', 100, "easeOutSine");
//   });
// });
