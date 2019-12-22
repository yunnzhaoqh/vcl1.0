package com.zqh.cvl.service;
import java.util.List;
import java.util.Map;

import com.vcl.pojo.PageResult;
import com.vcl.pojo.TbReference;

/**
 * 服务层接口
 * @author Administrator
 *
 */
public interface ReferenceService {

	/**
	 * 返回全部列表
	 * @return
	 */
	public List<TbReference> findAll(Map map);
	
	
	/**
	 * 返回分页列表
	 * @return
	 */
	public PageResult findPage(int pageNum, int pageSize);
	
	
	/**
	 * 增加
	*/
	public void add(TbReference tbReference);
	
	
	/**
	 * 修改
	 */
	public void update(TbReference tbReference);
	

	/**
	 * 根据ID获取实体
	 * @param id
	 * @return
	 */
	public TbReference findOne(Long id);
	
	
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
	public PageResult findPage(TbReference tbReference, int pageNum, int pageSize);
	
}
