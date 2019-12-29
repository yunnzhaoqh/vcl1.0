<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>文章项目</title>
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
                    <label class="layui-form-label">标题名</label>
                    <div class="layui-input-block">
                        <input type="text" name="main_title" placeholder="请输入" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">副标题</label>
                    <div class="layui-input-block">
                        <input type="text" name="subtitle" placeholder="请输入" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">状态</label>
                    <div class="layui-input-block">
                        <select name="status">
                            <option value="">不限</option>
                            <option value="1" selected>有效</option>
                            <option value="0">无效</option>
                        </select>
                    </div>
                </div>
                <div class="layui-inline">
                    <button class="layui-btn layuiadmin-btn-admin" lay-submit lay-filter="LAY-project-search">
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

            <table id="LAY-project-manage" lay-filter="LAY-project-manage"></table>
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
    }).use(['index', 'project', 'table', 'layedit'], function () {
        var $ = layui.$
            , form = layui.form
            , table = layui.table;

        //监听搜索
        form.on('submit(LAY-project-search)', function (data) {
            var field = data.field;

            //执行重载
            table.reload('LAY-project-manage', {
                where: field
            });
        });

        //事件
        var active = {
            add: function () {
                window.project = undefined;
                window.open_type = '';
                layer.open({
                    type: 2
                    , title: '添加项目'
                    , content: '/admin/add_project'
                    , area: [$(window).width() * 0.75 + 'px', $(window).height() * 0.75 + 'px']
                //     , btn: ['确定', '取消']
                //     , yes: function (index, layero) {
                //         var iframeWindow = window['layui-layer-iframe' + index]
                //             , submitID = 'LAY-project-submit'
                //             , submit = layero.find('iframe').contents().find('#' + submitID);
                //
                //         //监听提交
                //         iframeWindow.layui.form.on('submit(' + submitID + ')', function (data) {
                //             var field = data.field; //获取提交的字段
                //
                //             console.log(layedit.getContent(window.editindex));
                //
                //             //提交 Ajax 成功后，静态更新表格中的数据
                //             // $.ajax({
                //             //     url: '',
                //             //     data: field,
                //             //     dataType: 'json',
                //             //     async: false,
                //             //     type: 'post',
                //             //     success: function (data) {
                //             //
                //             //     }
                //             // });
                //             // table.reload('LAY-user-front-submit'); //数据刷新
                //             // layer.close(index); //关闭弹层
                //         });
                //
                //         submit.trigger('click');
                //     }
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

