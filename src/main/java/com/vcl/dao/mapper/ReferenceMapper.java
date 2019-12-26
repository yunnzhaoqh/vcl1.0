package com.vcl.dao.mapper;

import com.vcl.pojo.Reference;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ReferenceMapper {

    List<Reference> selectByExample(Object o);

    int insert(Reference tbReference);

    int updateByPrimaryKey(Reference tbReference);

    Reference selectByPrimaryKey(Long id);

    int deleteByPrimaryKey(Long id);
}
