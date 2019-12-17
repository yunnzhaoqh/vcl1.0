package com.vcl.service.impl;
import java.util.List;
import java.util.Map;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.vcl.dao.mapper.CoursesMapper;
import com.vcl.pojo.Courses;
import com.vcl.pojo.PageResult;
import com.vcl.service.CoursesService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 服务实现层
 * @author Administrator
 *
 */
@Service
public class CoursesServiceImpl implements CoursesService {

	@Autowired
	private CoursesMapper coursesMapper;
	
	/**
	 * 查询全部
	 */
	@Override
	public List<Courses> findAll() {
		return coursesMapper.selectByExample(null);
	}

	/**
	 * 按分页查询
	 */
	@Override
	public PageResult findPage(int pageNum, int pageSize) {
		PageHelper.startPage(pageNum, pageSize);
		Page<Courses> page=   (Page<Courses>) coursesMapper.selectByExample(null);
		return new PageResult(page.getTotal(), page.getResult());
	}

	/**
	 * 增加
	 */
	@Override
	public void add(Courses courses) {
		coursesMapper.insert(courses);		
	}

	
	/**
	 * 修改
	 */
	@Override
	public void update(Courses courses){
		coursesMapper.updateByPrimaryKey(courses);
	}	
	
	/**
	 * 根据ID获取实体
	 * @param id
	 * @return
	 */
	@Override
	public Courses findOne(Long id){
		return coursesMapper.selectByPrimaryKey(id);
	}

	/**
	 * 批量删除
	 */
	@Override
	public void delete(Long[] ids) {
		for(Long id:ids){
			coursesMapper.deleteByPrimaryKey(id);
		}		
	}
	
	
		@Override
	public PageResult findPage(Map courses, int pageNum, int pageSize) {
		PageHelper.startPage(pageNum, pageSize);
		
		Page<Courses> page= (Page<Courses>)coursesMapper.selectByExample(courses);
		return new PageResult(page.getTotal(), page.getResult());
	}
	
}
