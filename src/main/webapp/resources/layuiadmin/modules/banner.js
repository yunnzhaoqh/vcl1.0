layui.define(['table', 'form'], function (exports) {
    var $ = layui.$,
        table = layui.table,
        form = layui.form;

    table.render({
        elem: '#LAY-banner-manage',
        url: '/banner/findPage',
        method: 'post',    //请求方式
        contentType: 'application/json',  //请求数据类型
        height: 'full-100',
        cellMinWidth: 80,
        page: true,
        limit: 30,
        cols: [[
            // {type:'checkbox'}
            // ,{field:'id', title: 'ID', width:100, sort: true},
            {field: 'bannerTitleContext', title: '轮播图标题', width: 100},
            {field: 'bannerTitleIntro', title: '轮播图简介', minWidth: 500},
            {
                field: 'status', title: '状态', sort: true, templet: function (res) {
                    var type = res.status;
                    if (type == 0) {
                        return '前端不显示';
                    } else if (type == 1) {
                        return '前端显示';
                    } else {
                        return '';
                    }
                }
            },
            {field: 'createTime', title: '创建时间', sort: true,},
            {title: '操作', width: 220, align: 'center', fixed: 'right', toolbar: '#table-project'}
        ]],
        page: true,   //是否分页，传输到后台当前页数是page（变量名），数据条数是limit（变量名）
        limit: 15,    //设置分页数
        limits: [15, 30, 50, 100],   //自定义分页数
        height: 'full-220',
        text: '对不起，加载出现异常！'
    });

    //监听工具条
    table.on('tool(LAY-banner-manage)', function (obj) {
        var data = obj.data;
        if (obj.event === 'del') {
            layer.confirm('是否确认删除此文章', function (index) {
                $.post('/banner/delete_banner', {id: data.id}, function (res) {
                    if (res.success) {
                        obj.del();
                        layer.close(index);
                    }
                    layer.msg(res.message);
                }, 'json');
            });
        } else if (obj.event === 'edit') {
            var tr = $(obj.tr);
            window.banner = data;
            window.open_type = 'update';
            layer.open({
                type: 2
                , title: '编辑文章'
                , content: '/admin/add_banner'
                , maxmin: true
                , area: [$(window).width() * 0.75 + 'px', $(window).height() * 0.75 + 'px']
            });
        } else if (obj.event === 'view') {
            var tr = $(obj.tr);
            window.banner = data;
            window.open_type = 'view';
            layer.open({
                type: 2
                , title: '查看文章'
                , content: '/admin/add_banner'
                , maxmin: true
                , area: [$(window).width() * 0.75 + 'px', $(window).height() * 0.75 + 'px']
            });
        }
    });

    exports('banner', {})
});