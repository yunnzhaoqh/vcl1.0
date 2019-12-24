layui.define(['table', 'form'], function (exports) {
    var $ = layui.$,
        table = layui.table,
        form = layui.form;

    table.render({
        elem: '#LAY-project-manage',
        url: '/project/findPage',
        method:'post',    //请求方式
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
            {field: 'type', title: '类型', sort: true, minWidth: 100,},
            {field: 'status', title: '状态', sort: true, minWidth: 20, templet: function (res) {
                    var type = res.status;
                    if(type == 0){
                        return '无效';
                    }else if(type == 1){
                        return '有效';
                    }else{
                        return '';
                    }
                }
            },
            {title: '操作', width: 150, align: 'center', fixed: 'right', toolbar: '#LAY-project-manage'}
        ]],
        page: true,   //是否分页，传输到后台当前页数是page（变量名），数据条数是limit（变量名）
        limit: 15,    //设置分页数
        limits: [15,30,50,100],   //自定义分页数
        height: 'full-220',
        text: '对不起，加载出现异常！'
    });

    //监听工具条
    table.on('tool(LAY-project-manage)', function(obj){
        var data = obj.data;
        if(obj.event === 'del'){
            layer.confirm('是否确认删除此人员', function(index){
                $.post('/people/delete_people',{id: data.id},function (res) {
                    if(res.success){
                        obj.del();
                        layer.close(index);
                    }
                    layer.msg(res.massage);
                },'json');
            });
        } else if(obj.event === 'edit'){
            var tr = $(obj.tr);
            window.project = data;
            layer.open({
                type: 2
                ,title: '编辑用户'
                ,content: '/people/add_people'
                ,maxmin: true
                ,area: ['500px', '450px']
                ,btn: ['确定', '取消']
                ,yes: function(index, layero){
                    var iframeWindow = window['layui-layer-iframe'+ index]
                        ,submitID = 'LAY-user-front-submit'
                        ,submit = layero.find('iframe').contents().find('#'+ submitID);

                    //监听提交
                    iframeWindow.layui.form.on('submit('+ submitID +')', function(data){
                        var field = data.field; //获取提交的字段

                        //提交 Ajax 成功后，静态更新表格中的数据
                        $.ajax({
                            url: '/people/update',
                            data: field,
                            dataType: 'json',
                            async: false,
                            type: 'post',
                            success: function (res) {
                                if(res.success){
                                    table.reload('LAY-project-manage'); //数据刷新
                                    layer.close(index); //关闭弹层
                                }
                                layer.msg(res.message);
                            }
                        });
                    });

                    submit.trigger('click');
                }
                ,success: function(layero, index){

                }
            });
        }else if(obj.event === 'view'){

        }
    });

    exports('project', {})
});