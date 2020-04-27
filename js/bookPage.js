//书本信息请求
$(function () {
  $.ajax({
    url: '../api/bookPageAPI/getBookInfo.php',
    dataType: 'json',
    success: function (res) {
      var htmlStr = template('template-book', { list: res })
      $('.good').html(htmlStr)

      //点击事件
      $('.about').click(function () {
        $.ajax({
          url: '../api/goodPageAPI/getBookInfo.php',
          data: {
            id: $(this).attr('index')
          },
          success: function (res) {
            $(location).attr('href', '../html/goodPage.html')
          }
        })
      })

      // 收藏 点击事件
      $('.save').click(function () {
        var id = $(this).attr('index-collect')
        $.ajax({
          url: '../api/collectPageAPI/saveBookInfo.php',
          data: {
            id: id
          }
        })
      })

      //点击 加入购物车
      $('.join-cart').click(function () {
        $.ajax({
          url: '../api/cartPageAPI/getBookInfo.php',
          data: {
            id: $(this).attr('index-cart')
          }
        })
      })
    }
  })
})