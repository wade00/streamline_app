$(document).ready(function(){
  $('.machine-preview-cell').click( function() {
    $('.table-container').animate({ width: '30%',
                                    margin: '0px' });

    $('#edit-form-container').css({ width: '64%',
                                    margin: '0px',
                                    position: 'fixed',
                                    right: '0' });
  });
});
