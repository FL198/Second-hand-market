//渲染数据
$(function () {
  //手机信息请求
  $.ajax({
    url: '../api/mainPageAPI/GetPhoneInfo.php',
    dataType: 'json',
    success: function (res) {
      var htmlStr = template('template-phone', { list: res })
      $('#phone').html(htmlStr)
      // 点击事件
      $('#phone a').click(function () {
        $.ajax({
          url:'../api/mainPageAPI/getGoodInfo.php',
          data:{
            goodIndex:$(this).attr('goodIndex'),
            type:'phone'
          },
          success:function(res){
            $(location).attr('href','../html/goodPage.html')
          }
        })
      })      
    }
  })
  //电脑信息请求
  $.ajax({
    url: '../api/mainPageAPI/GetComputerInfo.php',
    dataType: 'json',
    success: function (res) {
      var htmlStr = template('template-computer', { list: res })
      $('#computer').html(htmlStr)
      // 点击事件
      $('#computer a').click(function () {
        $.ajax({
          url:'../api/mainPageAPI/getGoodInfo.php',
          data:{
            goodIndex:$(this).attr('goodIndex'),
            type:'computer'
          },
          success:function(res){
            $(location).attr('href','../html/goodPage.html')
          }
        })
      })      
    }
  })
  //ipad请求
  $.ajax({
    url: '../api/mainPageAPI/GetIpadInfo.php',
    dataType: 'json',
    success: function (res) {
      var htmlStr = template('template-ipad', { list: res })
      $('#ipad').html(htmlStr)
      //点击事件
      $('#ipad a').click(function () {
        $.ajax({
          url:'../api/mainPageAPI/getGoodInfo.php',
          data:{
            goodIndex:$(this).attr('goodIndex'),
            type:'ipad'
          },
          success:function(res){
            $(location).attr('href','../html/goodPage.html')
          }
        })
      })      
    }
  })
  //数码请求
  $.ajax({
    url: '../api/mainPageAPI/GetDigicamInfo.php',
    dataType: 'json',
    success: function (res) {
      var htmlStr = template('template-digicam', { list: res })
      $('#digicam').html(htmlStr)
      //点击事件
      $('#digicam a').click(function () {
        $.ajax({
          url:'../api/mainPageAPI/getGoodInfo.php',
          data:{
            goodIndex:$(this).attr('goodIndex'),
            type:'digicam'
          },
          success:function(res){
            $(location).attr('href','../html/goodPage.html')
          }
        })
      })      
    }
  })
  //大家电请求
  $.ajax({
    url: '../api/mainPageAPI/GetbigAppInfo.php',
    dataType: 'json',
    success: function (res) {
      var htmlStr = template('template-bigApp', { list: res })
      $('#bigApp').html(htmlStr)
      //点击事件
      $('#bigApp a').click(function () {
        $.ajax({
          url:'../api/mainPageAPI/getGoodInfo.php',
          data:{
            goodIndex:$(this).attr('goodIndex'),
            type:'bigApp'
          },
          success:function(res){
            $(location).attr('href','../html/goodPage.html')
          }
        })
      })    
    }
  })
  //小家电请求
  $.ajax({
    url: '../api/mainPageAPI/GetsmallAppInfo.php',
    dataType: 'json',
    success: function (res) {
      var htmlStr = template('template-smallApp', { list: res })
      $('#smallApp').html(htmlStr)
      //点击事件
      $('#smallApp a').click(function () {
        $.ajax({
          url:'../api/mainPageAPI/getGoodInfo.php',
          data:{
            goodIndex:$(this).attr('goodIndex'),
            type:'smallApp'
          },
          success:function(res){
            $(location).attr('href','../html/goodPage.html')
          }
        })
      })    
    }
  }),
  //腕表请求
    $.ajax({
      url: '../api/mainPageAPI/GetWatchInfo.php',
      dataType: 'json',
      success: function (res) {
        var htmlStr = template('template-watch', { list: res })
        $('#watch').html(htmlStr)
        //点击事件
        $('#watch a').click(function () {
          $.ajax({
            url:'../api/mainPageAPI/getGoodInfo.php',
            data:{
              goodIndex:$(this).attr('goodIndex'),
              type:'watch'
            },
            success:function(res){
              $(location).attr('href','../html/goodPage.html')
            }
          })
        })      
      }
    }),
    //箱包请求
    $.ajax({
      url: '../api/mainPageAPI/GetBagInfo.php',
      dataType: 'json',
      success: function (res) {
        var htmlStr = template('template-bag', { list: res })
        $('#bag').html(htmlStr)
        //点击事件
        $('#bag a').click(function () {
          $.ajax({
            url:'../api/mainPageAPI/getGoodInfo.php',
            data:{
              goodIndex:$(this).attr('goodIndex'),
              type:'bag'
            },
            success:function(res){
              $(location).attr('href','../html/goodPage.html')
            }
          })
        })      
      }
    })
})

