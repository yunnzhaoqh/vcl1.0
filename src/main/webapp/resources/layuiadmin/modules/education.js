layui.define(['table', 'form'], function (exports) {
    var $ = layui.$,
        table = layui.table,
        form = layui.form;

    table.render({
        elem: '#LAY-reference-manage',
        url: '/reference/findPage',
        method: 'post',    //请求方式
        contentType: 'application/json',  //请求数据类型
        height: 'full-100',
        cellMinWidth: 80,
        page: true,
        limit: 30,
        where: {
            status: '',
        },
        cols: [[
            // {type:'checkbox'}
            // ,{field:'id', title: 'ID', width:100, sort: true},
            {field: 'referenceName', title: '参考项目名称'},
            {field: 'peopleName', title: '指导员', width: 100},
            {field: 'starttime', title: '开始时间',width: 150, sort: true,},
            {field: 'endtime', title: '结束时间',width: 150, sort: true,},
            {field: 'intro', title: '团队简介', minWidth: 400, sort: true,},
            // {
            //     field: 'reference', title: '项目文件', minWicth: 150, sort: true, templet: function (res) {
            //         if (res.reference) {
            //             return '<a download href="' + res.reference + '" class="layui-btn layui-btn-sm layui-btn-warm"">下载文件</a>';
            //         }
            //         return '';
            //     }
            // },
            {field: 'createtime', title: '创建时间', sort: true,},
            {title: '操作', width: 220, align: 'center', fixed: 'right', toolbar: '#table-project'}
        ]],
        page: true,   //是否分页，传输到后台当前页数是page（变量名），数据条数是limit（变量名）
        limit: 15,    //设置分页数
        limits: [15, 30, 50, 100],   //自定义分页数
        height: 'full-220'
    });

    //监听工具条
    table.on('tool(LAY-reference-manage)', function (obj) {
        var data = obj.data;
        if (obj.event === 'del') {
            layer.confirm('是否确认删除此文章', function (index) {
                $.post('/reference/delete_reference', {id: data.id}, function (res) {
                    if (res.success) {
                        obj.del();
                        layer.close(index);
                    }
                    layer.msg(res.message);
                }, 'json');
            });
        } else if (obj.event === 'edit') {
            var tr = $(obj.tr);
            window.reference = data;
            window.open_type = 'update';
            layer.open({
                type: 2
                , title: '编辑文章'
                , content: '/admin/add_reference'
                , maxmin: true
                , area: [$(window).width() * 0.75 + 'px', $(window).height() * 0.75 + 'px']
            });
        } else if (obj.event === 'view') {
            var tr = $(obj.tr);
            window.reference = data;
            window.open_type = 'view';
            layer.open({
                type: 2
                , title: '查看文章'
                , content: '/admin/add_reference'
                , maxmin: true
                , area: [$(window).width() * 0.75 + 'px', $(window).height() * 0.75 + 'px']
            });
        }
    });

    table.render({
        elem: '#LAY-summwe_camp-manage',
        url: '/camp/findPage',
        method: 'post',    //请求方式
        contentType: 'application/json',  //请求数据类型
        height: 'full-100',
        cellMinWidth: 80,
        page: true,
        limit: 30,
        where: {
            status: '',
        },
        cols: [[
            // {type:'checkbox'}
            // ,{field:'id', title: 'ID', width:100, sort: true},
            {field: 'name', title: '活动名称'},
            {field: 'starttime', title: '开始时间', sort: true,},
            {field: 'endtime', title: '结束时间', sort: true,},
            {field: 'intro', title: '活动简介', minWidth: 400, sort: true,},

            {field: 'createtime', title: '创建时间', sort: true,},
            {title: '操作', width: 220, align: 'center', fixed: 'right', toolbar: '#table-project'}
        ]],
        page: true,   //是否分页，传输到后台当前页数是page（变量名），数据条数是limit（变量名）
        limit: 15,    //设置分页数
        limits: [15, 30, 50, 100],   //自定义分页数
        height: 'full-220'
    });

    //监听工具条
    table.on('tool(LAY-summwe_camp-manage)', function (obj) {
        var data = obj.data;
        if (obj.event === 'del') {
            layer.confirm('是否确认删除此文章', function (index) {
                $.post('/camp/delete_summwe_camp', {id: data.id}, function (res) {
                    if (res.success) {
                        obj.del();
                        layer.close(index);
                    }
                    layer.msg(res.message);
                }, 'json');
            });
        } else if (obj.event === 'edit') {
            var tr = $(obj.tr);
            window.summwe_camp = data;
            window.open_type = 'update';
            layer.open({
                type: 2
                , title: '编辑活动项目'
                , content: '/admin/add_summwe_camp'
                , maxmin: true
                , area: [$(window).width() * 0.75 + 'px', $(window).height() * 0.75 + 'px']
            });
        } else if (obj.event === 'view') {
            var tr = $(obj.tr);
            window.summwe_camp = data;
            window.open_type = 'view';
            layer.open({
                type: 2
                , title: '查看活动项目'
                , content: '/admin/add_summwe_camp'
                , maxmin: true
                , area: [$(window).width() * 0.75 + 'px', $(window).height() * 0.75 + 'px']
            });
        }
    });

    table.render({
        elem: '#LAY-courses-manage',
        url: '/courses/findPage',
        method: 'post',    //请求方式
        contentType: 'application/json',  //请求数据类型
        height: 'full-100',
        cellMinWidth: 80,
        page: true,
        limit: 30,
        where: {
            status: '',
        },
        cols: [[
            // {type:'checkbox'}
            // ,{field:'id', title: 'ID', width:100, sort: true},
            {field: 'courseName', title: '课程名称'},
            {field: 'peopleName', title: '指导员'},
            {field: 'starttime', title: '开始时间', sort: true,},
            {field: 'endtime', title: '结束时间', sort: true,},

            {field: 'createtime', title: '创建时间', sort: true,},
            {title: '操作', width: 220, align: 'center', fixed: 'right', toolbar: '#table-project'}
        ]],
        page: true,   //是否分页，传输到后台当前页数是page（变量名），数据条数是limit（变量名）
        limit: 15,    //设置分页数
        limits: [15, 30, 50, 100],   //自定义分页数
        height: 'full-220'
    });

    //监听工具条
    table.on('tool(LAY-courses-manage)', function (obj) {
        var data = obj.data;
        if (obj.event === 'del') {
            layer.confirm('是否确认删除此文章', function (index) {
                $.post('/courses/delete_courses', {id: data.id}, function (res) {
                    if (res.success) {
                        obj.del();
                        layer.close(index);
                    }
                    layer.msg(res.message);
                }, 'json');
            });
        } else if (obj.event === 'edit') {
            var tr = $(obj.tr);
            window.courses = data;
            window.open_type = 'update';
            layer.open({
                type: 2
                , title: '编辑课程'
                , content: '/admin/add_courses'
                , maxmin: true
                , area: [$(window).width() * 0.75 + 'px', $(window).height() * 0.75 + 'px']
            });
        } else if (obj.event === 'view') {
            var tr = $(obj.tr);
            window.courses = data;
            window.open_type = 'view';
            layer.open({
                type: 2
                , title: '查看课程'
                , content: '/admin/add_courses'
                , maxmin: true
                , area: [$(window).width() * 0.75 + 'px', $(window).height() * 0.75 + 'px']
            });
        }
    });

    exports('education', {})
});