/**

 @Name：layuiAdmin 用户管理 管理员管理 角色管理
 @Author：star1029
 @Site：http://www.layui.com/admin/
 @License：LPPL
    
 */


layui.define(['table', 'form'], function(exports){
  var $ = layui.$
  ,table = layui.table
  ,form = layui.form;

  //用户管理
  table.render({
    elem: '#LAY-user-manage',
    url: '/people/findPage',
    method:'post',
    contentType: 'application/json',
    cols: [[
      // {type: 'checkbox', fixed: 'left'}
      {field: 'id', width: 100, title: 'ID', sort: true, style:'display:none;'}
      ,{field: 'name', title: '用户名', minWidth: 100}
      // ,{field: 'avatar', title: '头像', width: 100, templet: '#imgTpl'}
      ,{field: 'phone', title: '手机'}
      // ,{field: 'email', title: '邮箱'}
      ,{field: 'gender', width: 80, title: '性别'}
      ,{
        field: 'type', title: '人员类型', templet: function (res) {
           var type = res.type;
           if(type == 1){
             return '教职员工';
           }else if(type == 2){
             return '教授';
           }else if(type == 3){
             return '学生';
           }else if(type == 4){
             return '校友';
           }else {
            return '';
          }
        }
      }
      ,{field: 'createtime', title: '创建时间', sort: true}
      ,{field: 'status', title: '状态',  templet: function (res) {
          var type = res.status;
          if(type == 0){
            return '无效';
          }else if(type == 1){
            return '有效';
          }else{
            return '';
          }
        }
      }
      ,{title: '操作', width: 150, align:'center', fixed: 'right', toolbar: '#table-useradmin-webuser'}
    ]],
    page: true,
    limit: 15,
    limits: [15,30,50,100],
    height: 'full-220',
    text: '对不起，加载出现异常！',
    done: function(res, curr, count){
      //如果是异步请求数据方式，res即为你接口返回的信息。
      //如果是直接赋值的方式，res即为：{data: [], count: 99} data为当前页数据、count为数据总长度

    }
  });

  //监听工具条
  table.on('tool(LAY-user-manage)', function(obj){
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
      window.people=data;
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
                  table.reload('LAY-user-manage'); //数据刷新
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
    }
  });

  //管理员管理
  table.render({
    elem: '#LAY-user-back-manage'
    ,url: layui.setter.base + 'json/useradmin/mangadmin.js' //模拟接口
    ,cols: [[
      {type: 'checkbox', fixed: 'left'}
      ,{field: 'id', width: 80, title: 'ID', sort: true, style:'display:none;'}
      ,{field: 'loginname', title: '登录名'}
      ,{field: 'telphone', title: '手机'}
      ,{field: 'email', title: '邮箱'}
      // ,{field: 'role', title: '角色'}
      ,{field: 'jointime', title: '加入时间', sort: true}
      ,{field: 'check', title:'审核状态', templet: '#buttonTpl', minWidth: 80, align: 'center'}
      ,{title: '操作', width: 150, align: 'center', fixed: 'right', toolbar: '#table-useradmin-admin'}
    ]]
    ,text: '对不起，加载出现异常！'
  });
  
  //监听工具条
  table.on('tool(LAY-user-back-manage)', function(obj){
    var data = obj.data;
    if(obj.event === 'del'){
      layer.prompt({
        formType: 1
        ,title: '敏感操作，请验证口令'
      }, function(value, index){
        layer.close(index);
        layer.confirm('确定删除此管理员？', function(index){
          console.log(obj)
          obj.del();
          layer.close(index);
        });
      });
    }else if(obj.event === 'edit'){
      var tr = $(obj.tr);

      layer.open({
        type: 2
        ,title: '编辑管理员'
        ,content: '../../../views/user/administrators/adminform.jsp'
        ,area: ['420px', '420px']
        ,btn: ['确定', '取消']
        ,yes: function(index, layero){
          var iframeWindow = window['layui-layer-iframe'+ index]
          ,submitID = 'LAY-user-back-submit'
          ,submit = layero.find('iframe').contents().find('#'+ submitID);

          //监听提交
          iframeWindow.layui.form.on('submit('+ submitID +')', function(data){
            var field = data.field; //获取提交的字段
            
            //提交 Ajax 成功后，静态更新表格中的数据
            //$.ajax({});
            table.reload('LAY-user-front-submit'); //数据刷新
            layer.close(index); //关闭弹层
          });  
          
          submit.trigger('click');
        }
        ,success: function(layero, index){           
          
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