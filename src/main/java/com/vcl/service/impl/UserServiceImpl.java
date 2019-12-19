package com.vcl.service.impl;

import com.vcl.dao.mapper.UserMapper;
import com.vcl.pojo.User;
import com.vcl.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    UserMapper userMapper;

    @Override
    public User getUser(String login_name) {
        return userMapper.getUser(login_name);
    }
}
