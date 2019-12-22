package com.vcl.service;

import com.vcl.pojo.Collaboration;
import com.vcl.pojo.PageResult;

import java.util.List;
import java.util.Map;

/**
 * 服务层接口
 * @author Administrator
 *
 */
public interface CollaborationService {

	/**
	 * 返回全部列表
	 * @return
	 */
	public List<Collaboration> findAll(Map map);
	
	
	/**
	 * 返回分页列表
	 * @return
	 */
	public PageResult findPage(int pageNum, int pageSize);
	
	
	/**
	 * 增加
	*/
	public void add(Collaboration camp);
	
	
	/**
	 * 修改
	 */
	public void update(Collaboration camp);
	

	/**
	 * 根据ID获取实体
	 * @param id
	 * @return
	 */
	public Collaboration findOne(Long id);
	
	
	/**
	 * 批量删除
	 * @param ids
	 */
	public void delete(Long[] ids);

	/**
	 * 分页
	 * @param pageNum 当前页 码
	 * @param pageSize 每页记录数
	 * @return
	 */
	public PageResult findPage(Map camp, int pageNum, int pageSize);
	
}
