//查找电脑信息
$(function () {
  $.ajax({
    url: '../api/computerPageAPI/getComputerInfo.php',
    dataType: 'json',
    success: function (res) {
      var htmlStr = template('template-computer', { list: res })
      $('.good').html(htmlStr)

      //点击事件
      $('.about').click(function () {
        $.ajax({
          url: '../api/goodPageAPI/getComputerInfo.php',
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
          url: '../api/collectPageAPI/saveComputerInfo.php',
          data: {
            id: id
          }
        })
      })

      //点击 加入购物车
      $('.join-cart').click(function () {
        $.ajax({
          url: '../api/cartPageAPI/getIComputerInfo.php',
          data: {
            id: $(this).attr('index-cart')
          }
        })
      })
    }
  })
})