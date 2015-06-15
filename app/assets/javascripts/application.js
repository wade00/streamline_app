//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require jquery-ui
//= require turbolinks
//= require_tree .

var ready;
ready = function() {
  setupListings();
  setupBase();
};

$(document).ready(ready);
$(document).on('page:load', ready);

function setupListings() {
  if ($('.listing-show-more').length > 0) {
    showMoreListing();
  }

  if ($('.listing-checkbox').length > 0) {
    submitListingForm();
  }
}

function setupBase() {
  if ($('.sidebar-link').length > 0) {
    activeSidebarLink();
  }

  if ($('#flash').length > 0) {
    setTimeout(function() {
      $('#flash').fadeOut();
    }, 2000);
  }
}
