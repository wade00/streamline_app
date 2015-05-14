function toggleForm() {
  $('.edit-form-container').toggle('slide', {direction: 'right'});
  $('.edit-machine-link').toggleClass('unactive-link');

  $('.table-container-wide').toggleClass('blur', 600, 'easeOutSine');
  $('.table-container-wide').toggleClass('unactive-link');
  $('.sidebar').toggleClass('blur', 600, 'easeOutSine');
  $('.sidebar').toggleClass('unactive-link');
}
