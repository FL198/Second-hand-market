//倒计时函数
function countDownTime(time,endtime){
  var durtime=(endtime-time)/1000
  var hour=Math.floor(durtime/3600)<10?'0'+Math.floor(durtime/3600):Math.floor(durtime/3600)
  var minute=Math.floor((durtime-hour*3600)/60)<10?'0'+Math.floor((durtime-hour*3600)/60):Math.floor((durtime-hour*3600)/60)
  var second=Math.floor(durtime-hour*3600-minute*60)<10?'0'+Math.floor(durtime-hour*3600-minute*60):Math.floor(durtime-hour*3600-minute*60)
  if(durtime<0){
    hour=0
    minute=0
    second=0
  }
  return{
    hour:hour,
    minute:minute,
    second:second
  }
}

$(function(){
  var nowTime,durTime
  var endTime=+new Date("2020-03-20 24:00:00")
  setInterval(function(){
    nowTime=+new Date()
    durTime=countDownTime(nowTime,endTime)
    $('.hour').html(durTime.hour+'时')
    $('.minute').html(durTime.minute+'分')
    $('.second').html(durTime.second+'秒')
  },1000)
})

//获取数据
$(function(){
  $.ajax({
    url:'../api/time-shoppingPageAPI/getGoodInfo.php',
    dataType:'json',
    success:function(res){
      var htmlStr=template('template-time',{list:res})
      $('.good-show').html(htmlStr)
      //点击事件
      $('.about').click(function(){
        $.ajax({
          url:'../api/goodPageAPI/getTimeshopingInfo.php',
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
          url:'../api/collectPageAPI/saveTimeShoppingInfo.php',
          data:{
            id:id
          }
        })
      })

      //点击 加入购物车
      $('.join-cart').click(function(){
        $.ajax({
          url:'../api/cartPageAPI/getTimeShoppingInfo.php',
          data:{
            id:$(this).attr('index-cart')
          }
        })
      })
    }
  })
})