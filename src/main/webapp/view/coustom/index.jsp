<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--<%@include file="commons/taglibs.jsp"%>--%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>layuiAdmin std - 通用后台管理模板系统（iframe标准版）</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <link rel="stylesheet" href="/resources/layuiadmin/layui/css/layui.css" media="all">
  <link rel="stylesheet" href="/resources/layuiadmin/style/admin.css" media="all">
</head>
<body class="layui-layout-body">
  
  <div id="LAY_app">
    <div class="layui-layout layui-layout-admin">
      <div class="layui-header">
        <!-- 头部区域 -->
        <ul class="layui-nav layui-layout-left">
          <li class="layui-nav-item layadmin-flexible" lay-unselect>
            <a href="javascript:;" layadmin-event="flexible" title="侧边伸缩">
              <i class="layui-icon layui-icon-shrink-right" id="LAY_app_flexible"></i>
            </a>
          </li>
          <li class="layui-nav-item layui-hide-xs" lay-unselect>
            <a href="/home/index" target="_blank" title="前台">
              <i class="layui-icon layui-icon-website"></i>
            </a>
          </li>
          <li class="layui-nav-item" lay-unselect>
            <a href="javascript:;" layadmin-event="refresh" title="刷新">
              <i class="layui-icon layui-icon-refresh-3"></i>
            </a>
          </li>
          <li class="layui-nav-item layui-hide-xs" lay-unselect>
            <input type="text" placeholder="搜索..." autocomplete="off" class="layui-input layui-input-search" layadmin-event="serach" lay-action="template/search.html?keywords="> 
          </li>
        </ul>
        <ul class="layui-nav layui-layout-right" lay-filter="layadmin-layout-right">
          
          <li class="layui-nav-item" lay-unselect>
            <a lay-href="app/message/index.html" layadmin-event="message" lay-text="消息中心">
              <i class="layui-icon layui-icon-notice"></i>  
              
              <!-- 如果有新消息，则显示小圆点 -->
              <span class="layui-badge-dot"></span>
            </a>
          </li>
          <li class="layui-nav-item layui-hide-xs" lay-unselect>
            <a href="javascript:;" layadmin-event="theme">
              <i class="layui-icon layui-icon-theme"></i>
            </a>
          </li>
          <li class="layui-nav-item layui-hide-xs" lay-unselect>
            <a href="javascript:;" layadmin-event="note">
              <i class="layui-icon layui-icon-note"></i>
            </a>
          </li>
          <li class="layui-nav-item layui-hide-xs" lay-unselect>
            <a href="javascript:;" layadmin-event="fullscreen">
              <i class="layui-icon layui-icon-screen-full"></i>
            </a>
          </li>
          <li class="layui-nav-item" lay-unselect>
            <a href="javascript:;">
              <cite>贤心</cite>
            </a>
            <dl class="layui-nav-child">
              <dd><a lay-href="set/user/info.html">基本资料</a></dd>
              <dd><a lay-href="set/user/password.html">修改密码</a></dd>
              <hr>
              <dd layadmin-event="logout" style="text-align: center;"><a>退出</a></dd>
            </dl>
          </li>
          
          <li class="layui-nav-item layui-hide-xs" lay-unselect>
            <a href="javascript:;" layadmin-event="about"><i class="layui-icon layui-icon-more-vertical"></i></a>
          </li>
          <li class="layui-nav-item layui-show-xs-inline-block layui-hide-sm" lay-unselect>
            <a href="javascript:;" layadmin-event="more"><i class="layui-icon layui-icon-more-vertical"></i></a>
          </li>
        </ul>
      </div>
      
      <!-- 侧边菜单 -->
      <div class="layui-side layui-side-menu">
        <div class="layui-side-scroll">
          <div class="layui-logo" lay-href="/admin/console">
            <span>layuiAdmin</span>
          </div>
          
          <ul class="layui-nav layui-nav-tree" lay-shrink="all" id="LAY-system-side-menu" lay-filter="layadmin-system-side-menu">
            <li data-name="home" class="layui-nav-item layui-nav-itemed">
              <a href="javascript:;" lay-tips="主页" lay-direction="2">
                <i class="layui-icon layui-icon-home"></i>
                <cite>主页</cite>
              </a>
