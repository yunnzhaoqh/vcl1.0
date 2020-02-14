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
    <link rel="stylesheet" href="/resources/font-awesome-4.7.0/css/font-awesome.min.css">
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
    <input hidden name="fileName"/>
    <input hidden name="fileSize"/>
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
<%--        <button style="float: left;" type="button" class="layui-btn" id="layuiadmin-upload-share">上传图片</button> <span>建议尺寸：480px * 360px</span>--%>
        <button style="float: left;" type="button" class="layui-btn" id="open_cropper">上传图片</button><span>建议尺寸：480px * 360px</span>
        <div class="layui-progress" lay-filter="progress" lay-showPercent="true" style="display: none;">
            <div class="layui-progress-bar layui-bg-blue" lay-percent="0%"></div>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">分享文件</label>
        <div class="layui-input-inline" style="width: auto;">
            <input type="hidden" name="shareFile" lay-verify="file" placeholder="请上传文件" autocomplete="off" class="layui-input" >
            <a download="" href="" class="layui-btn layui-btn-warm" style="display: none;">下载文件</a>
        </div>
        <button style="float: left;" type="button" class="layui-btn" id="layuiadmin-upload-file">上传文件</button>
        <div class="layui-progress progress_file" lay-filter="progress_file" lay-showPercent="true" style="display: none;">
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
        <label class="layui-form-label layui-required">发布状态</label>
        <div class="layui-input-block">
<%--            <select name="status" lay-verify="required">--%>
<%--                <option value="0">暂存（不在前端显示）</option>--%>
<%--                <option value="2">发布</option>--%>
<%--            </select>--%>
            <input type="radio" name="status" value="0" title="暂存（不在前端显示）" checked>
            <input type="radio" name="status" value="2" title="发布">
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button type="submit" class="layui-btn" lay-submit lay-filter="LAY-share-submit" id="LAY-share-submit">确认</button>
            <button type="submit" class="layui-btn layui-btn-primary" lay-filter="LAY-share-close" id="LAY-share-close">取消</button>
        </div>
    </div>
