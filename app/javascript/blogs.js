// トップページ
$(function() {
  $(document).on("mouseover", "h3", "strong", function(){
    $(this).css({"color": "blue"});
  }).on("mouseout", "h3", "strong", function(){
    $(this).css({"color": ""});
  })
  $(document).on("mouseover", "strong", function(){
    $(this).css({"color": "red"});
  }).on("mouseout", "strong", "p", function(){
    $(this).css({"color": ""});
  }) 
  $(document).on("mouseover", "p", function(){
    $(this).css({"color": "red"});
  }).on("mouseout", "p", function(){
    $(this).css({"color": ""});
  })  
})