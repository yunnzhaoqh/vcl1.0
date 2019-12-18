package com.vcl.service;
import com.vcl.pojo.PageResult;
import com.vcl.pojo.People;

import java.util.List;
/**
 * 服务层接口
 * @author Administrator
 *
 */
public interface PeopleService {

	/**
	 * 返回全部列表
	 * @return
	 */
	public List<People> findAll();
	
	
	/**
	 * 返回分页列表
	 * @return
	 */
	public PageResult findPage(int pageNum, int pageSize);
	
	
	/**
	 * 增加
	*/
	public void add(People people);
	
	
	/**
	 * 修改
	 */
	public void update(People people);
	

	/**
	 * 根据ID获取实体
	 * @param id
	 * @return
	 */
	public People findOne(Long id);
	
	
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
	public PageResult findPage(People people, int pageNum,int pageSize);
	
}