</div>
<script src="/resources/js/jquery-3.4.1.min.js"></script>
<script src="/resources/layuiadmin/layui/layui.js"></script>
<script src="/resources/kindeditor/kindeditor-all-min.js"></script>
<script type="text/javascript">
    var fileSrcs = '';
    var fileNames = '';
    var fileSizes = '';
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
            path: [
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

        var kindeditor = KindEditor.create('#content', {
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

        if (open_type === 'view') {
            $('#LAY-share-submit').hide();
            $('#layuiadmin-upload-share').hide();
            $('#layuiadmin-upload-file').hide();
            $('#open_cropper').hide();
            init(1);
        } else if (open_type === 'update') {
            init(2);
        }

        function init(index) {
            if (parent.share) {
                var data = parent.share;
                $('#layuiadmin-form-useradmin input').each(function () {
                    var name = $(this).attr('name');
                    if(name == 'status'){
                        $("input[name='status'][value="+data[name]+"]").attr("checked",true);
                        return true;
                    }
                    $(this).val(data[name]);
                });
                $('#layuiadmin-form-useradmin select').each(function () {
                    var name = $(this).attr('name');
                    $(this).val(data[name]);
                });
                $('#path').attr('src', data.img).show();
                if (data.shareFile) {
                    fileSrcs = data.shareFile;
                    fileNames = data.fileName;
                    fileSizes = data.fileSize;
                    var files = data.shareFile.split(',');
                    var names = data.fileName.split(',');
                    $('#layuiadmin-upload-file').prev("div").children("input").val(fileSrcs);
                    for (var i = 0; i < files.length; i++) {
                        if (files[i]) {
                            $('#layuiadmin-upload-file').prev("div").append(
                                '<span>' +
                                '   <a download="" href="' + files[i] + '" class="layui-btn layui-btn-warm">' + names[i] + '</a>' +
                                (index == 2 ? '<i class="fa fa-trash-o" onclick="deleteFile(\'' + files[i] + '\',this)"></i>' : '') +
                                '</span>'
                            );
                        }
                    }
                }
                if (data.content) {
                    kindeditor.html(data.content);
                }
                form.render();
            }
        }

        form.on('submit(LAY-share-submit)', function (data) {
            var field = data.field; //获取提交的字段
            field.content = kindeditor.html();
            var url = '/share/add';
            if (open_type === 'update') {
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
                    if (data.success) {
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
            auto: true,//是否自动上传
            accept: 'images',
            method: 'post',
            multiple: false,//支持多文件上传,
            acceptMime: 'image/*',
            progress: function (n) {
                var percent = n + '%' //获取进度百分比
                $('.layui-progress').show();
                element.progress('progress', percent); //可配合 layui 进度条元素使用
                if (percent == '100%') {
                    $('.layui-progress').hide();
                }
            },
            before: function (obj) {
                this.data = {"dirpath": 'share\\bg_img'}//携带额外的数据
                var index = layer.load(); //开始上传之后打开load层
                $("#hidden_tmp_index").val(index);//将load层的index隐藏到页面中
            },
            done: function (res) {
                layer.close(layer.index); //它获取的始终是最新弹出的某个层，值是由layer内部动态递增计算的
                $(this.item).prev("div").children("input").val(res.src);
                $('#path').attr('src', res.src).show();
                layer.msg(res.msg);
            },
            error: function () {
                layer.close(layer.index);
                layer.msg("上传失败，重新上传")
            }
        });

        upload.render({
            elem: '#layuiadmin-upload-file',
            url: '/user/upload_file',
            auto: true,//是否自动上传
            accept: 'file',
            // exts: 'pdf',
            method: 'post',
            multiple: false,//支持多文件上传,
            before: function (obj) {
                this.data = {"dirpath": 'share\\file'}//携带额外的数据
                var index = layer.load(); //开始上传之后打开load层
                $("#hidden_tmp_index").val(index);//将load层的index隐藏到页面中
            },
            progress: function (n) {
                var percent = n + '%' //获取进度百分比
                $('.progress_file').show();
                element.progress('progress_file', percent); //可配合 layui 进度条元素使用
                if (percent == '100%') {
                    $('.progress_file').hide();
                }
            },
            done: function (res) {
                layer.close(layer.index); //它获取的始终是最新弹出的某个层，值是由layer内部动态递增计算的
                fileSrcs += res.src + ',';
                fileNames += res.fileName + ',';
                fileSizes += res.fileSize + ',';
                $(this.item).prev("div").children("input").val(fileSrcs);
                $(this.item).prev("div").append('<span><a download="' + res.fileName + '" href="' + res.src + '" class="layui-btn layui-btn-warm">' + res.fileName + '</a><i class="fa fa-trash-o" onclick="deleteFile(\'' + res.src + '\',this)"></i></span>');

                // $(this.item).prev("div").children("input").val(res.src);
                // $(this.item).prev("div").children("a").attr('href',res.src).attr('download',res.fileName).show();
                $('input[name=fileName]').val(fileNames);
                $('input[name=fileSize]').val(fileSizes);
                layer.msg(res.msg);
            },
            error: function () {
                layer.close(layer.index);
                layer.msg("上传失败，重新上传")
            }
        });
        $('#open_cropper').click(function () {
            layer.open({
                type: 2,
                title: '剪切图片',
                content: '/admin/cropper_img/#/width=480/height=360/type=share',
                area: [$(window).width() + 'px', $(window).height() + 'px'],
            });
        });
    });

    function deleteFile(id, th) {
        $(th).parent().remove();
        // fileSrcs = fileSrcs.toString().replace(id+',','');
        var files = fileSrcs.split(',');
        var names = fileNames.split(',');
        var sizes = fileSizes.split(',');
        var index = files.findIndex(item => item === id);
        files.splice(index, 1);
        names.splice(index, 1);
        sizes.splice(index, 1);
        fileSrcs = files.join(',');
        fileNames = names.join(',');
        fileSizes = sizes.join(',');
        $('#project_file').val(fileSrcs);
        $('input[name=fileName]').val(fileNames);
        $('input[name=fileSize]').val(fileSizes);
    }
</script>
</body>
</html>
