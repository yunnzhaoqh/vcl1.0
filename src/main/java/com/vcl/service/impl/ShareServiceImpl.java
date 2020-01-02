package com.vcl.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.vcl.dao.mapper.ShareMapper;
import com.vcl.pojo.PageResult;
import com.vcl.pojo.Share;
import com.vcl.service.ShareService;
import com.vcl.utils.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class ShareServiceImpl implements ShareService {

    @Autowired
    private ShareMapper shareMapper;

    @Override
    public List<Share> findAll(Map map) {
        return shareMapper.selectByExample(map);
    }

    @Override
    public PageResult findPage(Map map) {
        PageHelper.startPage(Integer.parseInt(map.get("page").toString()), Integer.parseInt(map.get("limit").toString()));
        List<Share> shares = shareMapper.selectByExample(map);
        PageInfo pageInfo = new PageInfo(shares);
        return new PageResult(pageInfo.getTotal(), shares, 0 , "");
    }

    @Override
    public void add(Share share) {
        share.setCreatetime(DateUtil.getDate(DateUtil.DateFormat5));
        shareMapper.insert(share);
    }

    @Override
    public void update(Share share) {
        shareMapper.updateByPrimaryKey(share);
    }

    @Override
    public Share findOne(Long id) {
        return shareMapper.selectByPrimaryKey(id);
    }

    @Override
    public void delete(Long[] ids) {
        for(Long id:ids){
            shareMapper.deleteByPrimaryKey(id);
        }
    }

    @Override
    public PageResult findPage(Map map, int pageNum, int pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        Page<Share> page= (Page<Share>)shareMapper.selectByExample(map);
        return new PageResult(page.getTotal(), page.getResult());
    }

    @Override
    public int delete_share(Long id) {
        return shareMapper.deleteByPrimaryKey(id);
    }
}
