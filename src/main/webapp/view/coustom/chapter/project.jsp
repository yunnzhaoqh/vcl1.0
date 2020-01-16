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
    <link rel="stylesheet" href="/resources/font-awesome-4.7.0/css/font-awesome.min.css">
    <%--<link rel="stylesheet" href="/resources/layuiadmin/layui/css/layui.css" media="all">--%>
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

        .delete_file
        {
            z-index:200;
            -moz-border-radius:20px;
            -webkit-border-radius:20px;
            line-height:10px;
            text-align:center;
            font-weight:bold;
            cursor:pointer;
            font-size:10px;
            display: none;
        }
    </style>
</head>
<body>

<div class="layui-form" lay-filter="layuiadmin-form-useradmin" id="layuiadmin-form-useradmin"
     style="padding: 20px 20px;">
    <input hidden name="id"/>
    <input hidden name="type" value="1"/>
    <input hidden name="fileName"/>
    <input hidden name="fileSize"/>
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
        <label class="layui-form-label layui-required">作者</label>
        <div class="layui-input-block">
            <input type="text" name="share_people" lay-verify="required" placeholder="请输入作者" autocomplete="off"
                   class="layui-input">
        </div>
    </div>
<%--    <div class="layui-form-item layer-width">--%>
<%--        <label class="layui-form-label layui-required">参与学校</label>--%>
<%--        <div class="layui-input-block">--%>
<%--            <input type="text" name="share_shcool" lay-verify="required" placeholder="请输入参与学校" autocomplete="off"--%>
<%--                   class="layui-input">--%>
<%--        </div>--%>
<%--    </div>--%>
    <div class="layui-form-item">
        <label class="layui-form-label layui-required">封面</label>
        <div class="layui-input-inline">
            <img src="" id="path" width="100%" height="100%" style="display: none">
            <input type="hidden" name="bg_img" lay-verify="path" placeholder="请上传封面" autocomplete="off" class="layui-input" >
        </div>
        <button style="float: left;" type="button" class="layui-btn" id="layuiadmin-upload-project">上传图片</button><span>建议尺寸：500px * 280px</span>
<%--        <button style="float: left;" type="button" class="layui-btn" id="open_cropper">上传图片</button><span>建议尺寸：500px * 280px</span>--%>
        <div class="layui-progress progress_img" lay-filter="progress_img" lay-showPercent="true" style="display: none;">
            <div class="layui-progress-bar layui-bg-blue" lay-percent="0%"></div>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">项目文件</label>
        <div class="layui-input-inline" style="width: auto;">
            <input type="hidden" name="project_file" id="project_file" lay-verify="file" autocomplete="off" class="layui-input" >
            <%--<a download="" href="" class="layui-btn layui-btn-warm" style="display: none;">下载文件</a>--%>
        </div>
        <button style="float: left;" type="button" class="layui-btn" id="layuiadmin-upload-file">上传文件</button>
        <div class="layui-progress progress_file" lay-filter="progress_file" lay-showPercent="true" style="display: none;">
            <div class="layui-progress-bar layui-bg-blue" lay-percent="0%"></div>
        </div>
    </div>
<%--    <div class="layui-form-item">--%>
<%--        <label class="layui-form-label layui-required">文章类型</label>--%>
<%--        <div class="layui-input-inline">--%>
<%--            <select name="type" lay-verify="">--%>
<%--                <option value="1">publication</option>--%>
<%--                <option value="2">invited talk</option>--%>
<%--                <option value="3">seminar</option>--%>
<%--            </select>--%>
<%--        </div>--%>
<%--    </div>--%>
    <div class="layui-form-item">
        <label class="layui-form-label layui-required">开始日期</label>
        <div class="layui-input-inline">
            <input type="text" name="createtime" class="layui-input" readonly autocomplete="off" lay-verify="required" id="createtime" />
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label layui-required">内容</label>
        <div class="layui-input-block">
            <textarea id="content" name="content" placeholder="文章内容"
                      class="layui-textarea" style="height: 150px;" ></textarea>
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
            <button type="submit" class="layui-btn" lay-submit lay-filter="LAY-project-submit" id="LAY-project-submit">确认</button>
            <button type="submit" class="layui-btn layui-btn-primary" lay-filter="LAY-project-close" id="LAY-project-close">取消</button>
        </div>
    </div>
</div>
<script src="/resources/js/jquery-3.4.1.min.js"></script>
<script src="/resources/layuiadmin/layui/layui.js"></script>
<script src="/resources/kindeditor/kindeditor-all-min.js"></script>

