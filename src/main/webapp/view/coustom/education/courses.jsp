<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>新增课程</title>
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
            <input type="text" name="peopleName" lay-verify="required" placeholder="请输入指导教授" autocomplete="off"
                   class="layui-input">
<%--            <select name="peopleId" lay-verify="required" lay-verify="">--%>

<%--            </select>--%>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label layui-required">开始日期</label>
        <div class="layui-input-inline">
            <input name="starttime" class="layui-input" readonly lay-verify="required" id="starttime" />
        </div>
    </div>
<%--    <div class="layui-form-item">--%>
<%--        <label class="layui-form-label layui-required">结束日期</label>--%>
<%--        <div class="layui-input-inline">--%>
<%--            <input name="endtime" class="layui-input" readonly lay-verify="required" id="endtime" />--%>
<%--        </div>--%>
<%--    </div>--%>
<%--    <div class="layui-form-item">--%>
<%--        <label class="layui-form-label layui-required">封面</label>--%>
<%--        <div class="layui-input-inline">--%>
<%--            <img src="" id="path" width="100%" height="100%" style="display: none">--%>
<%--            <input type="hidden" name="bg_img" lay-verify="path" placeholder="请上传封面" autocomplete="off" class="layui-input" >--%>
<%--        </div>--%>
<%--        <button style="float: left;" type="button" class="layui-btn" id="layuiadmin-upload-courses">上传图片</button>--%>
<%--        <div class="layui-progress" lay-filter="progress" lay-showPercent="true" style="display: none;">--%>
<%--            <div class="layui-progress-bar layui-bg-blue" lay-percent="0%"></div>--%>
<%--        </div>--%>
<%--    </div>--%>
    <%--<div class="layui-form-item">--%>
        <%--<label class="layui-form-label layui-required">推荐home</label>--%>
        <%--<div class="layui-input-inline">--%>
            <%--<select name="status" lay-verify="required">--%>
                <%--<option value="1">不推荐</option>--%>
                <%--<option value="2">推荐</option>--%>
            <%--</select>--%>
        <%--</div>--%>
    <%--</div>--%>
    <div class="layui-form-item">
        <label class="layui-form-label layui-required">课程介绍</label>
        <div class="layui-input-block">
            <textarea id="content" name="content" placeholder="课程介绍"
                      class="layui-textarea layui-hide" style="height: 150px;" onchange="text(this)"></textarea>
        </div>
    </div>
    <div class="layui-form-item">
        <div class="layui-input-block">
            <button type="submit" class="layui-btn" lay-submit lay-filter="LAY-courses-submit" id="LAY-courses-submit">确认</button>
            <button type="submit" class="layui-btn layui-btn-primary" lay-filter="LAY-courses-close" id="LAY-courses-close">取消</button>
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
    }).use(['index', 'form', 'laydate', 'element', 'upload'], function () {
        var $ = layui.$,
            form = layui.form,
            laydate = layui.laydate,
            upload = layui.upload,
            element = layui.element;

        // form.verify({
        //     path:[
        //         /[\S]+/,
        //         "请上传封面"]
        // })

        var start = laydate.render({
            elem: '#starttime', //id为star的输入框
            type: 'date',
            min: '',
            max: '2099-06-16 23:59:59', //最大日期
            istime: true,
            istoday: false,
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

        var kindeditor = KindEditor.create('#content',{
            width: '100%',
            height: $(window).height() - 240,
            resizeType: 0, // 不允许拖动
            allowUpload: true,
            uploadJson: '/user/kindupload/project',
        });

        var end = laydate.render( {
            elem: '#endtime',
            type: 'date',
            min: '',
            max: '2099-06-16 23:59:59', //最大日期
            istime: true,
            istoday: false,
            done: function(value,date){
                start.config.max ={
                    year:date.year,
                    month:date.month-1,
                    date: date.date,
                    hours: 0,
                    minutes: 0,
                    seconds : 0
                };
            }
        });

        // function init_people(value){
        //     $.post('/people/query_professor',{},function (data) {
        //         var html = '';
        //         for(var i = 0; i < data.length; i++){
        //             html += '<option value="'+ data[i].id +'">'+ data[i].name +'</option>'
        //         }
        //         $('select[name=peopleId]').append(html).val(value);
        //         layui.form.render('select');
        //     },'json');
        // }

        $('#LAY-courses-close').click(function () {
            var index = parent.layer.getFrameIndex(window.name);
            parent.layer.close(index);
        });

        var open_type = parent.open_type;

        if(open_type === 'view'){
            $('#LAY-courses-submit').hide();
            $('#layuiadmin-upload-courses').hide();
            init(1);
        }else if(open_type === 'update'){
            init(2)
        // }else{
        //     init_people('');
        }

        function init(index){
            if(index == 1){
                $('#layuiadmin-upload-project').hide();
            }
            if(parent.courses){
                var data = parent.courses;
                $('#layuiadmin-form-useradmin input').each(function () {
                    var name = $(this).attr('name');
                    $(this).val(data[name]);
                });
                // $('#layuiadmin-form-useradmin select').each(function () {
                //     var name = $(this).attr('name');
                //     $(this).val(data[name]);
                //     if(name == 'peopleId'){
                //         init_people(data[name]);
                //     }
                // });
                layui.form.render(this);
                // $('#path').attr('src',data.bg_img).show();
                if(data.content){
                    kindeditor.html(data.content);
                }
            }
        }

        form.on('submit(LAY-courses-submit)', function (data) {
            var field = data.field; //获取提交的字段
            field.content = kindeditor.html();
            field.status=2;
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
                        parent.layui.table.reload('LAY-courses-manage'); //数据刷新
                        parent.layer.close(index);
                    }
                    parent.layer.msg(data.message);
                }
            });
        });

        upload.render({
            elem: '#layuiadmin-upload-courses',
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
                this.data={"dirpath": 'courses\\bg_img'}//携带额外的数据
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
