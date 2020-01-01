package com.vcl.dao.mapper;

import com.vcl.pojo.Share;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface ShareMapper {

    List<Share> selectByExample(Map map);

    int insert(Share share);

    int update(Share share);

    Share selectByPrimaryKey(@Param("id") Long id);

    int deleteByPrimaryKey(@Param("id") Long id);
}
