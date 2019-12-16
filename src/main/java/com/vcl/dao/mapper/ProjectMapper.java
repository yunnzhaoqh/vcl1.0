package com.vcl.dao.mapper;

import com.vcl.pojo.Project;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProjectMapper {
    List<Project> selectByExample(Object o);

    int insert(Project project);

    int updateByPrimaryKey(Project project);

    Project selectByPrimaryKey(Long id);

    int deleteByPrimaryKey(Long id);
}
