package com.vcl.service.impl;
import java.util.List;
import java.util.Map;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.vcl.dao.mapper.ReferenceMapper;
import com.vcl.pojo.PageResult;
import org.springframework.beans.factory.annotation.Autowired;
import com.zqh.cvl.service.ReferenceService;

import org.springframework.stereotype.Service;
import com.vcl.pojo.TbReference;
/**
 * 服务实现层
 * @author Administrator
 *
 */
@Service
public class ReferenceServiceImpl implements ReferenceService {

	@Autowired
	private ReferenceMapper referenceMapper;
	
	/**
	 * 查询全部
	 */
	@Override
	public List<TbReference> findAll(Map map) {
		return referenceMapper.selectByExample(map);
	}

	/**
	 * 按分页查询
	 */
	@Override
	public PageResult findPage(int pageNum, int pageSize) {
		PageHelper.startPage(pageNum, pageSize);
		Page<TbReference> page=   (Page<TbReference>) referenceMapper.selectByExample(null);
		return new PageResult(page.getTotal(), page.getResult());
	}

	/**
	 * 增加
	 */
	@Override
	public void add(TbReference tbReference) {
		referenceMapper.insert(tbReference);
	}

	
	/**
	 * 修改
	 */
	@Override
	public void update(TbReference tbReference){
		referenceMapper.updateByPrimaryKey(tbReference);
	}	
	
	/**
	 * 根据ID获取实体
	 * @param id
	 * @return
	 */
	@Override
	public TbReference findOne(Long id){
		return referenceMapper.selectByPrimaryKey(id);
	}

	/**
	 * 批量删除
	 */
	@Override
	public void delete(Long[] ids) {
		for(Long id:ids){
			referenceMapper.deleteByPrimaryKey(id);
		}		
	}
	
	
		@Override
	public PageResult findPage(TbReference tbReference, int pageNum, int pageSize) {
		PageHelper.startPage(pageNum, pageSize);
		Page<TbReference> page= (Page<TbReference>)referenceMapper.selectByExample(tbReference);
		return new PageResult(page.getTotal(), page.getResult());
	}
	
}
