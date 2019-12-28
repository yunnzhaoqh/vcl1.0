package com.vcl.service.impl;
import java.util.List;
import java.util.Map;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.vcl.dao.mapper.CoursesMapper;
import com.vcl.pojo.Courses;
import com.vcl.pojo.PageResult;
import com.vcl.pojo.Project;
import com.vcl.service.CoursesService;
import com.vcl.utils.DateUtil;
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
	public PageResult findPage(Map map) {
		PageHelper.startPage(Integer.parseInt(map.get("page").toString()), Integer.parseInt(map.get("limit").toString()));
		List<Courses> courses = coursesMapper.selectByExample(map);
		PageInfo pageInfo = new PageInfo(courses);
		return new PageResult(pageInfo.getTotal(), courses, 0 , "");
	}

	/**
	 * 增加
	 */
	@Override
	public void add(Courses courses) {
		courses.setCreatetime(DateUtil.getDate(DateUtil.DateFormat5));
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

	/**
	 * 删除
	 */
	@Override
	public void delete_courses(Long id) {
		coursesMapper.deleteByPrimaryKey(id);
	}

	/**
	 * 关联查询课程列表
	 * @param map
	 * @return
	 */
	@Override
	public PageResult query_courses(Map map) {
		PageHelper.startPage(Integer.parseInt(map.get("page").toString()), Integer.parseInt(map.get("limit").toString()));
		List<Courses> courses = coursesMapper.query_courses(map);
		PageInfo pageInfo = new PageInfo(courses);
		return new PageResult(pageInfo.getTotal(), courses, 0 , "");
	}


	@Override
	public PageResult findPage(Map courses, int pageNum, int pageSize) {
		PageHelper.startPage(pageNum, pageSize);
		
		Page<Courses> page= (Page<Courses>)coursesMapper.selectByExample(courses);
		return new PageResult(page.getTotal(), page.getResult());
	}



}
