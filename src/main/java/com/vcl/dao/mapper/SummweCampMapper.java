package com.vcl.dao.mapper;

import com.vcl.pojo.SummweCamp;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface SummweCampMapper {
    
    List<SummweCamp> selectByExample(Map map);

    int insert(SummweCamp camp);

    int updateByPrimaryKey(SummweCamp camp);

    SummweCamp selectByPrimaryKey(Long id);

    int deleteByPrimaryKey(Long id);
}
