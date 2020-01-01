package com.vcl.service;

import com.vcl.pojo.PageResult;
import com.vcl.pojo.Share;

import java.util.Map;

public interface ShareService {

    PageResult<Share> query_share(Map map);

    void add(Share share);

    void update(Share share);

    void delete(Long id);

}
