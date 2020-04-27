//查找数据
$(function(){
  $.ajax({
    url:'../api/hot-shoppingPageAPI/getGoodInfo.php',
    dataType:'json',
    success:function(res){
      var htmlStr=template('template-hot',{list:res})
      $('.good-show').html(htmlStr)
      //点击事件
      $('.about').click(function(){
        $.ajax({
          url:'../api/goodPageAPI/getHotshoppingInfo.php',
          data:{
            id:$(this).attr('index')
          },
          success:function(){
            $(location).attr('href','../html/goodPage.html')
          }
        })
      })

      // 收藏 点击事件
      $('.save').click(function(){
        var id=$(this).attr('index-collect')
        $.ajax({
          url:'../api/collectPageAPI/saveHotShoppingInfo.php',
          data:{
            id:id
          }
        })
      })

      //点击 加入购物车
      $('.join-cart').click(function(){
        $.ajax({
          url:'../api/cartPageAPI/getHotShoppingInfo.php',
          data:{
            id:$(this).attr('index-cart')
          }
        })
      })
    }
  })
})