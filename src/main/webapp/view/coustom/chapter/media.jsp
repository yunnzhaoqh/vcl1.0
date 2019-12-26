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
        <label class="layui-form-label layui-required">标题</label>
        <div class="layui-input-block">
            <input type="text" name="title" lay-verify="required" placeholder="请输入标题" autocomplete="off"
                   class="layui-input">
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
        <label class="layui-form-label layui-required">是否发布</label>
        <div class="layui-input-inline">
            <select name="releaseDate" lay-verify="">
                <option value="1" selected>是</option>
                <option value="0">否</option>
            </select>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label layui-required">内容</label>
        <div class="layui-input-block">
            <textarea id="content" name="content" placeholder="文章内容"
                      class="layui-textarea layui-hide" style="height: 150px;" onchange="text(this)"></textarea>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button type="submit" class="layui-btn" lay-submit lay-filter="LAY-project-submit" id="LAY-media-submit">确认</button>
            <button type="submit" class="layui-btn layui-btn-primary" lay-filter="LAY-project-close" id="LAY-media-close">取消</button>
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
            form = layui.form,
            layedit = layui.layedit;

        layedit.set({
            uploadImage: {
                url: '/user/upload_content/media' //接口url
                ,type: 'post' //默认post
            }
        });

        var editindex = layedit.build('content', {
            tool: ['strong', 'italic','underline','del','|','left','center','right','|','link','unlink','face','image','|','code']
        });

        $('#LAY-media-close').click(function () {
            var index = parent.layer.getFrameIndex(window.name);
            parent.layer.close(index);
        });

        var open_type = parent.open_type;

        if(open_type === 'view'){
            $('#LAY-media-submit').hide();
            init();
        }else if(open_type === 'update'){
            init()
        }

        function init(){
            if(parent.media){
                var data = parent.media;
                $('#layuiadmin-form-useradmin input').each(function () {
                    var name = $(this).attr('name');
                    $(this).val(data[name]);
                });
                $('#layuiadmin-form-useradmin select').each(function () {
                    var name = $(this).attr('name');
                    $(this).val(data[name]);
                });
                layui.form.render('select');
                if(data.content){
                    layedit.setContent(editindex, data.content);
                }
            }
        }

        form.on('submit(LAY-media-submit)', function (data) {
            var field = data.field; //获取提交的字段
            field.content = layedit.getContent(editindex);
            var url = '/media/add';
            if(open_type === 'update'){
                url = '/media/update';
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