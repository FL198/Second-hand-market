//家具信息请求
$(function(){
  $.ajax({
    url:'../api/home-appPageAPI/getHomeAppInfo.php',
    dataType:'json',
    success:function(res){
      var htmlStr=template('template-homeApp',{list:res})
      $('.good').html(htmlStr)
      
      //点击事件
      $('.about').click(function(){
        $.ajax({
          url:'../api/goodPageAPI/getHomeAppInfo.php',
          data:{
            id:$(this).attr('index')
          },
          success:function(res){
            $(location).attr('href','../html/goodPage.html')
          }
        })
      })

      // 收藏 点击事件
      $('.save').click(function(){
        var id=$(this).attr('index-collect')
        $.ajax({
          url:'../api/collectPageAPI/saveHomeAppInfo.php',
          data:{
            id:id
          }
        })
      })
       //点击 加入购物车
       $('.join-cart').click(function(){
        $.ajax({
          url:'../api/cartPageAPI/getHomeAppInfo.php',
          data:{
            id:$(this).attr('index-cart')
          }
        })
      })
    }
  })
})