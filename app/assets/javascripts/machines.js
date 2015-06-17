function toggleForm() {
  $('.edit-form-container').toggle('slide', {direction: 'right'});
  $('.edit-machine-link').toggleClass('unactive-link');

  $('.table-container-wide').toggleClass('blur', 600, 'easeOutSine');
  $('.table-container-wide').toggleClass('unactive-link');
  $('.sidebar').toggleClass('blur', 600, 'easeOutSine');
  $('.sidebar').toggleClass('unactive-link');
}

function submitEditMachineForm() {
  $('body').on('click', '.save-machine', function() {
    var btnId = $(this).attr('id');
    var formId = btnId.replace("save_machine", "edit_machine");
    $('#' + formId).submit();
  });
}

function submitNewMachineForm() {
  $('body').on('click', '.create-machine', function() {
    $('#new_machine').submit();
  });
}
