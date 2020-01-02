package com.vcl.service;

import com.vcl.pojo.PageResult;
import com.vcl.pojo.Share;

import java.util.List;
import java.util.Map;

public interface ShareService {

    /**
     * 返回全部列表
     * @return
     */
    public List<Share> findAll(Map map);


    /**
     * 返回分页列表
     * @return
     */
    public PageResult findPage(Map map);


    /**
     * 增加
     */
    public void add(Share media);


    /**
     * 修改
     */
    public void update(Share media);


    /**
     * 根据ID获取实体
     * @param id
     * @return
     */
    public Share findOne(Long id);


    /**
     * 批量删除
     * @param ids
     */
    public void delete(Long [] ids);

    /**
     * 分页
     * @param pageNum 当前页 码
     * @param pageSize 每页记录数
     * @return
     */
    public PageResult findPage(Map map, int pageNum,int pageSize);

    int delete_share(Long id);

}
