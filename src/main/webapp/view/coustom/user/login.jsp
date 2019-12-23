
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--<%@ include file="../commons/taglibs.jsp"%>--%>
<!DOCTYPE html>
<html>
<head>
  <title>登入</title>
  <meta charset="utf-8">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width,initial-scale=0.2, minimum-scale=0.2, maximum-scale=1.0, user-scalable=yes">
  <link rel="stylesheet" href="/resources/layuiadmin/layui/css/layui.css" media="all">
  <link rel="stylesheet" href="/resources/layuiadmin/style/admin.css" media="all">
  <link rel="stylesheet" href="/resources/layuiadmin/style/login.css" media="all">
</head>
<body>

  <div class="layadmin-user-login layadmin-user-display-show" id="LAY-user-login" style="display: none;">

    <div class="layadmin-user-login-main">
      <div class="layadmin-user-login-box layadmin-user-login-header">
        <h2>vcl</h2>
        <p>后台管理系统</p>
      </div>
      <div class="layadmin-user-login-box layadmin-user-login-body layui-form">
        <div class="layui-form-item">
          <label class="layadmin-user-login-icon layui-icon layui-icon-username" for="LAY-user-login-username"></label>
          <input type="text" name="login_name" id="LAY-user-login-username" lay-verify="required" placeholder="用户名" class="layui-input">
        </div>
        <div class="layui-form-item">
          <label class="layadmin-user-login-icon layui-icon layui-icon-password" for="LAY-user-login-password"></label>
          <input type="password" name="password" id="LAY-user-login-password" lay-verify="required" placeholder="密码" class="layui-input">
        </div>
<%--        <div class="layui-form-item">--%>
<%--          <div class="layui-row">--%>
<%--            <div class="layui-col-xs7">--%>
<%--              <label class="layadmin-user-login-icon layui-icon layui-icon-vercode" for="LAY-user-login-vercode"></label>--%>
<%--              <input type="text" name="vercode" id="LAY-user-login-vercode" lay-verify="required" placeholder="图形验证码" class="layui-input">--%>
<%--            </div>--%>
<%--            <div class="layui-col-xs5">--%>
<%--              <div style="margin-left: 10px;">--%>
<%--&lt;%&ndash;                <img src="https://www.oschina.net/action/user/captcha" class="layadmin-user-login-codeimg" id="LAY-user-get-vercode">&ndash;%&gt;--%>
<%--                <img src="/coustom/login/verification" class="layadmin-user-login-codeimg" id="LAY-user-get-vercode">--%>
<%--              </div>--%>
<%--            </div>--%>
<%--          </div>--%>
<%--        </div>--%>
        <div class="layui-form-item" style="margin-bottom: 20px;">
          <input type="checkbox" name="remember" lay-skin="primary" title="记住密码">
<%--          <a href="forget.jsp" class="layadmin-user-jump-change layadmin-link" style="margin-top: 7px;">忘记密码？</a>--%>
        </div>
        <div class="layui-form-item">
          <button class="layui-btn layui-btn-fluid" lay-submit lay-filter="LAY-user-login-submit">登 入</button>
        </div>
<%--        <div class="layui-trans layui-form-item layadmin-user-login-other">--%>
<%--          <label>社交账号登入</label>--%>
<%--          <a href="javascript:;"><i class="layui-icon layui-icon-login-qq"></i></a>--%>
<%--          <a href="javascript:;"><i class="layui-icon layui-icon-login-wechat"></i></a>--%>
<%--          <a href="javascript:;"><i class="layui-icon layui-icon-login-weibo"></i></a>--%>
<%--          --%>
<%--          <a href="reg.jsp" class="layadmin-user-jump-change layadmin-link">注册帐号</a>--%>
<%--        </div>--%>
      </div>
    </div>
    
    <div class="layui-trans layadmin-user-login-footer">
      
<%--      <p>© 2018 <a href="http://www.layui.com/" target="_blank">layui.com</a></p>--%>
<%--      <p>--%>
<%--        <span><a href="http://www.layui.com/admin/#get" target="_blank">获取授权</a></span>--%>
<%--        <span><a href="http://www.layui.com/admin/pro/" target="_blank">在线演示</a></span>--%>
<%--        <span><a href="http://www.layui.com/admin/" target="_blank">前往官网</a></span>--%>
<%--      </p>--%>
    </div>
    
    <!--<div class="ladmin-user-login-theme">
      <script type="text/html" template>
        <ul>
          <li data-theme=""><img src="{{ layui.setter.base }}style/res/bg-none.jpg"></li>
          <li data-theme="#03152A" style="background-color: #03152A;"></li>
          <li data-theme="#2E241B" style="background-color: #2E241B;"></li>
          <li data-theme="#50314F" style="background-color: #50314F;"></li>
          <li data-theme="#344058" style="background-color: #344058;"></li>
          <li data-theme="#20222A" style="background-color: #20222A;"></li>
        </ul>
      </script>
    </div>-->
    
  </div>

  <script src="/resources/layuiadmin/layui/layui.js"></script>
  <script src="/resources/js/md5.js"></script>
  <script>
      layui.config({
          base: '/resources/layuiadmin/' //静态资源所在路径
      }).extend({
          index: 'lib/index' //主入口模块
      }).use(['index', 'user'], function () {
          var $ = layui.$
              , setter = layui.setter
              , admin = layui.admin
              , form = layui.form
          // ,router = layui.router()
          // ,search = router.search;

          form.render();
          var localUser;
          var passwordChange = false;
          getUserFormLocal();

          $('#LAY-user-login-password').on('change', function () {
              var password = $.trim($('#LAY-user-login-password').val());
              if (password) {
                  passwordChange = true;
                  if (localUser) {
                      localStorage.removeItem("localUser_1");
                  }
                  $(this).val(md5(password));
              }
          });
          if (window.parent.length > 0) {
              console.log(location)
              window.top.location = location;
          }
          //提交
          form.on('submit(LAY-user-login-submit)', function (obj) {
              var login_name = $.trim($('#LAY-user-login-username').val());
              var password = $.trim($('#LAY-user-login-password').val());
              var vercode = $.trim($('#LAY-user-login-vercode').val());
              var flg = $('input[name=remember]').prop('checked');
              $.post('/coustom/login_user', {
                  login_name: login_name,
                  password: password,
                  vercode: vercode
              },function (data) {
                  if(data.success){
                      if (flg) {
                          localStorage.setItem("localUser_1", JSON.stringify({
                              username: login_name,
                              password: password,
                              date: new Date()
                          }));
                      } else {
                          if (localUser) {
                              localStorage.removeItem('localUser_1');
                          }
                      }
                      location.href = "/coustom/index";
                  }else{
                      layer.msg(data.message);
                  }
              })
          });

          function getUserFormLocal() {
              localUser = JSON.parse(localStorage.getItem("localUser_1"));
              if (localUser) {
                  console.log(localUser)
                  $('#LAY-user-login-username').val(localUser.username);
                  $('#LAY-user-login-password').val(localUser.password);
                  $('input[name=remember]').prop('checked', true);
                  form.render();
              }
          }
      });


  </script>
</body>
</html>