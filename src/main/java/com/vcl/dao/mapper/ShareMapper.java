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

    int updateByPrimaryKey(Share share);

    Share selectByPrimaryKey(Long id);

    int deleteByPrimaryKey(Long id);
}
