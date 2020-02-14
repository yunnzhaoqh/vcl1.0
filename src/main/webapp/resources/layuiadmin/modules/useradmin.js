/**

 @Name：layuiAdmin 用户管理 管理员管理 角色管理
 @Author：star1029
 @Site：http://www.layui.com/admin/
 @License：LPPL

 */


layui.define(['table', 'form'], function (exports) {
    var $ = layui.$
        , table = layui.table
        , form = layui.form;

    //用户管理
    table.render({
        elem: '#LAY-user-manage', //table的id
        url: '/people/findPage',  //接口
        method: 'post',    //请求方式
        contentType: 'application/json',  //请求数据类型
        cellMinWidth: 80,
        where: {
            status: '',
        },
        cols: [[    //数据首行的列名 field是数据变量名
            // {type: 'checkbox', fixed: 'left'}
            {field: 'name', title: '用户名'}
            // ,{field: 'avatar', title: '头像', width: 100, templet: '#imgTpl'}
            // ,{field: 'email', title: '邮箱'}
            // , {field: 'gender', title: '性别'}
            , {field: 'duty', title: '职务'}
            , {field: 'dutyNum', title: '显示顺序'}
            , {
                field: 'introUrl', title: '主页地址', templet: function (res) {
                    if(res.introUrl){
                        return '<a href="'+ res.introUrl +'" target="_blank style="font-size: 14px;">' + res.introUrl + '</a>';
                    }
                    return '';
                }
            }
            , {
                field: 'type', title: '人员类型', templet: function (res) {
                    var type = res.type;
                    if (type == 1) {
                        return 'faculty & staff';
                    } else if (type == 2) {
                        return 'visiting professors';
                    } else if (type == 3) {
                        return 'students';
                    } else if (type == 4) {
                        return 'alumni';
                    } else {
                        return '';
                    }
                }
            }
            , {field: 'createtime', title: '创建时间', sort: true}
            , {
                field: 'status', title: '发布状态', templet: function (res) {
                    var type = res.status;
                    if (type == 2) {
                        return '推荐';
                    } else if (type == 1) {
                        return '不推荐';
                    } else {
                        return '';
                    }
                }
            }
            , {title: '操作', align: 'center', fixed: 'right', toolbar: '#table-useradmin-webuser'}
        ]],
        page: true,   //是否分页，传输到后台当前页数是page（变量名），数据条数是limit（变量名）
        limit: 15,    //设置分页数
        limits: [15, 30, 50, 100],   //自定义分页数
        height: 'full-220'
    });

    //监听工具条
    table.on('tool(LAY-user-manage)', function (obj) {
        var data = obj.data;
        if (obj.event === 'del') {
            layer.confirm('是否确认删除此人员', function (index) {
                $.post('/people/delete_people', {id: data.id}, function (res) {
                    if (res.success) {
                        obj.del();
                        layer.close(index);
                    }
                    layer.msg(res.message);
                }, 'json');
            });
        } else if (obj.event === 'edit') {
            var tr = $(obj.tr);
            window.people = data;
            layer.open({
                type: 2
                , title: '编辑用户'
                , content: '/people/add_people'
                , maxmin: true
                , area: [$(window).width() * 0.75 + 'px', $(window).height() * 0.75 + 'px']
                , btn: ['确定', '取消']
                , yes: function (index, layero) {
                    var iframeWindow = window['layui-layer-iframe' + index]
                        , submitID = 'LAY-user-front-submit'
                        , submit = layero.find('iframe').contents().find('#' + submitID);

                    //监听提交
                    iframeWindow.layui.form.on('submit(' + submitID + ')', function (data) {
                        var field = data.field; //获取提交的字段

                        //提交 Ajax 成功后，静态更新表格中的数据
                        $.ajax({
                            url: '/people/update',
                            data: field,
                            dataType: 'json',
                            async: false,
                            type: 'post',
                            success: function (res) {
                                if (res.success) {
                                    table.reload('LAY-user-manage'); //数据刷新
                                    layer.close(index); //关闭弹层
                                }
                                layer.msg(res.message);
                            }
                        });
                    });

                    submit.trigger('click');
                }
                , success: function (layero, index) {

                }
            });
        }
    });

    //管理员管理
    table.render({
        elem: '#LAY-user-back-manage',
        url: '/user/query_users', //模拟接口
        method: 'post',    //请求方式
        contentType: 'application/json',  //请求数据类型
        page: true,   //是否分页，传输到后台当前页数是page（变量名），数据条数是limit（变量名）
        limit: 15,    //设置分页数
        limits: [15, 30, 50, 100],   //自定义分页数
        cols: [[
            {field: 'login_name', title: '登录名'}
            , {field: 'name', title: '姓名'}
            , {field: 'gender', title: '性别'}
            , {field: 'age', title: '年龄'}
            , {
                field: 'status', title: '状态', templet: function (res) {
                    var type = res.status;
                    if (type == 0) {
                        return '无效';
                    } else if (type == 1) {
                        return '有效';
                    } else {
                        return '';
                    }
                }
            }
            // ,{field: 'role', title: '角色'}
            , {field: 'create_time', title: '创建时间', sort: true}
            , {title: '操作', width: 150, align: 'center', fixed: 'right', toolbar: '#table-useradmin-admin'}
        ]]
    });

    //监听工具条
    table.on('tool(LAY-user-back-manage)', function (obj) {
        var data = obj.data;
        if (obj.event === 'del') {
            layer.confirm('确定删除此管理员？', function (index) {
                $.post('/user/delete', {id: data.id}, function (res) {
                    if (res.success) {
                        obj.del();
                        layer.close(index);
                    }
                    layer.msg(res.message);
                }, 'json');
                obj.del();
                layer.close(index);
            });
        } else if (obj.event === 'edit') {
            var tr = $(obj.tr);
            window.user = data;
            layer.open({
                type: 2
                , title: '编辑管理员'
                , content: '/admin/add_user'
                , area: ['420px', '420px']
                , btn: ['确定', '取消']
                , yes: function (index, layero) {
                    var iframeWindow = window['layui-layer-iframe' + index]
                        , submitID = 'LAY-user-back-submit'
                        , submit = layero.find('iframe').contents().find('#' + submitID);

                    //监听提交
                    iframeWindow.layui.form.on('submit(' + submitID + ')', function (data) {
                        var field = data.field; //获取提交的字段

                        //提交 Ajax 成功后，静态更新表格中的数据
                        $.ajax({
                            url: '/user/update',
                            data: field,
                            dataType: 'json',
                            async: false,
                            type: 'post',
                            success: function (data) {
                                if (data.success) {
                                    layer.msg(data.message);
                                    table.reload('LAY-user-back-manage'); //数据刷新
                                    layer.close(index); //关闭弹层
                                } else {
                                    layer.msg(data.message);
                                }
                            }
                        });
                    });

                    submit.trigger('click');
                }
                , success: function (layero, index) {

                }
            })
        }
    });

    // //角色管理
    // table.render({
    //   elem: '#LAY-user-back-role'
    //   ,url: layui.setter.base + 'json/useradmin/role.js' //模拟接口
    //   ,cols: [[
    //     {type: 'checkbox', fixed: 'left'}
    //     ,{field: 'id', width: 80, title: 'ID', sort: true}
    //     ,{field: 'rolename', title: '角色名'}
    //     ,{field: 'limits', title: '拥有权限'}
    //     ,{field: 'descr', title: '具体描述'}
    //     ,{title: '操作', width: 150, align: 'center', fixed: 'right', toolbar: '#table-useradmin-admin'}
    //   ]]
    //   ,text: '对不起，加载出现异常！'
    // });
    //
    // //监听工具条
    // table.on('tool(LAY-user-back-role)', function(obj){
    //   var data = obj.data;
    //   if(obj.event === 'del'){
    //     layer.confirm('确定删除此角色？', function(index){
    //       obj.del();
    //       layer.close(index);
    //     });
    //   }else if(obj.event === 'edit'){
    //     var tr = $(obj.tr);
    //
    //     layer.open({
    //       type: 2
    //       ,title: '编辑角色'
    //       ,content: '../../../views/user/administrators/roleform.jsp'
    //       ,area: ['500px', '480px']
    //       ,btn: ['确定', '取消']
    //       ,yes: function(index, layero){
    //         var iframeWindow = window['layui-layer-iframe'+ index]
    //         ,submit = layero.find('iframe').contents().find("#LAY-user-role-submit");
    //
    //         //监听提交
    //         iframeWindow.layui.form.on('submit(LAY-user-role-submit)', function(data){
    //           var field = data.field; //获取提交的字段
    //
    //           //提交 Ajax 成功后，静态更新表格中的数据
    //           //$.ajax({});
    //           table.reload('LAY-user-back-role'); //数据刷新
    //           layer.close(index); //关闭弹层
    //         });
    //
    //         submit.trigger('click');
    //       }
    //       ,success: function(layero, index){
    //
    //       }
    //     })
    //   }
    // });

    exports('useradmin', {})
});
