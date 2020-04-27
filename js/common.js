//登录拦截
$(function(){
  var url=$(location).attr('href')
  if(url!='http://localhost/BSC/html/registerPage.html'&&url!='http://localhost/BSC/html/loginPage.html'){
    $.ajax({
      url:'../api/userAPI/checkUser.php',
      success:function(res){
        if(res==='false'){
          $(location).attr('href','../html/loginPage.html')
        }
      }
    })
  }
})