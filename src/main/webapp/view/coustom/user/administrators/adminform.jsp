<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>新增管理员</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <link rel="stylesheet" href="/resources/layuiadmin/layui/css/layui.css" media="all">
</head>
<body>

  <div class="layui-form" lay-filter="layuiadmin-form-admin" id="layuiadmin-form-admin" style="padding: 20px 30px 0 0;">
    <input hidden name="id"/>
    <div class="layui-form-item">
      <label class="layui-form-label">登录名</label>
      <div class="layui-input-inline">
        <input type="text" name="login_name" lay-verify="login_name" placeholder="请输入用户名" autocomplete="off" class="layui-input">
      </div>
    </div>
    <div class="layui-form-item">
      <label class="layui-form-label">姓名</label>
      <div class="layui-input-inline">
        <input type="text" name="name" lay-verify="required" placeholder="请输入用户名" autocomplete="off" class="layui-input">
      </div>
    </div>
    <div class="layui-form-item">
      <label class="layui-form-label">年龄</label>
      <div class="layui-input-inline">
        <input type="text" name="age" lay-verify="age" placeholder="请输入角色类型" autocomplete="off" class="layui-input">
      </div>
    </div>
    <div class="layui-form-item" lay-filter="sex">
      <label class="layui-form-label">选择性别</label>
      <div class="layui-input-block">
        <input type="radio" name="gender" value="男" title="男" checked>
        <input type="radio" name="gender" value="女" title="女">
      </div>
    </div>
    <div class="layui-form-item" lay-filter="sex">
      <label class="layui-form-label">选择状态</label>
      <div class="layui-input-block">
        <input type="radio" name="status" value="1" title="有效" checked>
        <input type="radio" name="status" value="0" title="无效">
      </div>
    </div>
    <div class="layui-form-item layui-hide">
      <input type="button" lay-submit lay-filter="LAY-user-back-submit" id="LAY-user-back-submit" value="确认">
    </div>
  </div>

  <script src="/resources/layuiadmin/layui/layui.js"></script>
  <script>
  layui.config({
    base: '/resources/layuiadmin/' //静态资源所在路径
  }).extend({
    index: 'lib/index' //主入口模块
  }).use(['index', 'form'], function(){
    var $ = layui.$
    ,form = layui.form ;

    if(parent.user){
      var data = parent.user;
      $('input[name=login_name]').attr('lay-verify','required').attr('disabled','disabled');
      $('#layuiadmin-form-admin input').each(function () {
        var name = $(this).attr('name');
        $(this).val(data[name]);
      });
    }

    form.verify({
      age: [
        /^[0-9]*[1-9][0-9]*$/,
        '只能输入正整数'
      ],
      path:[
        /[\S]+/,
        "人员相片不能为空"
      ],
      login_name: function(value,item){
        if(/[\S]+/.test(value)){
          var msg;
          $.ajax({
            url: '/user/check_login_name',
            data: {login_name : value},
            dataType: 'json',
            async: false,
            type: 'post',
            success: function (data) {
              if(!data.success){
                msg = data.message
              }
            }
          });
          return msg;
        }else {
          return '登录名不能为空';
        }
      }
    })
  });

  </script>
</body>
</html>