function activeSidebarLink() {
  $('.sidebar-link').click(function() {
    $('.sidebar-link').removeClass('sidebar-clicked');
    $(this).addClass('sidebar-clicked');
  });
}
