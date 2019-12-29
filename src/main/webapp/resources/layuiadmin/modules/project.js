layui.define(['table', 'form'], function (exports) {
    var $ = layui.$,
        table = layui.table,
        form = layui.form;

    table.render({
        elem: '#LAY-project-manage',
        url: '/project/query_publication',
        method: 'post',    //请求方式
        contentType: 'application/json',  //请求数据类型
        height: 'full-100',
        cellMinWidth: 80,
        page: true,
        limit: 30,
        cols: [[
            // {type:'checkbox'}
            // ,{field:'id', title: 'ID', width:100, sort: true},
            {field: 'main_title', title: '主标题', width: 100},
            {field: 'subtitle', title: '副标题', width: 100, sort: true},
            {field: 'share_people', title: '参与人', minWidth: 150},
            {field: 'share_shcool', title: '参与学校', sort: true,},
            {
                field: 'type', title: '类型', sort: true, templet: function (res) {
                    var type = res.type;
                    if (type == 1) {
                        return 'publication';
                    } else if (type == 2) {
                        return 'invited talk';
                    } else if (type == 3) {
                        return 'seminar';
                    } else {
                        return '';
                    }
                }
            },
            {
                field: 'project_file', title: '项目文件', minWicth: 200, sort: true, templet: function (res) {
                    if (res.project_file) {
                        return '<a download href="' + res.project_file + '" class="layui-btn layui-btn-sm layui-btn-warm"">下载文件</a>';
                    }
                    return '';
                }
            },
            {
                field: 'status', title: '状态', sort: true, templet: function (res) {
                    var type = res.status;
                    if (type == 0) {
                        return '无效';
                    } else if (type == 1) {
                        return '有效';
                    } else {
                        return '';
                    }
                }
            },
            {field: 'createtime', title: '创建时间', sort: true,},
            {title: '操作', width: 220, align: 'center', fixed: 'right', toolbar: '#table-project'}
        ]],
        limit: 15,    //设置分页数
        limits: [15, 30, 50, 100],   //自定义分页数
        height: 'full-220',
        text: '对不起，加载出现异常！'
    });

    //监听工具条
    table.on('tool(LAY-project-manage)', function (obj) {
        var data = obj.data;
        if (obj.event === 'del') {
            layer.confirm('是否确认删除此文章', function (index) {
                $.post('/project/delete_project', {id: data.id}, function (res) {
                    if (res.success) {
                        obj.del();
                        layer.close(index);
                    }
                    layer.msg(res.massage);
                }, 'json');
            });
        } else if (obj.event === 'edit') {
            var tr = $(obj.tr);
            window.project = data;
            window.open_type = 'update';
            layer.open({
                type: 2
                , title: '编辑文章'
                , content: '/admin/add_project'
                , maxmin: true
                , area: [$(window).width() * 0.75 + 'px', $(window).height() * 0.75 + 'px']
            });
        } else if (obj.event === 'view') {
            var tr = $(obj.tr);
            window.project = data;
            window.open_type = 'view';
            layer.open({
                type: 2
                , title: '查看文章'
                , content: '/admin/add_project'
                , maxmin: true
                , area: [$(window).width() * 0.75 + 'px', $(window).height() * 0.75 + 'px']
            });
        }
    });

    table.render({
        elem: '#LAY-activities-manage',
        url: '/project/query_activities',
        method: 'post',    //请求方式
        contentType: 'application/json',  //请求数据类型
        height: 'full-100',
        cellMinWidth: 80,
        page: true,
        limit: 30,
        cols: [[
            // {type:'checkbox'}
            // ,{field:'id', title: 'ID', width:100, sort: true},
            {field: 'main_title', title: '主标题', width: 100},
            {field: 'subtitle', title: '副标题', width: 100, sort: true},
            {field: 'share_people', title: '参与人', minWidth: 150},
            {field: 'share_shcool', title: '参与学校', sort: true,},
            {
                field: 'type', title: '类型', sort: true, templet: function (res) {
                    var type = res.type;
                    if (type == 1) {
                        return 'publication';
                    } else if (type == 2) {
                        return 'invited talk';
                    } else if (type == 3) {
                        return 'seminar';
                    } else {
                        return '';
                    }
                }
            },
            {
                field: 'project_file', title: '项目文件', minWicth: 200, sort: true, templet: function (res) {
                    if (res.project_file) {
                        return '<a download href="' + res.project_file + '" class="layui-btn layui-btn-sm layui-btn-warm"">下载文件</a>';
                    }
                    return '';
                }
            },
            {
                field: 'status', title: '状态', sort: true, templet: function (res) {
                    var type = res.status;
                    if (type == 0) {
                        return '无效';
                    } else if (type == 1) {
                        return '有效';
                    } else {
                        return '';
                    }
                }
            },
            {field: 'createtime', title: '创建时间', sort: true,},
            {title: '操作', width: 220, align: 'center', fixed: 'right', toolbar: '#table-project'}
        ]],
        limit: 15,    //设置分页数
        limits: [15, 30, 50, 100],   //自定义分页数
        height: 'full-220',
        text: '对不起，加载出现异常！'
    });

    //监听工具条
    table.on('tool(LAY-activities-manage)', function (obj) {
        var data = obj.data;
        if (obj.event === 'del') {
            layer.confirm('是否确认删除此activities', function (index) {
                $.post('/project/delete_project', {id: data.id}, function (res) {
                    if (res.success) {
                        obj.del();
                        layer.close(index);
                    }
                    layer.msg(res.massage);
                }, 'json');
            });
        } else if (obj.event === 'edit') {
            var tr = $(obj.tr);
            window.project = data;
            window.open_type = 'update';
            layer.open({
                type: 2
                , title: '编辑文章'
                , content: '/admin/add_activities'
                , maxmin: true
                , area: [$(window).width() * 0.75 + 'px', $(window).height() * 0.75 + 'px']
            });
        } else if (obj.event === 'view') {
            var tr = $(obj.tr);
            window.project = data;
            window.open_type = 'view';
            layer.open({
                type: 2
                , title: '查看文章'
                , content: '/admin/add_activities'
                , maxmin: true
                , area: [$(window).width() * 0.75 + 'px', $(window).height() * 0.75 + 'px']
            });
        }
    });

    exports('project', {})
});