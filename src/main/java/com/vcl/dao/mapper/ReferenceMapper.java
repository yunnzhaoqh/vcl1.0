package com.vcl.dao.mapper;

import com.vcl.pojo.TbReference;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ReferenceMapper {

    List<TbReference> selectByExample(Object o);

    int insert(TbReference tbReference);

    int updateByPrimaryKey(TbReference tbReference);

    TbReference selectByPrimaryKey(Long id);

    int deleteByPrimaryKey(Long id);
}
