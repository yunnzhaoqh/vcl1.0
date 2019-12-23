package com.vcl.service;

import com.vcl.pojo.PageResult;
import com.vcl.pojo.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

public interface UserService {
    User getUser(String login_name);

    PageResult<User> query_user_list(Map map);

    int insert_user(User user);

    int update_user(User user);

    int delete_user(@Param("id") Integer id);

    int password(Map map);
}
