package com.vcl.service.impl;
import java.util.List;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.vcl.dao.mapper.ProjectMapper;
import com.vcl.pojo.PageResult;
import com.vcl.pojo.Project;
import com.vcl.service.ProjectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 服务实现层
 * @author Administrator
 *
 */
@Service
public class ProjectServiceImpl implements ProjectService {

	@Autowired
	private ProjectMapper projectMapper;
	
	/**
	 * 查询全部
	 */
	@Override
	public List<Project> findAll() {
		return projectMapper.selectByExample(null);
	}

	/**
	 * 按分页查询
	 */
	@Override
	public PageResult findPage(int pageNum, int pageSize) {
		PageHelper.startPage(pageNum, pageSize);
		Page<Project> page=   (Page<Project>) projectMapper.selectByExample(null);
		return new PageResult(page.getTotal(), page.getResult());
	}

	/**
	 * 增加
	 */
	@Override
	public void add(Project project) {
		projectMapper.insert(project);		
	}

	
	/**
	 * 修改
	 */
	@Override
	public void update(Project project){
		projectMapper.updateByPrimaryKey(project);
	}	
	
	/**
	 * 根据ID获取实体
	 * @param id
	 * @return
	 */
	@Override
	public Project findOne(Long id){
		return projectMapper.selectByPrimaryKey(id);
	}

	/**
	 * 批量删除
	 */
	@Override
	public void delete(Long[] ids) {
		for(Long id:ids){
			projectMapper.deleteByPrimaryKey(id);
		}		
	}
	
	
		@Override
	public PageResult findPage(Project project, int pageNum, int pageSize) {
		PageHelper.startPage(pageNum, pageSize);
		Page<Project> page= (Page<Project>)projectMapper.selectByExample(project);
		return new PageResult(page.getTotal(), page.getResult());
	}
	
}
