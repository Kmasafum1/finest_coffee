$(function() {
  $(document).on("mouseover", "#star.fa.fa-star", function(){
    $(this).css({"color": "blue"});
  }).on("mouseout", "#star.fa.fa-star", function(){
    $(this).css({"color": ""});
  })
})