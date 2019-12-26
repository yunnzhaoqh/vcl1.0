<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>新增媒新闻</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="/resources/layuiadmin/layui/css/layui.css" media="all">
    <style>
        .layui-form-label.layui-required:after {
            content: "*";
            color: red;
            position: absolute;
            top: 5px;
            left: 15px;
        }
        .layui-form-item.layer-width{
            width: 68%;
        }
    </style>
</head>
<body>

<div class="layui-form" lay-filter="layuiadmin-form-useradmin" id="layuiadmin-form-useradmin"
     style="padding: 20px 20px;">
    <input hidden name="id"/>
    <div class="layui-form-item layer-width">
        <label class="layui-form-label layui-required">课程名称</label>
        <div class="layui-input-block">
            <input type="text" name="courseName" lay-verify="required" placeholder="请输入课程名称" autocomplete="off"
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label layui-required">指导教授</label>
        <div class="layui-input-inline">
            <select name="peopleId" lay-verify="">

            </select>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label layui-required">状态</label>
        <div class="layui-input-inline">
            <select name="status" lay-verify="">
                <option value="1" selected>有效</option>
                <option value="0">无效</option>
            </select>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button type="submit" class="layui-btn" lay-submit lay-filter="LAY-project-submit" id="LAY-courses-submit">确认</button>
            <button type="submit" class="layui-btn layui-btn-primary" lay-filter="LAY-project-close" id="LAY-courses-close">取消</button>
        </div>
    </div>
</div>

<script src="/resources/layuiadmin/layui/layui.js"></script>
<script>
    layui.config({
        base: '/resources/layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index', 'form', 'layedit'], function () {
        var $ = layui.$,
            form = layui.form;

        $.post('people/query_professor',{},function (data) {
            var html = '';
            for(var i = 0; i < data.length; i++){
                html += '<option value="'+ data[i].id +'">'+ data.name +'</option>'
            }
            $('select[name=peopleId]').append(html);
            layui.form.render('select');
        },'json');

        $('#LAY-courses-close').click(function () {
            var index = parent.layer.getFrameIndex(window.name);
            parent.layer.close(index);
        });

        var open_type = parent.open_type;

        if(open_type === 'view'){
            $('#LAY-project-submit').hide();
            init();
        }else if(open_type === 'update'){
            init()
        }

        function init(){
            if(parent.courses){
                var data = parent.courses;
                $('#layuiadmin-form-useradmin input').each(function () {
                    var name = $(this).attr('name');
                    $(this).val(data[name]);
                });
                $('#layuiadmin-form-useradmin select').each(function () {
                    var name = $(this).attr('name');
                    $(this).val(data[name]);
                });
                layui.form.render('select');
            }
        }

        form.on('submit(LAY-courses-submit)', function (data) {
            var field = data.field; //获取提交的字段
            field.content = layedit.getContent(editindex);
            var url = '/courses/add';
            if(open_type === 'update'){
                url = '/courses/update';
            }

            //提交 Ajax 成功后，静态更新表格中的数据
            $.ajax({
                url: url,
                data: field,
                dataType: 'json',
                async: false,
                type: 'post',
                success: function (data) {
                    if(data.success){
                        var index = parent.layer.getFrameIndex(window.name);
                        parent.layui.table.reload('LAY-media-manage'); //数据刷新
                        parent.layer.close(index);
                    }
                    layer.msg(data.massage);
                }
            });
        });
    })
</script>
</body>
</html>