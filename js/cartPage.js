//取数据
$(function () {
  $.ajax({
    url: '../api/cartPageAPI/getInfo.php',
    dataType: 'json',
    success: function (res) {
      var htmlStr = template('template-cart', { list: res })
      $('tbody').html(htmlStr)

      //移除购物车
      $('.remove-cart').click(function () {
        $.ajax({
          url: '../api/cartPageAPI/removeGoodInfo.php',
          data: {
            id: $(this).attr('index-remove')
          },
          success: function () {
            window.location.reload()
          }
        })
      })

      //计算
      $(function () {
        $('.sub').click(function () {
          var index = $(this).parents('tr').attr('index')
          var number = $('.input').eq(index).val()
          --number
          if (number == -1) number++
          $('.input').eq(index).val(number)
        })
        $('.add').click(function () {
          var index = $(this).parents('tr').attr('index')
          var number = $('.input').eq(index).val()
          ++number
          $('.input').eq(index).val(number)
        })
      })

      //点击购买
      $('.buy').click(function(){
        var index=$(this).attr('index')
        var number=$('.input').eq(index).val()
        var price=$(this).attr('price')
        var money=Math.ceil(price*number)
        alert('您好，您一共需要支付：'+money+'元')
      })
    }
  })
})
