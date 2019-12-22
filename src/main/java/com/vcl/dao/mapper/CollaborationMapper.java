package com.vcl.dao.mapper;

import com.vcl.pojo.Collaboration;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface CollaborationMapper {
    List<Collaboration> selectByExample(Map map);

    int insert(Collaboration courses);

    int updateByPrimaryKey(Collaboration courses);

    Collaboration selectByPrimaryKey(@Param("ID") Long id);

    int deleteByPrimaryKey(@Param("ID") Long id);
}
