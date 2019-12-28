<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>课程列表</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="/resources/layuiadmin/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="/resources/layuiadmin/style/admin.css" media="all">
</head>
<body>

<div class="layui-fluid">
    <div class="layui-card">
        <div class="layui-form layui-card-header layuiadmin-card-header-auto">
            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">课程名</label>
                    <div class="layui-input-block">
                        <input type="text" name="courseName" placeholder="请输入" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">指导员</label>
                    <div class="layui-input-block">
                        <input type="text" name="peopleName" placeholder="请输入" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">类型</label>
                    <div class="layui-input-block">
                        <select name="status">
                            <option value="">不限</option>
                            <option value="1" selected>有效</option>
                            <option value="0">无效</option>
                        </select>
                    </div>
                </div>
                <div class="layui-inline">
                    <button class="layui-btn layuiadmin-btn-admin" lay-submit lay-filter="LAY-courses-search">
                        <i class="layui-icon layui-icon-search layuiadmin-button-btn"></i>
                    </button>
                </div>
            </div>
        </div>

        <div class="layui-card-body">
            <div style="padding-bottom: 10px;">
                <%--          <button class="layui-btn layuiadmin-btn-admin" data-type="batchdel">删除</button>--%>
                <button class="layui-btn layuiadmin-btn-admin" data-type="add">添加</button>
            </div>

            <table id="LAY-courses-manage" lay-filter="LAY-courses-manage"></table>
            <script type="text/html" id="table-project">
                <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="view"><i
                        class="layui-icon layui-icon-read"></i>查看</a>
                <a class="layui-btn layui-btn-normal layui-btn-xs" lay-event="edit"><i
                        class="layui-icon layui-icon-edit"></i>编辑</a>
                <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del"><i
                        class="layui-icon layui-icon-delete"></i>删除</a>
            </script>
        </div>
    </div>
</div>

<script src="/resources/layuiadmin/layui/layui.js"></script>
<script>
    layui.config({
        base: '/resources/layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index', 'education', 'table'], function () {
        var $ = layui.$
            , form = layui.form
            , table = layui.table;

        //监听搜索
        form.on('submit(LAY-courses-search)', function (data) {
            var field = data.field;

            //执行重载
            table.reload('LAY-courses-manage', {
                where: field
            });
        });

        //事件
        var active = {
            add: function () {
                window.courses = undefined;
                layer.open({
                    type: 2
                    , title: '添加课程'
                    , content: '/admin/add_courses'
                    , area: [$(window).width() * 0.75 + 'px', $(window).height() * 0.75 + 'px']
                });
            }
        }

        $('.layui-btn.layuiadmin-btn-admin').on('click', function () {
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });
    });
</script>
</body>
</html>

