package com.vcl.service.impl;
import java.util.List;
import java.util.Map;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.vcl.dao.mapper.SummweCampMapper;
import com.vcl.pojo.PageResult;
import com.vcl.pojo.SummweCamp;
import com.vcl.service.CampService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 服务实现层
 * @author Administrator
 *
 */

@Service
public class CampServiceImpl implements CampService {

	@Autowired
	private SummweCampMapper campMapper;
	
	/**
	 * 查询全部
	 */
	@Override
	public List<SummweCamp> findAll(Map map) {
		return campMapper.selectByExample(map);
	}


	/**
	 * 增加
	 */
	@Override
	public void add(SummweCamp camp) {
		campMapper.insert(camp);		
	}

	
	/**
	 * 修改
	 */
	@Override
	public void update(SummweCamp camp){
		campMapper.updateByPrimaryKey(camp);
	}	
	
	/**
	 * 根据ID获取实体
	 * @param id
	 * @return
	 */
	@Override
	public SummweCamp findOne(Long id){
		return campMapper.selectByPrimaryKey(id);
	}

	/**
	 * 批量删除
	 */
	@Override
	public void delete(Long[] ids) {
		for(Long id:ids){
			campMapper.deleteByPrimaryKey(id);
		}		
	}

	@Override
	public PageResult findPage(Map map, int pageNum, int pageSize) {
		PageHelper.startPage(pageNum, pageSize);

		Page<SummweCamp> page= (Page<SummweCamp>)campMapper.selectByExample(map);
		return new PageResult(page.getTotal(), page.getResult());
	}

	@Override
	public PageResult findPage(Map map) {
		PageHelper.startPage(Integer.parseInt(map.get("page").toString()), Integer.parseInt(map.get("limit").toString()));
		List<SummweCamp> camps = campMapper.selectByExample(map);
		PageInfo pageInfo = new PageInfo(camps);
		return new PageResult(pageInfo.getTotal(), camps, 0 , "");
	}

	@Override
	public void delete_summwe_camp(Long id) {
		campMapper.deleteByPrimaryKey(id);
	}

}
