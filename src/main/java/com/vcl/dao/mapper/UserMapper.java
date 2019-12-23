package com.vcl.dao.mapper;

import com.vcl.pojo.User;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface UserMapper {

    List<User> query_user_list(Map map);

    int insert_user(User user);

    int update_user(User user);

    int delete_user(@Param("id") Integer id);

    User getUser(@Param("login_name") String login_name);

    int password(Map map);
}
