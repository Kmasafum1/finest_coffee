$(function() {
  //クリックイベントを作成
  $('.signup-show').click(function() {
  //モーダルを表示するようにする
    $('#signup-modal').fadeIn();
  });
  //閉じるボタンが押されたら消えるようにする
  $('#close-modal').click(function() {
    $('#signup-modal').fadeOut();
  });
});