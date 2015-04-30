$(document).ready(function(){
  $('.machine-preview-cell').click( function() {
    $('.table-container-wide').toggleClass('table-container-narrow');

    $('#edit-form-container').css({ margin: '0px',
                                    padding: '2em',
                                    position: 'fixed',
                                    right: '0',
                                    width: '64%' });

    $('.machine-preview-cell').css({ 'padding-left': '0',
                                     'padding-right': '0' });

    $('.description-cell').hide();
  });
});

$(document).ready(function(){
  $('.description-cell').click( function() {
    $('.table-container-wide').toggleClass('table-container-narrow');

    $('#edit-form-container').css({ margin: '0px',
                                    padding: '2em',
                                    position: 'fixed',
                                    right: '0',
                                    width: '64%' });

    $('.machine-preview-cell').css({ 'padding-left': '0',
                                     'padding-right': '0' });

    $('.description-cell').hide();
  });
});
