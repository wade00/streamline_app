function showForm() {
  $('.search-header').toggleClass('hide-element');
  $('.table-container-wide').toggleClass('table-container-narrow', 600, 'easeOutSine');
  $('.sort-header').toggleClass('sort-header-narrow', 600, 'easeOutSine');

  $('#edit-form-container').html('');
  $('#edit-form-container').removeClass('edit-form-container-show-background');
  $('#edit-form-container').toggleClass('edit-form-container-show');
  $('.edit-machine-link').toggleClass('unactive-link');

  $('.machine-preview').toggleClass('machine-preview-blur', 600, 'easeOutSine');
  $('.machine-preview').toggleClass('unactive-link');
}

function showEditForm() {
  $('.machine-preview').click(function() {
    showForm();
    $(this).toggleClass('machine-preview-override');
    $(this).toggleClass('unactive-link');
  });
}

function showAddForm() {
  $('.add-machine-link').click(function() {
    showForm();
  });
}

// $('body').on('change', '#machine-sort', function() {
//   $(this).submit();
//   // $(this).setAttribute("selected", "selected");
// });
