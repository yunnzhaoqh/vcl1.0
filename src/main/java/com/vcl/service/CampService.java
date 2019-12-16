package com.vcl.service;
import java.util.List;

import com.vcl.pojo.PageResult;
import com.vcl.pojo.SummweCamp;

/**
 * 服务层接口
 * @author Administrator
 *
 */
public interface CampService {

	/**
	 * 返回全部列表
	 * @return
	 */
	public List<SummweCamp> findAll();
	
	
	/**
	 * 返回分页列表
	 * @return
	 */
	public PageResult findPage(int pageNum, int pageSize);
	
	
	/**
	 * 增加
	*/
	public void add(SummweCamp camp);
	
	
	/**
	 * 修改
	 */
	public void update(SummweCamp camp);
	

	/**
	 * 根据ID获取实体
	 * @param id
	 * @return
	 */
	public SummweCamp findOne(Long id);
	
	
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
	public PageResult findPage(SummweCamp camp, int pageNum,int pageSize);
	
}
