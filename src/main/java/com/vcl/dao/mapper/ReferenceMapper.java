package com.vcl.dao.mapper;

import com.vcl.pojo.Reference;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface ReferenceMapper {

    List<Reference> selectByExample(Object o);

    List<Reference> query_reference(Map map);

    int insert(Reference tbReference);

    int updateByPrimaryKey(Reference tbReference);

    Reference selectByPrimaryKey(Long id);

    int deleteByPrimaryKey(Long id);
}
