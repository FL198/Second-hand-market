//登录校验
$(function () {
  $('#login-form').bootstrapValidator({
    feedbackIcons: {
      valid: 'glyphicon glyphicon-ok',
      invalid: 'glyphicon glyphicon-remove',
      validating: 'glyphicon glyphicon-refresh'
    },
    fields: {
      username: {
        validators: {
          notEmpty: {
            message: '用户名不能为空'
          },
          stringLength: {
            min: 3,
            max: 12,
            message: '用户名长度必须在3到12之间'
          },
          callback:{
            message:'用户名不存在'
          }
        }
      },
      password: {
        validators: {
          notEmpty: {
            message: '密码不能为空'
          },
          stringLength: {
            min: 6,
            max: 18,
            message: '密码长度必须在6到18之间'
          },
          callback:{
            message:'密码错误'
          }
        }
      }
    }
  })
  var validator=$('#login-form').data('bootstrapValidator')
  $("#login-form").on('success.form.bv', function (e) {
    e.preventDefault();
    $.ajax({
      url:'../api/userAPI/login.php',
      type:'post',
      dataType:'json',
      data:$('#login-form').serialize(),
      success:function(res){
        if(res.status==100){
          $(location).attr('href','../html/mainPage.html')
        }
        if(res.status==101){
          validator.updateStatus('password','INVALID','callback')
        }
        if(res.status==102){
          validator.updateStatus('username','INVALID','callback')
        }
      }
    })
  });
})
