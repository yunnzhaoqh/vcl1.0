package com.vcl.dao.mapper;

import com.vcl.pojo.Media;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface MediaMapper {
    List<Media> selectByExample(Map map);

    int insert(Media media);

    int updateByPrimaryKey(Media media);

    Media selectByPrimaryKey(Long id);

    int deleteByPrimaryKey(Long id);
}
