//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require jquery-ui
//= require turbolinks
//= require_tree .

var ready;
ready = function() {
  setupMachinesIndex();
  setupListingsIndex();
};

$(document).ready(ready);
$(document).on('page:load', ready);

function setupMachinesIndex() {
  if ($('.machine-preview').length > 0) {
    showEditForm();
  }

  if ($('.add-machine-link').length > 0) {
    showAddForm();
  }
}

function setupListingsIndex() {
  if ($('.listing-show-more').length > 0) {
    showMoreListing();
  }
}
