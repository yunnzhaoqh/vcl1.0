<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
        .layui-form-label{
            width: 115px;
        }
        .layui-input-block {
            margin-left: 145px;
        }
    </style>
</head>
<body>

<div class="layui-form" lay-filter="layuiadmin-form-useradmin" id="layuiadmin-form-useradmin"
     style="padding: 20px 20px;">
    <input hidden name="id"/>
    <input hidden name="type" id="type"/>
    <c:if test="${type != 1}">
        <input hidden name="status"  value="1"/>
    </c:if>
    <div class="layui-form-item layer-width">
        <label class="layui-form-label layui-required">轮播图标题</label>
        <div class="layui-input-block">
            <input type="text" name="bannerTitleContext" lay-verify="required" placeholder="请输入标题" autocomplete="off"
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item layer-width">
        <label class="layui-form-label layui-required">轮播图副标题</label>
        <div class="layui-input-block">
            <textarea name="bannerTitleIntro" lay-verify="required" placeholder="轮播图副标题"
                      class="layui-textarea"></textarea>
        </div>
    </div>
    <div class="layui-form-item layer-width">
        <label class="layui-form-label">轮播图跳转链接</label>
        <div class="layui-input-block">
            <input type="text" name="bannerUrl" lay-verify="bannerUrl" placeholder="请输入链接" autocomplete="off"
                   class="layui-input">
        </div>
    </div>
    <%--<div class="layui-form-item">--%>
        <%--<label class="layui-form-label layui-required">轮播图模块</label>--%>
        <%--<div class="layui-input-inline">--%>
            <%--<select name="type" lay-verify="required">--%>
                <%--<option value="1">Home</option>--%>
                <%--<option value="2">Publication</option>--%>
                <%--<option value="3">Media</option>--%>
                <%--<option value="4">People</option>--%>
                <%--<option value="5">Activitis</option>--%>
                <%--<option value="6">Education</option>--%>
                <%--<option value="7">Join Us</option>--%>
            <%--</select>--%>
        <%--</div>--%>
    <%--</div>--%>
    <div class="layui-form-item">
        <label class="layui-form-label layui-required">轮播图</label>
        <div class="layui-input-inline">
            <img src="" id="path" width="100%" height="100%" style="display: none">
            <input type="hidden" name="bannerImg" lay-verify="path" placeholder="请上传封面" autocomplete="off" class="layui-input" >
        </div>
        <button style="float: left;" type="button" class="layui-btn" id="layuiadmin-upload-banner">上传轮播图</button>
    </div>

    <div class="layui-form-item" id="bannerStatus">
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
            <button type="submit" class="layui-btn" lay-submit lay-filter="LAY-banner-submit" id="LAY-banner-submit">确认</button>
            <button type="submit" class="layui-btn layui-btn-primary" lay-filter="LAY-banner-close" id="LAY-banner-close">取消</button>
        </div>
    </div>
</div>

<script src="/resources/layuiadmin/layui/layui.js"></script>
<script type="text/javascript">
    layui.config({
        base: '/resources/layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index', 'form', 'upload'], function () {
        var $ = layui.$,
            form = layui.form,
            upload = layui.upload;
        $('#type').val(parent.type);
        var type = parent.type;
        if(type !=1){
            $('#bannerStatus').hide();
        }
        form.verify({
            path:[
                /[\S]+/,
                "请上传轮播图片"],
            bannerUrl: function (value) {
                if(!new RegExp('^([hH][tT]{2}[pP]:\/\/|[hH][tT]{2}[pP][sS]:\/\/)(([A-Za-z0-9-~]+)\.)+([A-Za-z0-9-~\/])+$').test(value)
                    && new RegExp('[\S]+').test(value)){
                    return' 请输入正确的网址';
                }
                return '';
            }
        });

        $('#LAY-banner-close').click(function () {
            var index = parent.layer.getFrameIndex(window.name);
            parent.layer.close(index);
        });

        var open_type = parent.open_type;

        if(open_type === 'view'){
            $('#LAY-banner-submit').hide();
            $('#layuiadmin-upload-banner').hide();
            init();
        }else if(open_type === 'update'){
            init()
        }

        function init(){
            if(parent.banner){
                var data = parent.banner;
                $('#layuiadmin-form-useradmin input').each(function () {
                    var name = $(this).attr('name');
                    $(this).val(data[name]);
                });
                $('#layuiadmin-form-useradmin select').each(function () {
                    var name = $(this).attr('name');
                    $(this).val(data[name]);
                });
                layui.form.render('select');
                $('#path').attr('src',data.bannerImg).show();
                $('textarea[name=bannerTitleIntro]').val(data.bannerTitleIntro);
            }
        }

        form.on('submit(LAY-banner-submit)', function (data) {
            var field = data.field; //获取提交的字段
            field.type=type;
            var url = '/banner/add';
            if(open_type === 'update'){
                url = '/banner/update';
            }

            //提交 Ajax 成功后，静态更新表格中的数据
            $.ajax({
                url: url,
                data: field,
                dataType: 'json',
                type: 'post',
                async: false,
                success: function (data) {
                    if(data.success){
                        var index = parent.layer.getFrameIndex(window.name);
                        parent.layui.table.reload('LAY-banner-manage'); //数据刷新
                        parent.layer.close(index);
                    }
                    parent.layer.msg(data.message);
                }
            });
        });

        upload.render({
            elem: '#layuiadmin-upload-banner',
            url: '/user/upload_file',
            auto:true,//是否自动上传
            accept: 'images',
            method: 'post',
            multiple:false,//支持多文件上传,
            acceptMime: 'image/*',
            before: function(obj){
                this.data={"dirpath": 'banner'}//携带额外的数据
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