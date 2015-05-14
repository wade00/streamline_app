//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require jquery-ui
//= require turbolinks
//= require_tree .

var ready;
ready = function() {
  setupListingsIndex();
};

$(document).ready(ready);
$(document).on('page:load', ready);

function setupListingsIndex() {
  if ($('.listing-show-more').length > 0) {
    showMoreListing();
  }
}
