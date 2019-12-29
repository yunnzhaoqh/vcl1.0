package com.vcl.service;

import com.vcl.pojo.Banner;
import com.vcl.pojo.PageResult;

import java.util.List;
import java.util.Map;

/**
 * 服务层接口
 * @author Administrator
 *
 */
public interface BannerService {

	/**
	 * 返回全部列表
	 * @return
	 */
	public List<Banner> findAll(Map map);
	
	
	/**
	 * 返回分页列表
	 * @return
	 */
	public PageResult findPage(Map map);
	
	
	/**
	 * 增加
	*/
	public void add(Banner camp);
	
	
	/**
	 * 修改
	 */
	public void update(Banner camp);
	

	/**
	 * 根据ID获取实体
	 * @param id
	 * @return
	 */
	public Banner findOne(Long id);
	
	
	/**
	 * 批量删除
	 * @param ids
	 */
	public void delete(Long[] ids);

	/**
	 * 批量删除
	 * @param id
	 */
	public void delete_banner(Long id);

	/**
	 * 分页
	 * @param pageNum 当前页 码
	 * @param pageSize 每页记录数
	 * @return
	 */
	public PageResult findPage(Map camp, int pageNum, int pageSize);
	
}
