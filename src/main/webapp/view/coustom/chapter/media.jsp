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
        <label class="layui-form-label layui-required">发布日期</label>
        <div class="layui-input-inline">
            <input type="text" name="releaseDate" class="layui-input" readonly autocomplete="off" lay-verify="required" id="createtime" />
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label layui-required">封面</label>
        <div class="layui-input-inline">
            <img src="" id="path" width="100%" height="100%" style="display: none">
            <input type="hidden" name="img" lay-verify="path" placeholder="请上传封面" autocomplete="off" class="layui-input" >
        </div>
        <button style="float: left;" type="button" class="layui-btn" id="layuiadmin-upload-media">上传图片</button>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label layui-required">内容</label>
        <div class="layui-input-block">
            <textarea id="content" name="content" placeholder="文章内容"
                      class="layui-textarea layui-hide" style="height: 150px;" onchange="text(this)"></textarea>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label layui-required">推荐home</label>
        <div class="layui-input-inline">
            <select name="status" lay-verify="required">
                <option value="1">不推荐</option>
                <option value="2">推荐</option>
            </select>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button type="submit" class="layui-btn" lay-submit lay-filter="LAY-media-submit" id="LAY-media-submit">确认</button>
            <button type="submit" class="layui-btn layui-btn-primary" lay-filter="LAY-media-close" id="LAY-media-close">取消</button>
        </div>
    </div>
</div>

<script src="/resources/layuiadmin/layui/layui.js"></script>
<script>
    layui.config({
        base: '/resources/layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index', 'form', 'layedit', 'upload', 'laydate'], function () {
        var $ = layui.$,
            form = layui.form,
            layedit = layui.layedit,
            upload = layui.upload,
            laydate = layui.laydate;

        form.verify({
            path:[
                /[\S]+/,
                "封面不能为空"]
        });

        var start = laydate.render({
            elem: '#createtime', //id为star的输入框
            type: 'datetime',
            istime: true,
            istoday: false,
            trigger: 'click',
        });

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
                $('#path').attr('src',data.img).show();
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
                    parent.layer.msg(data.message);
                }
            });
        });

        upload.render({
            elem: '#layuiadmin-upload-media',
            url: '/user/upload_file',
            auto:true,//是否自动上传
            accept: 'images',
            method: 'post',
            multiple:false,//支持多文件上传,
            acceptMime: 'image/*',
            before: function(obj){
                this.data={"dirpath": 'media\\bg_img'}//携带额外的数据
                var index = layer.load(); //开始上传之后打开load层
                $("#hidden_tmp_index").val(index);//将load层的index隐藏到页面中
            },
            done: function(res){
                layer.close(layer.index); //它获取的始终是最新弹出的某个层，值是由layer内部动态递增计算的
                $(this.item).prev("div").children("input").val(res.src);
                $('#path').attr('src',res.src).show();
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