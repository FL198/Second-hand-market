//注册校验
$(function () {
  $('#register-form').bootstrapValidator({
    feedbackIcons: {
      valid: 'glyphicon glyphicon-ok',
      invalid: 'glyphicon glyphicon-remove',
      validating: 'glyphicon glyphicon-refresh'
    },
    fields: {
      username: {
        validators: {
          notEmpty: {
            message: '用户名不能空'
          },
          stringLength: {
            min: 3,
            max: 12,
            message: '用户名长度必须在3到12之间'
          },
          callback: {
            message: '用户名已存在'
          }
        }
      },
      phone: {
        validators: {
          notEmpty: {
            message: '手机号不能为空'
          },
          regexp: {
            regexp: /^1(3|4|5|6|7|8|9)\d{9}$/,
            message: '手机号格式不正确'
          },
          callback: {
            message: '该手机号已被注册过'
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
          }
        }
      },
      psw_again: {
        validators: {
          notEmpty: {
            message: '确认密码不能为空'
          },
          identical: {
            field: 'password',
            message: '两次输入的密码不一致'
          }
        }
      }
    }
  })

  var validator=$('#register-form').data('bootstrapValidator')
  $('#register-form').on('success.form.bv', function (e) {
    e.preventDefault()
    $.ajax({
      type: 'post',
      url: '../api/userAPI/register.php',
      data: $('#register-form').serialize(),
      dataType: 'json',
      success: function (res) {
        if (res.status == 100) {
          $(location).attr('href', '../html/mainPage.html')
        }
        if (res.status == 101) {
          validator.updateStatus('username', 'INVALID','callback')
        }
        if (res.status == 102) {
          validator.updateStatus('phone', 'INVALID','callback')
        }
      }
    })
  })
})