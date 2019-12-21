<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <title>新增人员</title>
  <meta name="renderer" content="webkit">
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
  <link rel="stylesheet" href="/resources/layuiadmin/layui/css/layui.css" media="all">
  <style>
    .layui-form-label.layui-required:after{
      content:"*";
      color:red;
      position: absolute;
      top:5px;
      left:15px;
    }
  </style>
</head>
<body>

  <div class="layui-form" lay-filter="layuiadmin-form-useradmin" id="layuiadmin-form-useradmin" style="padding: 20px 0 0 0;">
    <div class="layui-form-item">
      <label class="layui-form-label layui-required">姓名</label>
      <div class="layui-input-inline">
        <input type="text" name="name" lay-verify="required" placeholder="请输入用户名" autocomplete="off" class="layui-input">
      </div>
    </div>
    <div class="layui-form-item">
      <label class="layui-form-label layui-required">手机号码</label>
      <div class="layui-input-inline">
        <input type="text" name="phone" lay-verify="phone" placeholder="请输入号码" autocomplete="off" class="layui-input">
      </div>
    </div>
    <div class="layui-form-item layui-required" lay-filter="sex">
      <label class="layui-form-label layui-required">选择性别</label>
      <div class="layui-input-block">
        <input type="radio" name="gender" value="男" title="男" checked>
        <input type="radio" name="gender" value="女" title="女">
      </div>
    </div>
    <div class="layui-form-item">
      <label class="layui-form-label">年龄</label>
      <div class="layui-input-inline">
        <input type="text" name="age" lay-verify="age" placeholder="请输入年龄" autocomplete="off" class="layui-input">
      </div>
    </div>
    <div class="layui-form-item">
      <label class="layui-form-label layui-required">人员相片</label>
      <div class="layui-input-inline">
        <input type="hidden" name="path" lay-verify="path" placeholder="请上传图片" autocomplete="off" class="layui-input" >
      </div>
      <button style="float: left;" type="button" class="layui-btn" id="layuiadmin-upload-useradmin">上传图片</button>
    </div>
    <div class="layui-form-item">
      <label class="layui-form-label layui-required">员工类型</label>
      <div class="layui-input-inline">
        <select name="type">
          <option value="1">教职员工</option>
          <option value="2">教授</option>
          <option value="3">学生</option>
          <option value="4">校友</option>
        </select>
      </div>
    </div>
    <div class="layui-form-item layui-hide">
      <input type="button" lay-submit lay-filter="LAY-user-front-submit" id="LAY-user-front-submit" value="确认">
    </div>
  </div>

  <script src="/resources/layuiadmin/layui/layui.js"></script>
  <script>
  layui.config({
    base: '/resources/layuiadmin/' //静态资源所在路径
  }).extend({
    index: 'lib/index' //主入口模块
  }).use(['index', 'form', 'upload'], function(){
    var $ = layui.$
    ,form = layui.form
    ,upload = layui.upload ;

    form.verify({
      age: [
        /^[0-9]*[1-9][0-9]*$/,
        '只能输入正整数'
      ],
      path:[
        /[\S]+/,
        "人员相片不能为空"]
    })
    
    upload.render({
      elem: '#layuiadmin-upload-useradmin',
      url: '/user/upload_file',
      auto:true,//是否自动上传
      accept: 'images',
      method: 'post',
      multiple:false,//支持多文件上传,
      acceptMime: 'image/*',
      before: function(obj){
        this.data={"dirpath": 'people'}//携带额外的数据
        var index = layer.load(); //开始上传之后打开load层
        $("#hidden_tmp_index").val(index);//将load层的index隐藏到页面中
      },
      done: function(res){
        layer.close(layer.index); //它获取的始终是最新弹出的某个层，值是由layer内部动态递增计算的
        $(this.item).prev("div").children("input").val(res.src);
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