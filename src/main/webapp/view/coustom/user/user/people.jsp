<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>新增人员</title>
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
        .layui-form-label{
            width: 115px;
        }
        .layui-input-block {
            margin-left: 145px;
        }
        .layui-form-item.layer-width{
            width: 100%;
        }
    </style>
</head>
<body>

<div class="layui-form" lay-filter="layuiadmin-form-useradmin" id="layuiadmin-form-useradmin"
     style="padding: 20px 0 0 0;">
    <input hidden name="id"/>
    <div class="layui-form-item">
        <label class="layui-form-label layui-required">姓名</label>
        <div class="layui-input-inline">
            <input type="text" name="name" lay-verify="required" placeholder="请输入用户名" autocomplete="off"
                   class="layui-input">
        </div>
    </div>
<%--    <div class="layui-form-item layui-required" lay-filter="sex">--%>
<%--        <label class="layui-form-label layui-required">选择性别</label>--%>
<%--        <div class="layui-input-inline">--%>
<%--            <select name="gender" lay-verify="">--%>
<%--                <option value="男">男</option>--%>
<%--                <option value="女">女</option>--%>
<%--            </select>--%>
<%--        </div>--%>
<%--    </div>--%>
    <div class="layui-form-item">
        <label class="layui-form-label layui-required">职务</label>
        <div class="layui-input-inline">
            <input type="text" name="duty" lay-verify="required" placeholder="请输入职务" autocomplete="off"
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label layui-required">职务等级(排序)</label>
        <div class="layui-input-inline">
            <input type="text" name="dutyNum" lay-verify="number" placeholder="请输入等级" autocomplete="off"
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item layer-width">
        <label class="layui-form-label">个人主页链接</label>
        <div class="layui-input-block">
            <input type="text" name="introUrl" lay-verify="introUrl" placeholder="请输入等级" autocomplete="off"
                   class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label layui-required">人员相片</label>
        <div class="layui-input-inline">
            <img src="" id="path" width="100%" height="100%" style="display: none;">
            <input type="hidden" name="path" lay-verify="path" placeholder="请上传图片" autocomplete="off"
                   class="layui-input">
        </div>
        <button style="float: left;" type="button" class="layui-btn" id="layuiadmin-upload-useradmin">上传图片</button>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label layui-required">员工类型</label>
        <div class="layui-input-inline">
            <select name="type" lay-verify="">
                <option value="1">faculty & staff</option>
                <option value="2">visiting professors</option>
                <option value="3">students</option>
                <option value="4">alumni</option>
            </select>
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
    <div class="layui-form-item layui-hide">
        <input type="button" lay-submit lay-filter="LAY-user-front-submit" id="LAY-user-front-submit" value="确认">
    </div>

    <script src="/resources/layuiadmin/layui/layui.js"></script>
    <script>
        layui.config({
            base: '/resources/layuiadmin/' //静态资源所在路径
        }).extend({
            index: 'lib/index' //主入口模块
        }).use(['index', 'form', 'upload'], function () {
            var $ = layui.$
                , form = layui.form
                , upload = layui.upload
                , autocomplete = layui.autocomplete;

            if (parent.people) {
                var data = parent.people;
                $('#layuiadmin-form-useradmin input').each(function () {
                    var name = $(this).attr('name');
                    $(this).val(data[name]);
                });
                $('select[name=type]').val(data.type);
                layui.form.render('select');
                $('#path').attr('src', data.path).show();
            }

            form.verify({
                path: [
                    /[\S]+/,
                    "人员相片不能为空"],
                introUrl: function (value) {
                    if(!new RegExp('^([hH][tT]{2}[pP]:\/\/|[hH][tT]{2}[pP][sS]:\/\/)(([A-Za-z0-9-~]+)\.)+([A-Za-z0-9-~\/])+$').test(value)
                        && new RegExp('[\S]+').test(value)){
                        return' 请输入正确的网址';
                    }
                    return '';
                }
            })

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
                    $('#path').attr('src', res.src).show();
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