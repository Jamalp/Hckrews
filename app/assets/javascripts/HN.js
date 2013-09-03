$(function () {

  function showPosts(){
    $.ajax({
      type: 'get',
      url:'/show/posts',
      dataType: 'json'
    };
  };
});