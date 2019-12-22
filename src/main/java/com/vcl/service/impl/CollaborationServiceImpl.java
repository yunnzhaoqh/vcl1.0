package com.vcl.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.vcl.dao.mapper.BannerMapper;
import com.vcl.dao.mapper.CollaborationMapper;
import com.vcl.pojo.Collaboration;
import com.vcl.pojo.PageResult;
import com.vcl.service.BannerService;
import com.vcl.service.CollaborationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * 服务实现层
 * @author Administrator
 *
 */
@Service
public class CollaborationServiceImpl implements CollaborationService {

	@Autowired
	private CollaborationMapper collaborationMapper;
	
	/**
	 * 查询全部
	 */
	@Override
	public List<Collaboration> findAll(Map map) {
		return collaborationMapper.selectByExample(map);
	}

	/**
	 * 按分页查询
	 */
	@Override
	public PageResult findPage(int pageNum, int pageSize) {
		PageHelper.startPage(pageNum, pageSize);
		Page<Collaboration> page=   (Page<Collaboration>) collaborationMapper.selectByExample(null);
		return new PageResult(page.getTotal(), page.getResult());
	}

	/**
	 * 增加
	 */
	@Override
	public void add(Collaboration camp) {
		collaborationMapper.insert(camp);		
	}

	
	/**
	 * 修改
	 */
	@Override
	public void update(Collaboration camp){
		collaborationMapper.updateByPrimaryKey(camp);
	}	
	
	/**
	 * 根据ID获取实体
	 * @param id
	 * @return
	 */
	@Override
	public Collaboration findOne(Long id){
		return collaborationMapper.selectByPrimaryKey(id);
	}

	/**
	 * 批量删除
	 */
	@Override
	public void delete(Long[] ids) {
		for(Long id:ids){
			collaborationMapper.deleteByPrimaryKey(id);
		}		
	}
	
	
		@Override
	public PageResult findPage(Map banner, int pageNum, int pageSize) {
		PageHelper.startPage(pageNum, pageSize);

		Page<Collaboration> page= (Page<Collaboration>)collaborationMapper.selectByExample(banner);
		return new PageResult(page.getTotal(), page.getResult());
	}
	
}
