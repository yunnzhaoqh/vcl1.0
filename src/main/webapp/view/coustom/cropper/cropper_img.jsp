<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<html>
<head>
    <meta charset="utf-8">
    <title>图片裁剪</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="/resources/cropper/all.css" media="all">
    <%--<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.11.2/css/all.css" crossorigin="anonymous">--%>
    <link rel="stylesheet" href="/resources/css/bootstrap4.3.1.min.css" media="all">
    <link rel="stylesheet" href="/resources/cropper/cropper.css" media="all">
    <link rel="stylesheet" href="/resources/cropper/main.css" media="all">
</head>
<style>
    .container{
        margin-top: 20px;
    }
</style>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-9">
            <!-- <h3>Demo:</h3> -->
            <div class="img-container">
                <img src="/resources/images/no_image.jpg" alt="Picture">
            </div>
        </div>
        <div class="col-md-3">
            <!-- <h3>Preview:</h3> -->
            <div class="docs-preview clearfix">
                <div class="img-preview preview-lg"></div>
                <div class="img-preview preview-md"></div>
                <div class="img-preview preview-sm"></div>
                <div class="img-preview preview-xs"></div>
            </div>

            <!-- <h3>Data:</h3> -->
            <div class="docs-data">
                <div class="input-group input-group-sm">
            <span class="input-group-prepend">
              <label class="input-group-text" for="dataX">比例宽度</label>
            </span>
                    <input type="text" class="form-control" id="dataX" placeholder="比例宽度">
                    <span class="input-group-append">
              <span class="input-group-text">px</span>
            </span>
                </div>
                <div class="input-group input-group-sm">
            <span class="input-group-prepend">
              <label class="input-group-text" for="dataY">比例高度</label>
            </span>
                    <input type="text" class="form-control" id="dataY" placeholder="比例高度">
                    <span class="input-group-append">
              <span class="input-group-text">px</span>
            </span>
                </div>
                <div class="input-group input-group-sm">
            <span class="input-group-prepend">
              <label class="input-group-text" for="dataWidth">实际宽度</label>
            </span>
                    <input type="text" class="form-control" id="dataWidth" placeholder="实际宽度">
                    <span class="input-group-append">
              <span class="input-group-text">px</span>
            </span>
                </div>
                <div class="input-group input-group-sm">
            <span class="input-group-prepend">
              <label class="input-group-text" for="dataHeight">实际高度</label>
            </span>
                    <input type="text" class="form-control" id="dataHeight" placeholder="实际高度">
                    <span class="input-group-append">
              <span class="input-group-text">px</span>
            </span>
                </div>
                <div class="input-group input-group-sm">
            <span class="input-group-prepend">
              <label class="input-group-text" for="dataRotate">旋转幅度</label>
            </span>
                    <input type="text" class="form-control" id="dataRotate" placeholder="旋转幅度">
                    <span class="input-group-append">
              <span class="input-group-text">deg</span>
            </span>
                </div>
                <div class="input-group input-group-sm">
            <span class="input-group-prepend">
              <label class="input-group-text" for="dataScaleX">宽度比例</label>
            </span>
                    <input type="text" class="form-control" id="dataScaleX" placeholder="宽度比例">
                </div>
                <div class="input-group input-group-sm">
            <span class="input-group-prepend">
              <label class="input-group-text" for="dataScaleY">高度比例</label>
            </span>
                    <input type="text" class="form-control" id="dataScaleY" placeholder="高度比例">
                </div>
            </div>
        </div>
    </div>
    <div class="row" id="actions">
        <div class="col-md-9 docs-buttons">
            <!-- <h3>Toolbar:</h3> -->
            <div class="btn-group">
                <button type="button" class="btn btn-primary" data-method="setDragMode" data-option="move" title="Move">
            <span class="docs-tooltip" data-toggle="tooltip" title="移动原图">
              <span class="fa fa-arrows-alt"></span>
            </span>
                </button>
                <button type="button" class="btn btn-primary" data-method="setDragMode" data-option="crop" title="Crop">
            <span class="docs-tooltip" data-toggle="tooltip" title="移动裁剪">
              <span class="fa fa-crop-alt"></span>
            </span>
                </button>
            </div>

            <div class="btn-group">
                <button type="button" class="btn btn-primary" data-method="zoom" data-option="0.1" title="Zoom In">
            <span class="docs-tooltip" data-toggle="tooltip" title="放大">
              <span class="fa fa-search-plus"></span>
            </span>
                </button>
                <button type="button" class="btn btn-primary" data-method="zoom" data-option="-0.1" title="Zoom Out">
            <span class="docs-tooltip" data-toggle="tooltip" title="放小">
              <span class="fa fa-search-minus"></span>
            </span>
                </button>
            </div>

            <div class="btn-group">
                <button type="button" class="btn btn-primary" data-method="move" data-option="-10"
                        data-second-option="0" title="Move Left">
            <span class="docs-tooltip" data-toggle="tooltip" title="原图左移">
              <span class="fa fa-arrow-left"></span>
            </span>
                </button>
                <button type="button" class="btn btn-primary" data-method="move" data-option="10" data-second-option="0"
                        title="Move Right">
            <span class="docs-tooltip" data-toggle="tooltip" title="原图右移">
              <span class="fa fa-arrow-right"></span>
            </span>
                </button>
                <button type="button" class="btn btn-primary" data-method="move" data-option="0"
                        data-second-option="-10" title="Move Up">
            <span class="docs-tooltip" data-toggle="tooltip" title="原图上移">
              <span class="fa fa-arrow-up"></span>
            </span>
                </button>
                <button type="button" class="btn btn-primary" data-method="move" data-option="0" data-second-option="10"
                        title="Move Down">
            <span class="docs-tooltip" data-toggle="tooltip" title="原图下移">
              <span class="fa fa-arrow-down"></span>
            </span>
                </button>
            </div>

            <div class="btn-group">
                <button type="button" class="btn btn-primary" data-method="rotate" data-option="-45"
                        title="Rotate Left">
            <span class="docs-tooltip" data-toggle="tooltip" title="向左旋转45°">
              <span class="fa fa-undo-alt"></span>
            </span>
                </button>
                <button type="button" class="btn btn-primary" data-method="rotate" data-option="45"
                        title="Rotate Right">
            <span class="docs-tooltip" data-toggle="tooltip" title="向右旋转45°">
              <span class="fa fa-redo-alt"></span>
            </span>
                </button>
            </div>

            <div class="btn-group">
                <button type="button" class="btn btn-primary" data-method="scaleX" data-option="-1"
                        title="Flip Horizontal">
            <span class="docs-tooltip" data-toggle="tooltip" title="左右互换">
              <span class="fa fa-arrows-alt-h"></span>
            </span>
                </button>
                <button type="button" class="btn btn-primary" data-method="scaleY" data-option="-1"
                        title="Flip Vertical">
            <span class="docs-tooltip" data-toggle="tooltip" title="上下互换">
              <span class="fa fa-arrows-alt-v"></span>
            </span>
                </button>
            </div>

            <div class="btn-group">
                <button type="button" class="btn btn-primary" data-method="crop" title="Crop">
            <span class="docs-tooltip" data-toggle="tooltip" title="选择裁剪">
              <span class="fa fa-check"></span>
            </span>
                </button>
                <button type="button" class="btn btn-primary" data-method="clear" title="Clear">
            <span class="docs-tooltip" data-toggle="tooltip" title="关闭裁剪">
              <span class="fa fa-times"></span>
            </span>
                </button>
            </div>

            <div class="btn-group">
                <button type="button" class="btn btn-primary" data-method="disable" title="Disable">
            <span class="docs-tooltip" data-toggle="tooltip" title="锁住">
              <span class="fa fa-lock"></span>
            </span>
                </button>
                <button type="button" class="btn btn-primary" data-method="enable" title="Enable">
            <span class="docs-tooltip" data-toggle="tooltip" title="解锁">
              <span class="fa fa-unlock"></span>
            </span>
                </button>
            </div>

            <div class="btn-group">
                <button type="button" class="btn btn-primary" data-method="reset" title="Reset">
            <span class="docs-tooltip" data-toggle="tooltip" title="重置">
              <span class="fa fa-sync-alt"></span>
            </span>
                </button>
                <label class="btn btn-primary btn-upload" for="inputImage" title="Upload image file">
                    <input type="file" class="sr-only" id="inputImage" name="file" accept="image/*">
                    <span class="docs-tooltip" data-toggle="tooltip" title="上传裁剪图片">
              <span class="fa fa-upload"></span>
            </span>
                </label>
                <button type="button" class="btn btn-primary" data-method="destroy" title="Destroy">
            <span class="docs-tooltip" data-toggle="tooltip" title="关闭裁剪">
              <span class="fa fa-power-off"></span>
            </span>
                </button>
            </div>

            <div class="btn-group btn-group-crop">
                <button type="button" class="btn btn-success" data-method="getCroppedCanvas"
                        data-option="{ &quot;maxWidth&quot;: 4096, &quot;maxHeight&quot;: 4096 }">
                    <span class="docs-tooltip" data-toggle="tooltip"
                          title="获取裁剪图片">
                      获取裁剪图片
                    </span>
                </button>
            </div>

            <!-- Show the cropped image in modal -->
            <div class="modal fade docs-cropped" id="getCroppedCanvasModal" role="dialog" aria-hidden="true"
                 aria-labelledby="getCroppedCanvasTitle" tabindex="-1">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="getCroppedCanvasTitle">预览</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body"></div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                            <a class="btn btn-primary" id="download" href="javascript:void(0);" download="cropped.jpg">下载查看</a>
                        </div>
                    </div>
                </div>
            </div><!-- /.modal -->
            <button type="button" class="btn btn-secondary" data-method="zoomTo" data-option="1">
          <span class="docs-tooltip" data-toggle="tooltip" title="放大100%">
            放大100%
          </span>
            </button>
            <button type="button" class="btn btn-secondary" data-method="rotateTo" data-option="180">
          <span class="docs-tooltip" data-toggle="tooltip" title="旋转180°">
            旋转180°
          </span>
            </button>

        </div><!-- /.docs-buttons -->
    </div>
