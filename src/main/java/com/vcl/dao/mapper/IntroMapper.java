package com.vcl.dao.mapper;

import com.vcl.pojo.Intro;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface IntroMapper {
    List<Intro> selectByExample(Map map);

    int insert(Intro courses);

    int updateByPrimaryKey(Intro intro);

    Intro selectByPrimaryKey(@Param("ID") Long id);

    int deleteByPrimaryKey(@Param("ID") Long id);
}