<script type="text/javascript">
    var imgSrcs='';
    layui.config({
        base: '/resources/layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index', 'form', 'layedit', 'table', 'upload', 'element', 'laydate'], function () {
        var $ = layui.$,
            form = layui.form,
            // layedit = layui.layedit,
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
            type: 'date',
            istime: true,
            istoday: false,
            trigger: 'click',
        });

        // layedit.set({
        //     uploadImage: {
        //         url: '/user/upload_content/project' //接口url
        //         ,type: 'post' //默认post
        //     }
        // });
        //
        // var editindex = layedit.build('content', {
        //     tool: ['strong', 'italic','underline','del','|','left','center','right','|','link','unlink','face','image','|','code']
        // });

        var kindeditor = KindEditor.create('#content',{
            width: '100%',
            height: $(window).height() - 240,
            resizeType: 0, // 不允许拖动
            allowUpload: true,
            uploadJson: '/user/kindupload/project',
        })

        $('#LAY-project-close').click(function () {
            var index = parent.layer.getFrameIndex(window.name);
            parent.layer.close(index);
        });

        var open_type = parent.open_type;

        if(open_type === 'view'){
            $('#LAY-project-submit').hide();
            init(1);
        }else if(open_type === 'update'){
            init(2)
        }

        function init(index){
            if(index == 1){
                $('#layuiadmin-upload-project').hide();
                $('#layuiadmin-upload-file').hide();
            }
            if(parent.project){
                var data = parent.project;
                $('#layuiadmin-form-useradmin input').each(function () {
                    var name = $(this).attr('name');
                    $(this).val(data[name]);
                });
                $('#layuiadmin-form-useradmin select').each(function () {
                    var name = $(this).attr('name');
                    $(this).val(data[name]);
                });
                layui.form.render('select');
                $('#path').attr('src',data.bg_img).show();
                $('.layui-btn-warm').attr('href',data.project_file).attr('download',data.fileName).show();
                if(data.content){
                    kindeditor.html(data.content);
                    // layedit.setContent(editindex, data.content);
                }
            }
        }

        form.on('submit(LAY-project-submit)', function (data) {
            var field = data.field; //获取提交的字段
            // field.content = layedit.getContent(editindex);
            field.content = kindeditor.html();
            field.type = 1;
            var url = '/project/add';
            if(open_type === 'update'){
                url = '/project/update';
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
                        parent.layui.table.reload('LAY-project-manage'); //数据刷新
                        parent.layer.close(index);
                    }
                    parent.layer.msg(data.message);
                }
            });
        });

        // $('#layuiadmin-upload-project').onclick(
        //     // 500px * 280px
        //     layer.open({
        //         type: 2
        //         , title: '添加项目'
        //         , content: '/cropper/commonCropper?type=project&width=500px&height=280px'
        //         , area: [$(window).width() * 0.75 + 'px', $(window).height() * 0.75 + 'px']
        //     })
        // );
        upload.render({
            elem: '#layuiadmin-upload-project',
            url: '/user/upload_file',
            auto:true,//是否自动上传
            accept: 'images',
            method: 'post',
            multiple:false,//支持多文件上传,
            acceptMime: 'image/*',
            progress: function(n){
                var percent = n + '%' //获取进度百分比
                $('.progress_img').show();
                element.progress('progress_img', percent); //可配合 layui 进度条元素使用
                if(percent == '100%'){
                    $('.progress_img').hide();
                }
            },
            before: function(obj){
                this.data={"dirpath": 'project\\bg_img'}//携带额外的数据
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

        upload.render({
            elem: '#layuiadmin-upload-file',
            url: '/user/upload_file',
            auto:true,//是否自动上传
            accept: 'file',
            // exts: 'pdf|docx|doc|',
            method: 'post',
            multiple:false,//支持多文件上传,
            before: function(obj){
                this.data={"dirpath": 'project\\file'}//携带额外的数据
                var index = layer.load(); //开始上传之后打开load层
                $("#hidden_tmp_index").val(index);//将load层的index隐藏到页面中
            },
            progress: function(n){
                var percent = n + '%' //获取进度百分比
                $('.progress_file').show();
                element.progress('progress_file', percent); //可配合 layui 进度条元素使用
                if(percent == '100%'){
                    $('.progress_file').hide();
                }
            },
            done: function(res){
                layer.close(layer.index); //它获取的始终是最新弹出的某个层，值是由layer内部动态递增计算的
                imgSrcs+=res.src+','

                $(this.item).prev("div").children("input").val(imgSrcs);
                $(this.item).prev("div").append('<span><a download="" href="'+res.src+'" class="layui-btn layui-btn-warm">'+res.fileName+'</a><i class="fa fa-trash-o" onclick="deleteFile(\''+res.src+'\',this)"></i></span>');
                $('input[name=fileName]').val(res.fileName);
                $('input[name=fileSize]').val(res.fileSize);
                layer.msg(res.msg);
            },
            error: function () {
                layer.close(layer.index);
                layer.msg("上传失败，重新上传")
            }
        });

        $('#open_cropper').click(function () {
            layer.open({
                type: 2
                , title: '剪切图片'
                , content: '/admin/cropper_img?width=500&height=280'
                , area: [$(window).width() + 'px', $(window).height() + 'px']
            });
        });
    })
    function deleteFile(id,th) {
        $(th).parent().remove();
        imgSrcs = imgSrcs.toString().replace(id+',','');
        $('#project_file').val(imgSrcs) ;
    }
</script>
</body>
</html>