package com.zqh.cvl.service;
import java.util.List;
import java.util.Map;

import com.vcl.pojo.PageResult;
import com.vcl.pojo.Reference;

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
	public List<Reference> findAll(Map map);
	
	
	/**
	 * 返回分页列表
	 * @return
	 */
	public PageResult findPage(Map map);
	
	
	/**
	 * 增加
	*/
	public void add(Reference tbReference);
	
	
	/**
	 * 修改
	 */
	public void update(Reference tbReference);
	

	/**
	 * 根据ID获取实体
	 * @param id
	 * @return
	 */
	public Reference findOne(Long id);
	
	
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
	public PageResult findPage(Reference tbReference, int pageNum, int pageSize);

    void delete_reference(Long id);
}
