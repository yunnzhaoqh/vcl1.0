<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>add_share</title>
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
        <button style="float: left;" type="button" class="layui-btn" id="layuiadmin-upload-share">上传图片</button> <span>建议尺寸：480px * 360px</span>
        <div class="layui-progress" lay-filter="progress" lay-showPercent="true" style="display: none;">
            <div class="layui-progress-bar layui-bg-blue" lay-percent="0%"></div>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label layui-required">内容</label>
        <div class="layui-input-block">
            <textarea id="content" name="content" placeholder="文章内容"
                      class="layui-textarea" style="height: 150px;" onchange="text(this)"></textarea>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label layui-required">推荐home</label>
        <div class="layui-input-inline">
            <select name="status" lay-verify="required">
                <option value="0">暂存（不在前端显示）</option>
                <option value="1">不推荐</option>
                <option value="2">推荐</option>
            </select>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button type="submit" class="layui-btn" lay-submit lay-filter="LAY-share-submit" id="LAY-share-submit">确认</button>
            <button type="submit" class="layui-btn layui-btn-primary" lay-filter="LAY-share-close" id="LAY-share-close">取消</button>
        </div>
    </div>
</div>

<script src="/resources/layuiadmin/layui/layui.js"></script>
<script src="/resources/kindeditor/kindeditor-all-min.js"></script>
<script type="text/javascript">
    layui.config({
        base: '/resources/layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index', 'form', 'layedit', 'upload', 'element', 'laydate'], function () {
        var $ = layui.$,
            form = layui.form,
            upload = layui.upload,
            laydate = layui.laydate,
            element = layui.element;

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

        var kindeditor = KindEditor.create('#content',{
            width: '100%',
            height: $(window).height() - 240,
            resizeType: 0, // 不允许拖动
            allowUpload: true,
            uploadJson: '/user/kindupload/project',
        });

        $('#LAY-share-close').click(function () {
            var index = parent.layer.getFrameIndex(window.name);
            parent.layer.close(index);
        });

        var open_type = parent.open_type;

        if(open_type === 'view'){
            $('#LAY-share-submit').hide();
            init();
        }else if(open_type === 'update'){
            init();
        }

        function init(){
            if(parent.share){
                var data = parent.share;
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
                    kindeditor.html(data.content);
                }
            }
        }

        form.on('submit(LAY-share-submit)', function (data) {
            var field = data.field; //获取提交的字段
            field.content = kindeditor.html();
            var url = '/share/add';
            if(open_type === 'update'){
                url = '/share/update';
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
                        parent.layui.table.reload('LAY-share-manage'); //数据刷新
                        parent.layer.close(index);
                    }
                    parent.layer.msg(data.message);
                }
            });
        });

        upload.render({
            elem: '#layuiadmin-upload-share',
            url: '/user/upload_file',
            auto:true,//是否自动上传
            accept: 'images',
            method: 'post',
            multiple:false,//支持多文件上传,
            acceptMime: 'image/*',
            progress: function(n){
                var percent = n + '%' //获取进度百分比
                $('.layui-progress').show();
                element.progress('progress', percent); //可配合 layui 进度条元素使用
                if(percent == '100%'){
                    $('.layui-progress').hide();
                }
            },
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