<%--              <dl class="layui-nav-child">--%>
<%--                <dd data-name="console" class="layui-this">--%>
<%--                  <a lay-href="/admin/console">控制台</a>--%>
<%--                </dd>--%>
<%--                <dd data-name="homepage1">--%>
<%--                  <a lay-href="/admin/homepage1">主页一</a>--%>
<%--                </dd>--%>
<%--                <dd data-name="homepage2">--%>
<%--                  <a lay-href="/admin/homepage2">主页二</a>--%>
<%--                </dd>--%>
<%--              </dl>--%>
            </li>
            <li data-name="template" class="layui-nav-item">
              <a href="javascript:;" lay-tips="页面" lay-direction="2">
                <i class="layui-icon layui-icon-template"></i>
                <cite>页面</cite>
              </a>
              <dl class="layui-nav-child">
                <dd><a lay-href="template/personalpage.html">个人主页</a></dd>
                <dd><a lay-href="template/addresslist.html">通讯录</a></dd>
                <dd><a lay-href="template/goodslist.html">商品列表</a></dd>
                <dd><a lay-href="template/msgboard.html">留言板</a></dd>
                <dd><a lay-href="template/search.html">搜索结果</a></dd>
                <dd><a href="user/reg.jsp" target="_blank">注册</a></dd>
                <dd><a href="user/login.jsp" target="_blank">登入</a></dd>
                <dd><a href="user/forget.jsp" target="_blank">忘记密码</a></dd>
                <dd><a lay-href="template/tips/404.html">404页面不存在</a></dd>
                <dd><a lay-href="template/tips/error.html">错误提示</a></dd>
                <dd><a lay-href="http://www.baidu.com/">百度一下</a></dd>
                <dd><a lay-href="http://www.layui.com/">layui官网</a></dd>
                <dd><a lay-href="http://www.layui.com/admin/">layuiAdmin官网</a></dd>
              </dl>
            </li>
            <li data-name="app" class="layui-nav-item">
              <a href="javascript:;" lay-tips="应用" lay-direction="2">
                <i class="layui-icon layui-icon-app"></i>
                <cite>应用</cite>
              </a>
              <dl class="layui-nav-child">
                
                <dd data-name="content">
                  <a href="javascript:;">内容系统</a>
                  <dl class="layui-nav-child">
                    <dd data-name="list"><a lay-href="app/content/list.html">文章列表</a></dd>
                    <dd data-name="tags"><a lay-href="app/content/tags.html">分类管理</a></dd>
                    <dd data-name="comment"><a lay-href="app/content/comment.html">评论管理</a></dd>
                  </dl>
                </dd>
                <dd data-name="forum">
                  <a href="javascript:;">社区系统</a>
                  <dl class="layui-nav-child">
                    <dd data-name="list"><a lay-href="app/forum/list.html">帖子列表</a></dd>
                    <dd data-name="replys"><a lay-href="app/forum/replys.html">回帖列表</a></dd>
                  </dl>
                </dd>
              </dl>
            </li>
            <li data-name="user" class="layui-nav-item">
              <a href="javascript:;" lay-tips="用户" lay-direction="2">
                <i class="layui-icon layui-icon-user"></i>
                <cite>用户</cite>
              </a>
              <dl class="layui-nav-child">
                <dd>
                  <a lay-href="/user/user">人员管理</a>
                </dd>
                <dd>
                  <a lay-href="/user/administrators">后台管理员</a>
                </dd>
<%--                <dd>--%>
<%--                  <a lay-href="/user/role">角色管理</a>--%>
<%--                </dd>--%>
              </dl>
            </li>
          </ul>
        </div>
      </div>

      <!-- 页面标签 -->
      <div class="layadmin-pagetabs" id="LAY_app_tabs">
        <div class="layui-icon layadmin-tabs-control layui-icon-prev" layadmin-event="leftPage"></div>
        <div class="layui-icon layadmin-tabs-control layui-icon-next" layadmin-event="rightPage"></div>
        <div class="layui-icon layadmin-tabs-control layui-icon-down">
          <ul class="layui-nav layadmin-tabs-select" lay-filter="layadmin-pagetabs-nav">
            <li class="layui-nav-item" lay-unselect>
              <a href="javascript:;"></a>
              <dl class="layui-nav-child layui-anim-fadein">
                <dd layadmin-event="closeThisTabs"><a href="javascript:;">关闭当前标签页</a></dd>
                <dd layadmin-event="closeOtherTabs"><a href="javascript:;">关闭其它标签页</a></dd>
                <dd layadmin-event="closeAllTabs"><a href="javascript:;">关闭全部标签页</a></dd>
              </dl>
            </li>
          </ul>
        </div>
        <div class="layui-tab" lay-unauto lay-allowClose="true" lay-filter="layadmin-layout-tabs">
          <ul class="layui-tab-title" id="LAY_app_tabsheader">
            <li lay-id="/admin/console" lay-attr="/admin/console" class="layui-this"><i class="layui-icon layui-icon-home"></i></li>
          </ul>
        </div>
      </div>
      
      
      <!-- 主体内容 -->
      <div class="layui-body" id="LAY_app_body">
        <div class="layadmin-tabsbody-item layui-show">
          <iframe src="/admin/console" frameborder="0" class="layadmin-iframe"></iframe>
        </div>
      </div>
      
      <!-- 辅助元素，一般用于移动设备下遮罩 -->
      <div class="layadmin-body-shade" layadmin-event="shade"></div>
    </div>
  </div>

  <script src="/resources/layuiadmin/layui/layui.js"></script>
  <script>
  layui.config({
    base: '/resources/layuiadmin/' //静态资源所在路径
  }).extend({
    index: 'lib/index' //主入口模块
  }).use('index');
  </script>
</body>
</html>


