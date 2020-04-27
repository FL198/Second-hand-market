//获取数据
$(function () {
  $.ajax({
    url: '../api/collectPageAPI/getInfo.php',
    dataType: 'json',
    success: function (res) {
      var htmlStr = template('template-collect', { list: res })
      $('.show-collect').html(htmlStr)

      //点击查看信息
      $('.about').click(function () {
        $.ajax({
          url: '../api/goodPageAPI/getCollectInfo.php',
          data: {
            id: $(this).attr('index')
          },
          success: function () {
            $(location).attr('href', '../html/goodPage.html')
          }
        })
      })

      //点击取消关注
      $('.cancel').click(function () {
        $.ajax({
          url: '../api/collectPageAPI/cancelInfo.php',
          data: {
            id: $(this).attr('index-cancel')
          },
          success: function () {
            window.location.reload()
          }
        })
      })

      //点击 加入购物车
      $('.join-cart').click(function () {
        $.ajax({
          url: '../api/cartPageAPI/getCollectInfo.php',
          data: {
            id: $(this).attr('index-cart')
          }
        })
      })
    }
  })
})