<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>banner列表</title>
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
                    <label class="layui-form-label">banner标题</label>
                    <div class="layui-input-block">
                        <input type="text" name="bannerTitleContext" placeholder="请输入" autocomplete="off" class="layui-input">
                    </div>
                </div>
            <c:if test="${type == 1}">
                <div class="layui-inline">
                    <label class="layui-form-label">推荐home</label>
                    <div class="layui-input-block">
                        <select name="status">
                            <option value="">不限</option>
                            <option value="2">推荐</option>
                            <option value="1">不推荐</option>
                        </select>
                    </div>
                </div>
            </c:if>
                <%--<div class="layui-inline">--%>
                    <%--<label class="layui-form-label">轮播图模块</label>--%>
                    <%--<div class="layui-input-block">--%>
                        <%--<select name="type">--%>
                            <%--<option value="">不限</option>--%>
                            <%--<option value="1">home</option>--%>
                            <%--<option value="2">publication</option>--%>
                            <%--<option value="3">media</option>--%>
                            <%--<option value="4">people</option>--%>
                            <%--<option value="5">activitis</option>--%>
                            <%--<option value="6">education</option>--%>
                            <%--<option value="7">join us</option>--%>
                        <%--</select>--%>
                    <%--</div>--%>
                <%--</div>--%>
                <div class="layui-inline">
                    <button class="layui-btn layuiadmin-btn-admin" lay-submit lay-filter="LAY-banner-search">
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

            <table id="LAY-banner-manage" lay-filter="LAY-banner-manage"></table>
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
    }).use(['index',  'table'], function () {
        var $ = layui.$
            , form = layui.form
            , table = layui.table;


        table.render({
            elem: '#LAY-banner-manage',
            url: '/banner/findPage',
            where:{type:${type}},
            method: 'post',    //请求方式
            contentType: 'application/json',  //请求数据类型
            height: 'full-100',
            cellMinWidth: 80,
            page: true,
            limit: 30,
            cols: [[
                // {type:'checkbox'}
                // ,{field:'id', title: 'ID', width:100, sort: true},
                {field: 'bannerTitleContext', title: '轮播图标题', width: 100},
                {field: 'bannerTitleIntro', title: '轮播图副标题', minWidth: 300},
                {field: 'bannerUrl', title: '轮播图链接', minWidth: 100},
                // {
                //     field: 'type', title: '轮播图模块', templet: function (res) {
                //         var type = res.type;
                //         if(type == 1){
                //             return 'home';
                //         }else if(type == 2){
                //             return 'publication';
                //         }else if(type == 3){
                //             return 'media';
                //         }else if(type == 4){
                //             return 'people';
                //         }else if(type == 5){
                //             return 'activitis';
                //         }else if(type == 6){
                //             return 'education';
                //         }else if(type == 7){
                //             return 'join us';
                //         }else{
                //             return '';
                //         }
                //     }
                // },
            <c:if test="${type == 1}">
                {
                    field: 'status', title: '推荐home', templet: function (res) {
                        var type = res.status;
                        if (type == 2) {
                            return '推荐';
                        } else if (type == 1) {
                            return '不推荐';
                        } else {
                            return '';
                        }
                    }
                },
            </c:if>
                {field: 'createTime', title: '创建时间', sort: true,},
                {title: '操作', width: 220, align: 'center', fixed: 'right', toolbar: '#table-project'}
            ]],
            page: true,   //是否分页，传输到后台当前页数是page（变量名），数据条数是limit（变量名）
            limit: 15,    //设置分页数
            limits: [15, 30, 50, 100],   //自定义分页数
            height: 'full-220',
        });

        //监听工具条
        table.on('tool(LAY-banner-manage)', function (obj) {
            var data = obj.data;
            if (obj.event === 'del') {
                layer.confirm('是否确认删除此信息', function (index) {
                    $.post('/banner/delete_banner', {id: data.id}, function (res) {
                        if (res.success) {
                            obj.del();
                            layer.close(index);
                        }
                        layer.msg(res.message);
                    }, 'json');
                });
            } else if (obj.event === 'edit') {
                var tr = $(obj.tr);
                window.banner = data;
                window.open_type = 'update';
                window.type = ${type};
                layer.open({
                    type: 2
                    , title: '编辑轮播图'
                    , content: '/admin/add_banner'
                    , maxmin: true
                    , area: [$(window).width() * 0.75 + 'px', $(window).height() * 0.75 + 'px']
                });
            } else if (obj.event === 'view') {
                var tr = $(obj.tr);
                window.banner = data;
                window.open_type = 'view';
                window.type = ${type};
                layer.open({
                    type: 2
                    , title: '查看轮播图'
                    , content: '/admin/add_banner'
                    , maxmin: true
                    , area: [$(window).width() * 0.75 + 'px', $(window).height() * 0.75 + 'px']
                });
            }
        });

        //监听搜索
        form.on('submit(LAY-banner-search)', function (data) {
            var field = data.field;
            field.type=${type};

            //执行重载
            table.reload('LAY-banner-manage', {
                where: field
            });
        });

        //事件
        var active = {
            add: function () {
                window.banner = undefined;
                window.open_type = '';
                window.type = ${type};
                layer.open({
                    type: 2
                    , title: '添加背景图片'
                    , content: '/admin/add_banner'
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

