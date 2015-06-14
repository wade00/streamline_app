//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require jquery-ui
//= require turbolinks
//= require_tree .

var ready;
ready = function() {
  setupListingsIndex();
  setupBase();
};

$(document).ready(ready);
$(document).on('page:load', ready);

function setupListingsIndex() {
  if ($('.listing-show-more').length > 0) {
    showMoreListing();
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