</div>
<script src="/resources/js/jquery-3.4.1.slim.min.js" crossorigin="anonymous"></script>
<script src="/resources/js/bootstrap.bundle.js"></script>
<script src="/resources/cropper/cropper.js"></script>
<script src="/resources/layuiadmin/layui/layui.js"></script>
<script type="text/javascript">
    layui.config({
        base: '/resources/layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['upload', 'element'], function () {
        var $ = layui.$,
            router = layui.router();
        // cropper图片裁剪
        $('[data-toggle="tooltip"]').tooltip();

        $('#inputImage').change(function () {
            $('#img-container').cropper({
                aspectRatio : 1 / 1,// 默认比例
                preview : '.img-preview',// 预览视图
                guides : false, // 裁剪框的虚线(九宫格)
                autoCropArea : 0.5, // 0-1之间的数值，定义自动剪裁区域的大小，默认0.8
                movable : true, // 是否允许移动图片
                dragCrop : false, // 是否允许移除当前的剪裁框，并通过拖动来新建一个剪裁框区域
                movable : false, // 是否允许移动剪裁框
                resizable : false, // 是否允许改变裁剪框的大小
                zoomable : true, // 是否允许缩放图片大小
                mouseWheelZoom : true, // 是否允许通过鼠标滚轮来缩放图片
                touchDragZoom : true, // 是否允许通过触摸移动来缩放图片
                rotatable : true, // 是否允许旋转图片
                crop : function(e) {
                    // 输出结果数据裁剪图像。
                    var data = e.detail;

                    console.log(e.type);
                    dataX.value = Math.round(data.x);
                    dataY.value = Math.round(data.y);
                    dataHeight.value = Math.round(data.height);
                    dataWidth.value = Math.round(data.width);
                    dataRotate.value = typeof data.rotate !== 'undefined' ? data.rotate : '';
                    dataScaleX.value = typeof data.scaleX !== 'undefined' ? data.scaleX : '';
                    dataScaleY.value = typeof data.scaleY !== 'undefined' ? data.scaleY : '';
                }
            });
        });
    });
</script>
</body>
</html>
