package com.vcl.service;
import java.util.List;

import com.vcl.pojo.Media;
import com.vcl.pojo.PageResult;
/**
 * 服务层接口
 * @author Administrator
 *
 */
public interface MediaService {

	/**
	 * 返回全部列表
	 * @return
	 */
	public List<Media> findAll();
	
	
	/**
	 * 返回分页列表
	 * @return
	 */
	public PageResult findPage(int pageNum, int pageSize);
	
	
	/**
	 * 增加
	*/
	public void add(Media media);
	
	
	/**
	 * 修改
	 */
	public void update(Media media);
	

	/**
	 * 根据ID获取实体
	 * @param id
	 * @return
	 */
	public Media findOne(Long id);
	
	
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
	public PageResult findPage(Media media, int pageNum,int pageSize);
	
}