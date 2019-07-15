$(function() {
  //マウスを乗せたら発動
  $('.main-header__list--font').hover(function() {
    //マウスを乗せたら色が変わる
    $(this).css('color', '#b33e5c');
  //ここにはマウスを離したときの動作を記述
  }, function() {
    //色指定を空欄にすれば元の色に戻る
    $(this).css('color', '');
  });
});