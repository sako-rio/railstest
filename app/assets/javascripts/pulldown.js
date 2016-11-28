$(function () {
  $('#menu li').on('click', function () {
    $('ul:not(:animated)', this).slideToggle();
  });
});
