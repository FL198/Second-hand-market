// 传数据
$.ajax({
  url: '../api/goodPageAPI/getGoodInfo.php',
  dataType: 'json',
  success: function (res) {
    var htmlStr = template('template-good', res)
    $('.sale').html(htmlStr)
    //数量运算
    $(function () {
      var number = 0
      $('.sub').click(function () {
        --number;
        if (number == -1)++number
        $('.input').val(number)
      })
      $('.add').click(function () {
        ++number;
        $('.input').val(number)
      })
      $('.input').on('input', function () {
        number = $(this).val()
      })
      //点击加入购物车
      $('.join-cart').click(function () {
        $.ajax({
          url: '../api/cartPageAPI/getGoodInfo.php',
          data: {
            number: number
          }
        })
      })
      //点击购买
      $('.buy').click(function () {
        var price = $(this).attr('price');
        var money=Math.ceil(price*number)
        alert('您好，您一共需要支付：'+money+'元')
      })
    })
  }
})

