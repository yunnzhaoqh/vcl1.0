package com.vcl.service.impl;
import java.util.List;
import java.util.Map;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.vcl.dao.mapper.ReferenceMapper;
import com.vcl.pojo.PageResult;
import com.vcl.pojo.Reference;
import org.springframework.beans.factory.annotation.Autowired;
import com.zqh.cvl.service.ReferenceService;

import org.springframework.stereotype.Service;
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
	public List<Reference> findAll(Map map) {
		return referenceMapper.selectByExample(map);
	}

	/**
	 * 按分页查询
	 */
	@Override
	public PageResult findPage(Map map) {
		PageHelper.startPage(Integer.parseInt(map.get("page").toString()), Integer.parseInt(map.get("limit").toString()));
		List<Reference> references = referenceMapper.selectByExample(null);
		PageInfo pageInfo = new PageInfo(references);
		return new PageResult(pageInfo.getTotal(), references, 0 ,"");
	}

	/**
	 * 增加
	 */
	@Override
	public void add(Reference tbReference) {
		referenceMapper.insert(tbReference);
	}

	
	/**
	 * 修改
	 */
	@Override
	public void update(Reference tbReference){
		referenceMapper.updateByPrimaryKey(tbReference);
	}	
	
	/**
	 * 根据ID获取实体
	 * @param id
	 * @return
	 */
	@Override
	public Reference findOne(Long id){
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

	/**
	 * 批量删除
	 */
	@Override
	public void delete_reference(Long id) {
		referenceMapper.deleteByPrimaryKey(id);
	}
	
	
		@Override
	public PageResult findPage(Reference tbReference, int pageNum, int pageSize) {
		PageHelper.startPage(pageNum, pageSize);
		Page<Reference> page= (Page<Reference>)referenceMapper.selectByExample(tbReference);
		return new PageResult(page.getTotal(), page.getResult());
	}
	
}
