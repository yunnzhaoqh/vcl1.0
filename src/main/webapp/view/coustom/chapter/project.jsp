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
    <input hidden name="type" value="1"/>
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
        <label class="layui-form-label layui-required">封面</label>
        <div class="layui-input-inline">
            <img src="" id="path" width="100%" height="100%" style="display: none">
            <input type="hidden" name="bg_img" lay-verify="path" placeholder="请上传封面" autocomplete="off" class="layui-input" >
        </div>
        <button style="float: left;" type="button" class="layui-btn" id="layuiadmin-upload-project">上传图片</button>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label layui-required">项目文件</label>
        <div class="layui-input-inline" style="width: auto;">
            <input type="hidden" name="project_file" lay-verify="file" placeholder="请上传文件" autocomplete="off" class="layui-input" >
            <a download="" href="" class="layui-btn layui-btn-warm" style="display: none;">下载文件</a>
        </div>
        <button style="float: left;" type="button" class="layui-btn" id="layuiadmin-upload-file">上传文件</button>
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
                      class="layui-textarea layui-hide" style="height: 150px;" onchange="text(this)"></textarea>
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
            <button type="submit" class="layui-btn" lay-submit lay-filter="LAY-project-submit" id="LAY-project-submit">确认</button>
            <button type="submit" class="layui-btn layui-btn-primary" lay-filter="LAY-project-close" id="LAY-project-close">取消</button>
        </div>
    </div>
</div>

<script src="/resources/layuiadmin/layui/layui.js"></script>
<script>
    layui.config({
        base: '/resources/layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index', 'form', 'layedit', 'table', 'upload', 'laydate'], function () {
        var $ = layui.$,
            form = layui.form,
            layedit = layui.layedit,
            upload = layui.upload
            laydate = layui.laydate;

        form.verify({
            path:[
                /[\S]+/,
                "封面不能为空"]
        });

        var start = laydate.render({
            elem: '#createtime', //id为star的输入框
            type: 'date',
            min: '',
            max: '2099-06-16 23:59:59', //最大日期
            istime: true,
            istoday: false,
            trigger: 'click',//呼出事件改成click
            done: function(value,date){
                end.config.min ={
                    year:date.year,
                    month:date.month-1,
                    date: date.date,
                    hours: 0,
                    minutes: 0,
                    seconds : 0
                };
            }
        });

        layedit.set({
            uploadImage: {
                url: '/user/upload_content/project' //接口url
                ,type: 'post' //默认post
            }
        });

        var editindex = layedit.build('content', {
            tool: ['strong', 'italic','underline','del','|','left','center','right','|','link','unlink','face','image','|','code']
        });

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
                $('.layui-btn-warm').attr('href',data.project_file).show();
                if(data.content){
                    layedit.setContent(editindex, data.content);
                }
            }
        }

        form.on('submit(LAY-project-submit)', function (data) {
            var field = data.field; //获取提交的字段
            field.content = layedit.getContent(editindex);
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

        upload.render({
            elem: '#layuiadmin-upload-project',
            url: '/user/upload_file',
            auto:true,//是否自动上传
            accept: 'images',
            method: 'post',
            multiple:false,//支持多文件上传,
            acceptMime: 'image/*',
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
            exts: 'pdf',
            method: 'post',
            multiple:false,//支持多文件上传,
            before: function(obj){
                this.data={"dirpath": 'project\\file'}//携带额外的数据
                var index = layer.load(); //开始上传之后打开load层
                $("#hidden_tmp_index").val(index);//将load层的index隐藏到页面中
            },
            done: function(res){
                layer.close(layer.index); //它获取的始终是最新弹出的某个层，值是由layer内部动态递增计算的
                $(this.item).prev("div").children("input").val(res.src);
                $(this.item).prev("div").children("a").attr('href',res.src).show();
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