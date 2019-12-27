package com.vcl.dao.mapper;

import com.vcl.pojo.People;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface PeopleMapper {
    List<People> selectByExample(Object o);

    int insert(People people);

    int updateByPrimaryKey(People people);

    People selectByPrimaryKey(Long id);

    int deleteByPrimaryKey(Long id);

    List<People> query_professor();
}
