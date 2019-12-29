package com.vcl.dao.mapper;

import com.vcl.pojo.Project;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface ProjectMapper {
    List<Project> selectByExample(Object o);

    int insert(Project project);

    int updateByPrimaryKey(Project project);

    Project selectByPrimaryKey(Long id);

    int deleteByPrimaryKey(Long id);

    List<Project> query_publication(Map map);

    List<Project> query_activities(Map map);
}
