$(function() {
  $(".search-input").on("keyup", function() {
    let input = $(".search-input").val();
    $.ajax({
      type: 'GET',
      url: '/blogs/search',
      data: { keyword: input },
      dataType: 'json'
    })
    .done(function(blogs) {
      $(".columns").empty();
      if (blogs.length !== 0) {
        blogs.forEach(function(blog){
          appendBlog(blog);
        });
      }
      else {
        appendErrMsgToHTML("一致するブログがありません");
      }
    }) 
  });
});