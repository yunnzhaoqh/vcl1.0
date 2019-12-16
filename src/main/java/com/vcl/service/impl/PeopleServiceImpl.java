package com.vcl.service.impl;
import java.util.List;

import com.vcl.dao.mapper.PeopleMapper;
import com.vcl.pojo.PageResult;
import com.vcl.pojo.People;
import com.vcl.service.PeopleService;
import org.springframework.beans.factory.annotation.Autowired;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.stereotype.Service;


/**
 * 服务实现层
 * @author Administrator
 *
 */
@Service
public class PeopleServiceImpl implements PeopleService {

	@Autowired
	private PeopleMapper peopleMapper;
	
	/**
	 * 查询全部
	 */
	@Override
	public List<People> findAll() {
		return peopleMapper.selectByExample(null);
	}

	/**
	 * 按分页查询
	 */
	@Override
	public PageResult findPage(int pageNum, int pageSize) {
		PageHelper.startPage(pageNum, pageSize);		
		Page<People> page=   (Page<People>) peopleMapper.selectByExample(null);
		return new PageResult(page.getTotal(), page.getResult());
	}

	/**
	 * 增加
	 */
	@Override
	public void add(People people) {
		peopleMapper.insert(people);		
	}

	
	/**
	 * 修改
	 */
	@Override
	public void update(People people){
		peopleMapper.updateByPrimaryKey(people);
	}	
	
	/**
	 * 根据ID获取实体
	 * @param id
	 * @return
	 */
	@Override
	public People findOne(Long id){
		return peopleMapper.selectByPrimaryKey(id);
	}

	/**
	 * 批量删除
	 */
	@Override
	public void delete(Long[] ids) {
		for(Long id:ids){
			peopleMapper.deleteByPrimaryKey(id);
		}		
	}
	
	
		@Override
	public PageResult findPage(People people, int pageNum, int pageSize) {
		PageHelper.startPage(pageNum, pageSize);

		Page<People> page= (Page<People>)peopleMapper.selectByExample(people);
		return new PageResult(page.getTotal(), page.getResult());
	}
	
}
