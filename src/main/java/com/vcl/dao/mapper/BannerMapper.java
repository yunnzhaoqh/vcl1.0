package com.vcl.dao.mapper;

import com.vcl.pojo.Banner;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface BannerMapper {
    List<Banner> selectByExample(Map map);

    int insert(Banner courses);

    int updateByPrimaryKey(Banner courses);

    Banner selectByPrimaryKey(@Param("ID") Long id);

    int deleteByPrimaryKey(@Param("ID") Long id);
}
