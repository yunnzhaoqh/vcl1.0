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
            <button type="button" class="btn btn-secondary" data-method="moveTo" data-option="0">
          <span class="docs-tooltip" data-toggle="tooltip" title="移到最左">
            移到最左
          </span>
            </button>
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

        <div class="col-md-3 docs-toggles">
            <!-- <h3>Toggles:</h3> -->
            <div class="btn-group d-flex flex-nowrap" data-toggle="buttons">
                <label class="btn btn-primary active">
                    <input type="radio" class="sr-only" id="aspectRatio1" name="aspectRatio" value="1.7777777777777777">
                    <span class="docs-tooltip" data-toggle="tooltip" title="aspectRatio: 16 / 9">
              16:9
            </span>
                </label>
                <label class="btn btn-primary">
                    <input type="radio" class="sr-only" id="aspectRatio2" name="aspectRatio" value="1.3333333333333333">
                    <span class="docs-tooltip" data-toggle="tooltip" title="aspectRatio: 4 / 3">
              4:3
            </span>
                </label>
                <label class="btn btn-primary">
                    <input type="radio" class="sr-only" id="aspectRatio3" name="aspectRatio" value="1">
                    <span class="docs-tooltip" data-toggle="tooltip" title="aspectRatio: 1 / 1">
              1:1
            </span>
                </label>
                <label class="btn btn-primary">
                    <input type="radio" class="sr-only" id="aspectRatio4" name="aspectRatio" value="0.6666666666666666">
                    <span class="docs-tooltip" data-toggle="tooltip" title="aspectRatio: 2 / 3">
              2:3
            </span>
                </label>
                <label class="btn btn-primary">
                    <input type="radio" class="sr-only" id="aspectRatio5" name="aspectRatio" value="NaN">
                    <span class="docs-tooltip" data-toggle="tooltip" title="aspectRatio: NaN">
              Free
            </span>
                </label>
            </div>

            <div class="btn-group d-flex flex-nowrap" data-toggle="buttons">
                <label class="btn btn-primary active">
                    <input type="radio" class="sr-only" id="viewMode0" name="viewMode" value="0" checked>
                    <span class="docs-tooltip" data-toggle="tooltip" title="View Mode 0">
              VM0
            </span>
                </label>
                <label class="btn btn-primary">
                    <input type="radio" class="sr-only" id="viewMode1" name="viewMode" value="1">
                    <span class="docs-tooltip" data-toggle="tooltip" title="View Mode 1">
              VM1
            </span>
                </label>
                <label class="btn btn-primary">
                    <input type="radio" class="sr-only" id="viewMode2" name="viewMode" value="2">
                    <span class="docs-tooltip" data-toggle="tooltip" title="View Mode 2">
              VM2
            </span>
                </label>
                <label class="btn btn-primary">
                    <input type="radio" class="sr-only" id="viewMode3" name="viewMode" value="3">
                    <span class="docs-tooltip" data-toggle="tooltip" title="View Mode 3">
              VM3
            </span>
                </label>
            </div>

            <%--<div class="dropdown dropup docs-options">--%>
                <%--<button type="button" class="btn btn-primary btn-block dropdown-toggle" id="toggleOptions"--%>
                        <%--data-toggle="dropdown" aria-expanded="true">--%>
                    <%--Toggle Options--%>
                    <%--<span class="caret"></span>--%>
                <%--</button>--%>
                <%--<ul class="dropdown-menu" role="menu" aria-labelledby="toggleOptions">--%>
                    <%--<li class="dropdown-item">--%>
                        <%--<div class="form-check">--%>
                            <%--<input class="form-check-input" id="responsive" type="checkbox" name="responsive" checked>--%>
                            <%--<label class="form-check-label" for="responsive">responsive</label>--%>
                        <%--</div>--%>
                    <%--</li>--%>
                    <%--<li class="dropdown-item">--%>
                        <%--<div class="form-check">--%>
                            <%--<input class="form-check-input" id="restore" type="checkbox" name="restore" checked>--%>
                            <%--<label class="form-check-label" for="restore">restore</label>--%>
                        <%--</div>--%>
                    <%--</li>--%>
                    <%--<li class="dropdown-item">--%>
                        <%--<div class="form-check">--%>
                            <%--<input class="form-check-input" id="checkCrossOrigin" type="checkbox"--%>
                                   <%--name="checkCrossOrigin" checked>--%>
                            <%--<label class="form-check-label" for="checkCrossOrigin">checkCrossOrigin</label>--%>
                        <%--</div>--%>
                    <%--</li>--%>
                    <%--<li class="dropdown-item">--%>
                        <%--<div class="form-check">--%>
                            <%--<input class="form-check-input" id="checkOrientation" type="checkbox"--%>
                                   <%--name="checkOrientation" checked>--%>
                            <%--<label class="form-check-label" for="checkOrientation">checkOrientation</label>--%>
                        <%--</div>--%>
                    <%--</li>--%>
                    <%--<li class="dropdown-item">--%>
                        <%--<div class="form-check">--%>
                            <%--<input class="form-check-input" id="modal" type="checkbox" name="modal" checked>--%>
                            <%--<label class="form-check-label" for="modal">modal</label>--%>
                        <%--</div>--%>
                    <%--</li>--%>
                    <%--<li class="dropdown-item">--%>
                        <%--<div class="form-check">--%>
                            <%--<input class="form-check-input" id="guides" type="checkbox" name="guides" checked>--%>
                            <%--<label class="form-check-label" for="guides">guides</label>--%>
                        <%--</div>--%>
                    <%--</li>--%>
                    <%--<li class="dropdown-item">--%>
                        <%--<div class="form-check">--%>
                            <%--<input class="form-check-input" id="center" type="checkbox" name="center" checked>--%>
                            <%--<label class="form-check-label" for="center">center</label>--%>
                        <%--</div>--%>
                    <%--</li>--%>
                    <%--<li class="dropdown-item">--%>
                        <%--<div class="form-check">--%>
                            <%--<input class="form-check-input" id="highlight" type="checkbox" name="highlight" checked>--%>
                            <%--<label class="form-check-label" for="highlight">highlight</label>--%>
                        <%--</div>--%>
                    <%--</li>--%>
                    <%--<li class="dropdown-item">--%>
                        <%--<div class="form-check">--%>
                            <%--<input class="form-check-input" id="background" type="checkbox" name="background" checked>--%>
                            <%--<label class="form-check-label" for="background">background</label>--%>
                        <%--</div>--%>
                    <%--</li>--%>
                    <%--<li class="dropdown-item">--%>
                        <%--<div class="form-check">--%>
                            <%--<input class="form-check-input" id="autoCrop" type="checkbox" name="autoCrop" checked>--%>
                            <%--<label class="form-check-label" for="autoCrop">autoCrop</label>--%>
                        <%--</div>--%>
                    <%--</li>--%>
                    <%--<li class="dropdown-item">--%>
                        <%--<div class="form-check">--%>
                            <%--<input class="form-check-input" id="movable" type="checkbox" name="movable" checked>--%>
                            <%--<label class="form-check-label" for="movable">movable</label>--%>
                        <%--</div>--%>
                    <%--</li>--%>
                    <%--<li class="dropdown-item">--%>
                        <%--<div class="form-check">--%>
                            <%--<input class="form-check-input" id="rotatable" type="checkbox" name="rotatable" checked>--%>
                            <%--<label class="form-check-label" for="rotatable">rotatable</label>--%>
                        <%--</div>--%>
                    <%--</li>--%>
                    <%--<li class="dropdown-item">--%>
                        <%--<div class="form-check">--%>
                            <%--<input class="form-check-input" id="scalable" type="checkbox" name="scalable" checked>--%>
                            <%--<label class="form-check-label" for="scalable">scalable</label>--%>
                        <%--</div>--%>
                    <%--</li>--%>
                    <%--<li class="dropdown-item">--%>
                        <%--<div class="form-check">--%>
                            <%--<input class="form-check-input" id="zoomable" type="checkbox" name="zoomable" checked>--%>
                            <%--<label class="form-check-label" for="zoomable">zoomable</label>--%>
                        <%--</div>--%>
                    <%--</li>--%>
                    <%--<li class="dropdown-item">--%>
                        <%--<div class="form-check">--%>
                            <%--<input class="form-check-input" id="zoomOnTouch" type="checkbox" name="zoomOnTouch" checked>--%>
                            <%--<label class="form-check-label" for="zoomOnTouch">zoomOnTouch</label>--%>
                        <%--</div>--%>
                    <%--</li>--%>
                    <%--<li class="dropdown-item">--%>
                        <%--<div class="form-check">--%>
                            <%--<input class="form-check-input" id="zoomOnWheel" type="checkbox" name="zoomOnWheel" checked>--%>
                            <%--<label class="form-check-label" for="zoomOnWheel">zoomOnWheel</label>--%>
                        <%--</div>--%>
                    <%--</li>--%>
                    <%--<li class="dropdown-item">--%>
                        <%--<div class="form-check">--%>
                            <%--<input class="form-check-input" id="cropBoxMovable" type="checkbox" name="cropBoxMovable"--%>
                                   <%--checked>--%>
                            <%--<label class="form-check-label" for="cropBoxMovable">cropBoxMovable</label>--%>
                        <%--</div>--%>
                    <%--</li>--%>
                    <%--<li class="dropdown-item">--%>
                        <%--<div class="form-check">--%>
                            <%--<input class="form-check-input" id="cropBoxResizable" type="checkbox"--%>
                                   <%--name="cropBoxResizable" checked>--%>
                            <%--<label class="form-check-label" for="cropBoxResizable">cropBoxResizable</label>--%>
                        <%--</div>--%>
                    <%--</li>--%>
                    <%--<li class="dropdown-item">--%>
                        <%--<div class="form-check">--%>
                            <%--<input class="form-check-input" id="toggleDragModeOnDblclick" type="checkbox"--%>
                                   <%--name="toggleDragModeOnDblclick" checked>--%>
                            <%--<label class="form-check-label"--%>
                                   <%--for="toggleDragModeOnDblclick">toggleDragModeOnDblclick</label>--%>
                        <%--</div>--%>
                    <%--</li>--%>
                <%--</ul>--%>
            <%--</div><!-- /.dropdown -->--%>


        </div><!-- /.docs-toggles -->
    </div>
</div>
<script src="/resources/js/jquery-3.4.1.slim.min.js" crossorigin="anonymous"></script>
<script src="/resources/js/bootstrap.bundle.js"></script>
<script src="/resources/cropper/cropper.js"></script>
<script src="/resources/cropper/main.js"></script>
</body>
</html>
