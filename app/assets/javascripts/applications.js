$(function () {

  $('#confirm').on('click', function () {
    if ($('#application_name').val() == '') {
      if (!alert('お名前は必須項目です。')) {
        return false;
      }
    }

    if ($('#application_age').val() == '') {
      if (!alert('年齢は必須項目です。')) {
        return false;
      }
    }

    if ($('#application_height').val() == '') {
      if (!alert('身長は必須項目です。')) {
        return false;
      }
    }

    if ($('#application_weight').val() == '') {
      if (!alert('体重は必須項目です。')) {
        return false;
      }
    }

    if ($('#application_threesize').val() == '') {
      if (!alert('スリーサイズは必須項目です。')) {
        return false;
      }
    }

    if ($('#application_cup').val() == '') {
      if (!alert('Cup数は必須項目です。')) {
        return false;
      }
    }

    if ($('#application_address').val() == '') {
      if (!alert('お住まいは必須項目です。')) {
        return false;
      }
    }

    if ($('#application_experience').val() == '') {
      if (!alert('風俗経験は必須項目です。')) {
        return false;
      }
    }

    if ($('#application_profession').val() == '') {
      if (!alert('現在の職業は必須項目です。')) {
        return false;
      }
    }

    if ($('#application_contact').val() == '') {
      if (!alert('ご連絡先は必須項目です。')) {
        return false;
      }
    }

    if ($('#application_preferreddate').val() == '') {
      if (!alert('面接希望日は必須項目です。')) {
        return false;
      }
    }
  });
  var $width =640; // 横幅
  var $height =300; // 高さ
  var $interval = 3000; // 切り替わりの間隔（ミリ秒）
  var $fade_speed = 1000; // フェード処理の早さ（ミリ秒）
  $("#slide ul li").css({"position":"relative","overflow":"hidden","width":$width,"height":$height});
  $("#slide ul li").hide().css({"position":"absolute","top":0,"left":0});
  $("#slide ul li:first").addClass("active").show();
  setInterval(function(){
  var $active = $("#slide ul li.active");
  var $next = $active.next("li").length?$active.next("li"):$("#slide ul li:first");
  $active.fadeOut($fade_speed).removeClass("active");
  $next.fadeIn($fade_speed).addClass("active");
  },$interval);
});
