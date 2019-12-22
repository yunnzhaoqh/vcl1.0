package com.vcl.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.vcl.dao.mapper.UserMapper;
import com.vcl.pojo.PageResult;
import com.vcl.pojo.User;
import com.vcl.service.UserService;
import com.vcl.utils.DateUtil;
import com.vcl.utils.MD5;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper userMapper;

    @Override
    public User getUser(String login_name) {
        return userMapper.getUser(login_name);
    }

    @Override
    public PageResult<User> query_user_list(Map map) {
        PageHelper.startPage(Integer.parseInt(map.get("page").toString()), Integer.parseInt(map.get("limit").toString()));
        List<User> users = userMapper.query_user_list(map);
        PageInfo<User> pageInfo = new PageInfo<>(users);
        return new PageResult<>(pageInfo.getTotal(),users,0,"");
    }

    @Override
    public int insert_user(User user) {
        user.setCreate_time(DateUtil.getDate(DateUtil.DateFormat5));
        user.setStatus(1);
        String pwd = MD5.stringToMD5("000000"); //默认密码md5加密
        pwd = new Md5Hash(pwd,user.getLogin_name()).toString();   //加密加盐
        user.setPassword(pwd);
        return userMapper.insert_user(user);
    }

    @Override
    public int update_user(User user) {
        return userMapper.update_user(user);
    }

    @Override
    public int delete_user(Integer id) {
        return userMapper.delete_user(id);
    }
}
