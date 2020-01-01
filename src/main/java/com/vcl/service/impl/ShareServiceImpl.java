package com.vcl.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.vcl.dao.mapper.ShareMapper;
import com.vcl.pojo.PageResult;
import com.vcl.pojo.Share;
import com.vcl.service.ShareService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class ShareServiceImpl implements ShareService {

    @Autowired
    private ShareMapper shareMapper;

    @Override
    public PageResult<Share> query_share(Map map) {
        PageHelper.startPage(Integer.parseInt(map.get("page").toString()), Integer.parseInt(map.get("limit").toString()));
        List<Share> shares = shareMapper.selectByExample(map);
        PageInfo pageInfo = new PageInfo(shares);
        return new PageResult(pageInfo.getTotal(), shares, 0 ,"");
    }

    @Override
    public void add(Share share) {
        shareMapper.insert(share);
    }

    @Override
    public void update(Share share) {
        shareMapper.update(share);
    }

    @Override
    public void delete(Long id) {
        shareMapper.deleteByPrimaryKey(id);
    }
}
