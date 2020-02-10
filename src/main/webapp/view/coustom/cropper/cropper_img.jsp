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

    #actions{
        text-align: center;
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
            <div class="row" id="actions">
                <div class="col-md-12 docs-buttons">
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
                    <div class="btn-group btn-group-crop">
                        <button type="button" class="btn btn-success" data-method="getCroppedCanvas"
                                data-option="{ &quot;maxWidth&quot;: 4096, &quot;maxHeight&quot;: 4096 }">
                    <span class="docs-tooltip" data-toggle="tooltip"
                          title="确认上传">
                      确认上传
                    </span>
                        </button>
                    </div>

                    <%--                    <!-- Show the cropped image in modal -->--%>
                    <%--                    <div class="modal fade docs-cropped" id="getCroppedCanvasModal" role="dialog" aria-hidden="true"--%>
                    <%--                         aria-labelledby="getCroppedCanvasTitle" tabindex="-1">--%>
                    <%--                        <div class="modal-dialog">--%>
                    <%--                            <div class="modal-content">--%>
                    <%--                                <div class="modal-header">--%>
                    <%--                                    <h5 class="modal-title" id="getCroppedCanvasTitle">预览</h5>--%>
                    <%--                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">--%>
                    <%--                                        <span aria-hidden="true">&times;</span>--%>
                    <%--                                    </button>--%>
                    <%--                                </div>--%>
                    <%--                                <div class="modal-body"></div>--%>
                    <%--                                <div class="modal-footer">--%>
                    <%--                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>--%>
                    <%--                                    <a class="btn btn-primary" id="download" href="javascript:void(0);" download="cropped.jpg">下载查看</a>--%>
                    <%--                                </div>--%>
                    <%--                            </div>--%>
                    <%--                        </div>--%>
                    <%--                    </div><!-- /.modal -->--%>
                </div><!-- /.docs-buttons -->
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
                        <label class="input-group-text" for="dataWidth">截图宽度</label>
                    </span>
                    <input type="text" class="form-control" id="dataWidth" placeholder="实际宽度">
                    <span class="input-group-append">
                    <span class="input-group-text">px</span>
                </span>
                </div>
                <div class="input-group input-group-sm">
                    <span class="input-group-prepend">
                        <label class="input-group-text" for="dataHeight">截图高度</label>
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
            </div>
        </div>
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
        var cropper;
        var options;
        var Cropper = window.Cropper;
        var URL = window.URL || window.webkitURL;
        var image = $('.img-container img')[0];
        var download = $('#download');
        var actions = $('#actions');
        var dataHeight = $('#dataHeight');
        var dataWidth = $('#dataWidth');
        var dataRotate = $('#dataRotate');
        var originalImageURL = image.src;
        var uploadedImageType = 'image/jpeg';
        var uploadedImageName = 'cropped.jpg';
        var uploadedImageURL;
        var width = router.search.width;
        var height = router.search.height;
        $('[data-toggle="tooltip"]').tooltip();

        if(URL){
            $('#inputImage').change(function () {
                options = {
                    aspectRatio : width / height,// 默认比例
                    preview : '.img-preview',// 预览视图
                    dragMode: 'move',
                    minCropBoxWidth: width,
                    minCropBoxHeight: height,
                    toggleDragModeOnDblclick: false,
                    autoCropArea : 1, // 0-1之间的数值，定义自动剪裁区域的大小，默认0.8、
                    dragCrop : false, // 是否允许移除当前的剪裁框，并通过拖动来新建一个剪裁框区域、
                    cropBoxResizable : false, // 是否可以改变裁剪框的尺寸、
                    ready: function (e) {
                        console.log(e.type);
                        //设置裁剪框大小
                        cropper.setCropBoxData({width: width + 'px',height: height + 'px'});
                    },
                    cropstart: function (e) {
                        console.log(e.type, e.detail.action);
                    },
                    cropmove: function (e) {
                        console.log(e.type, e.detail.action);
                    },
                    cropend: function (e) {
                        console.log(e.type, e.detail.action);
                    },
                    crop: function (e) {
                        var data = e.detail;

                        console.log(e.type);
                        dataHeight.val(Math.round(data.height));
                        dataWidth.val(Math.round(data.width));
                        dataRotate.val(typeof data.rotate !== 'undefined' ? data.rotate : '');
                    },
                    zoom: function (e) {
                        console.log(e.type, e.detail.ratio);
                    }
                };
                cropper = new Cropper(image, options);
                var files = this.files;
                var file;

                if (cropper && files && files.length) {
                    file = files[0];
                    if (/^image\/\w+/.test(file.type)) {
                        uploadedImageType = file.type;
                        uploadedImageName = file.name;
                        if (uploadedImageURL) {
                            URL.revokeObjectURL(uploadedImageURL);
                        }
                        image.src = uploadedImageURL = URL.createObjectURL(file);
                        cropper.destroy();
                        cropper = new Cropper(image, options);
                        $('#inputImage').value = null;

                    } else {
                        window.alert('Please choose an image file.');
                    }
                }
            });
        }else{
            $('#inputImage').disabled = true;
            $('#inputImage').parentNode.className += ' disabled';
        }

        $('.fa-sync-alt').click(function () {
            if(cropper){
                cropper.reset();
            }
        });

        $('.fa-undo-alt').click(function () {
            if(cropper){
                cropper.rotate(-45);
            }
        });

        $('.fa-redo-alt').click(function () {
            if(cropper){
                cropper.rotate(45);
            }
        });

        $('.fa-lock').click(function () {
            if(cropper){
                cropper.disable();
            }
        });

        $('.fa-unlock').click(function () {
            if(cropper){
                cropper.enable();
            }
        });
    });
</script>
</body>
</html>
