function confirmListings() {
  $('.listing-confirm-button').click(function() {
    $(this).val('√');
    $(this).removeClass('btn-primary');
  });
}

function showMoreListing() {
  $('.listing-show-more').click(function() {
    var listingId = $(this).attr('id');
    $('#' + listingId + '_stats').slideToggle();

    if($(this).html() == '<i class="fa fa-minus-square"></i>') {
      $(this).html('<i class="fa fa-plus-square"></i>');
    } else {
      $(this).html('<i class="fa fa-minus-square"></i>');
    }
  });
}
