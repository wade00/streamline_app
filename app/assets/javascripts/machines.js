$(document).ready(function(){
  $('.machine-preview-cell').click( function() {
    $('.table-container-wide').toggleClass('table-container-narrow', 600, "easeOutSine");

    $('#edit-form-container').css({ margin: '0px',
                                    height: '100vh',
                                    padding: '2em',
                                    position: 'absolute',
                                    right: '0',
                                    top: '0',
                                    width: '64%' });

    $('.machine-preview-cell').toggleClass('machine-preview-cell-narrow', 600, "easeOutSine");

    $('.description-cell').toggleClass('description-cell-hide', 100, "easeOutSine");
  });
});

$(document).ready(function(){
  $('.description-cell').click( function() {
    $('.table-container-wide').toggleClass('table-container-narrow', 600, "easeOutSine");

    $('#edit-form-container').css({ margin: '0px',
                                    padding: '2em',
                                    position: 'absolute',
                                    right: '0',
                                    width: '64%' });

    $('.machine-preview-cell').toggleClass('machine-preview-cell-narrow', 600, "easeOutSine");

    $('.description-cell').toggleClass('description-cell-hide', 100, "easeOutSine");
  });
});
