<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>新增项目</title>
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
        <label class="layui-form-label layui-required">主标题</label>
        <div class="layui-input-block">
            <input type="text" name="main_title" lay-verify="required" placeholder="请输入主标题" autocomplete="off"
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item layer-width">
        <label class="layui-form-label layui-required">副标题</label>
        <div class="layui-input-block">
            <input type="text" name="subtitle" lay-verify="required" placeholder="请输入副标题" autocomplete="off"
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item layer-width">
        <label class="layui-form-label layui-required">参与人</label>
        <div class="layui-input-block">
            <input type="text" name="share_people" lay-verify="required" placeholder="请输入参与人" autocomplete="off"
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item layer-width">
        <label class="layui-form-label layui-required">参与学校</label>
        <div class="layui-input-block">
            <input type="text" name="share_shcool" lay-verify="required" placeholder="请输入参与学校" autocomplete="off"
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label layui-required">文章类型</label>
        <div class="layui-input-inline">
            <select name="type" lay-verify="">
                <option value="1">出版物</option>
                <option value="2">演讲</option>
                <option value="3">研讨会</option>
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
        <label class="layui-form-label layui-required">内容</label>
        <div class="layui-input-block">
            <textarea id="content" name="content" placeholder="文章内容"
                      class="layui-textarea layui-hide" style="height: 150px;" onchange="text(this)"></textarea>
        </div>
    </div>
    <div class="layui-form-item">
        <button type="submit" class="layui-btn"  lay-submit lay-filter="LAY-project-submit" id="LAY-project-submit" value="确认">确认</button>
    </div>
</div>

<script src="/resources/layuiadmin/layui/layui.js"></script>
<script>
    layui.config({
        base: '/resources/layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index', 'form', 'upload', 'layedit'], function () {
        var $ = layui.$,
            form = layui.form,
            upload = layui.upload,
            layedit = layui.layedit;

        var editindex = layedit.build('content', {
            tool: ['strong', 'italic','underline','del','|','left','center','right','|','link','unlink','face','image','|','code']
        });

        form.on('submit(LAY-project-submit)', function (data) {
            var field = data.field; //获取提交的字段

            console.log(layedit.getContent(editindex));

            //提交 Ajax 成功后，静态更新表格中的数据
            // $.ajax({
            //     url: '',
            //     data: field,
            //     dataType: 'json',
            //     async: false,
            //     type: 'post',
            //     success: function (data) {
            //
            //     }
            // });
            // table.reload('LAY-user-front-submit'); //数据刷新
            // layer.close(index); //关闭弹层
        });

        upload.render({
            elem: '#layuiadmin-upload-useradmin',
            url: '/user/upload_file',
            auto: true,//是否自动上传
            accept: 'images',
            method: 'post',
            multiple: false,//支持多文件上传,
            acceptMime: 'image/*',
            before: function (obj) {
                this.data = {"dirpath": 'people'}//携带额外的数据
                var index = layer.load(); //开始上传之后打开load层
                $("#hidden_tmp_index").val(index);//将load层的index隐藏到页面中
            },
            done: function (res) {
                layer.close(layer.index); //它获取的始终是最新弹出的某个层，值是由layer内部动态递增计算的
                $(this.item).prev("div").children("input").val(res.src);
                $('#path').attr('src', res.src);
                layer.msg(res.msg);
            },
            error: function () {
                layer.close(layer.index);
                layer.msg("上传失败，重新上传")
            }
        });
    })
</script>
</body>
</html>