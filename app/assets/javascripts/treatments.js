$(function () {
  $(".banner").click(function() {
    console.log('hoge');
    window.location = $(this).data("link");
  });
});
