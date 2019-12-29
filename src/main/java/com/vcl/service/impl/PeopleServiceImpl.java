package com.vcl.service.impl;
import java.util.List;
import java.util.Map;

import com.github.pagehelper.PageInfo;
import com.vcl.dao.mapper.PeopleMapper;
import com.vcl.pojo.PageResult;
import com.vcl.pojo.People;
import com.vcl.service.PeopleService;
import com.vcl.utils.DateUtil;
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
	public List<People> findAll(Map map) {
		return peopleMapper.selectByExample(map);
	}

	/**
	 * 按分页查询
	 */
	@Override
	public PageResult findPage(Map map) {
		PageHelper.startPage(Integer.parseInt(map.get("page").toString()), Integer.parseInt(map.get("limit").toString()));
		List<People> peoples = peopleMapper.selectByExample(map);
		PageInfo<People> pageInfo = new PageInfo<>(peoples);
		return new PageResult(pageInfo.getTotal(),peoples,0,"");
	}

	/**
	 * 增加
	 */
	@Override
	public void add(People people) {
		people.setCreatetime(DateUtil.getDate(DateUtil.DateFormat5));
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

	public int delete_people(long id){
		return peopleMapper.deleteByPrimaryKey(id);
	}
	
	@Override
	public PageResult findPage(People people, int pageNum, int pageSize) {
		PageHelper.startPage(pageNum, pageSize);

		Page<People> page= (Page<People>)peopleMapper.selectByExample(people);
		return new PageResult(page.getTotal(), page.getResult());
	}

	/**
	 * 查询教授
	 * @return
	 */
	@Override
	public List<People> query_professor() {
		return peopleMapper.query_professor();
	}

}
