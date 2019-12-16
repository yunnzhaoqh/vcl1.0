package com.vcl.dao.mapper;

import com.vcl.pojo.Media;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MediaMapper {
    List<Media> selectByExample(Object o);

    int insert(Media media);

    int updateByPrimaryKey(Media media);

    Media selectByPrimaryKey(Long id);

    int deleteByPrimaryKey(Long id);
}
