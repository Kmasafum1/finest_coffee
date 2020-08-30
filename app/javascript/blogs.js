$(function() {
  $(document).on("mouseover", "h3", "strong", function(){
    $(this).css({"color": "blue"});
  }).on("mouseout", "h3", "strong", function(){
    $(this).css({"color": ""});
  })
});