package com.vcl.dao.mapper;

import com.vcl.pojo.Courses;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface CoursesMapper {
    List<Courses> selectByExample(Map map);

    int insert(Courses courses);

    int updateByPrimaryKey(Courses courses);

    Courses selectByPrimaryKey(@Param("id") Long id);

    int deleteByPrimaryKey(@Param("id") Long id);

    List<Courses> query_courses(Map map);
}
