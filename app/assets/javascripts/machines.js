$(document).ready(function(){
  $('.machine-preview-cell').click( function() {
    $('.table-container-wide').toggleClass('table-container-narrow', 1000, "easeOutSine");

    $('#edit-form-container').css({ margin: '0px',
                                    padding: '2em',
                                    position: 'fixed',
                                    right: '0',
                                    width: '64%' });

    $('.machine-preview-cell').toggleClass('machine-preview-cell-narrow', 1000, "easeOutSine");

    $('.description-cell').toggleClass('description-cell-hide', 1000, "easeOutSine");
  });
});

$(document).ready(function(){
  $('.description-cell').click( function() {
    $('.table-container-wide').toggleClass('table-container-narrow', 1000, "easeOutSine");

    $('#edit-form-container').css({ margin: '0px',
                                    padding: '2em',
                                    position: 'fixed',
                                    right: '0',
                                    width: '64%' });

    $('.machine-preview-cell').toggleClass('machine-preview-cell-narrow', 1000, "easeOutSine");

    $('.description-cell').toggleClass('description-cell-hide', 1000, "easeOutSine");
  });
});
