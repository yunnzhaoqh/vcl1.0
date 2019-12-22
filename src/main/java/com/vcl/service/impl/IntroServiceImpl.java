package com.vcl.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.vcl.dao.mapper.BannerMapper;
import com.vcl.dao.mapper.IntroMapper;
import com.vcl.pojo.Intro;
import com.vcl.pojo.PageResult;
import com.vcl.service.BannerService;
import com.vcl.service.IntroService;
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
public class IntroServiceImpl implements IntroService {

	@Autowired
	private IntroMapper introMapper;
	
	/**
	 * 查询全部
	 */
	@Override
	public List<Intro> findAll() {
		return introMapper.selectByExample(null);
	}

	/**
	 * 按分页查询
	 */
	@Override
	public PageResult findPage(int pageNum, int pageSize) {
		PageHelper.startPage(pageNum, pageSize);
		Page<Intro> page=   (Page<Intro>) introMapper.selectByExample(null);
		return new PageResult(page.getTotal(), page.getResult());
	}

	/**
	 * 增加
	 */
	@Override
	public void add(Intro camp) {
		introMapper.insert(camp);		
	}

	
	/**
	 * 修改
	 */
	@Override
	public void update(Intro camp){
		introMapper.updateByPrimaryKey(camp);
	}	
	
	/**
	 * 根据ID获取实体
	 * @param id
	 * @return
	 */
	@Override
	public Intro findOne(Long id){
		return introMapper.selectByPrimaryKey(id);
	}

	/**
	 * 批量删除
	 */
	@Override
	public void delete(Long[] ids) {
		for(Long id:ids){
			introMapper.deleteByPrimaryKey(id);
		}		
	}
	
	
		@Override
	public PageResult findPage(Map banner, int pageNum, int pageSize) {
		PageHelper.startPage(pageNum, pageSize);

		Page<Intro> page= (Page<Intro>)introMapper.selectByExample(banner);
		return new PageResult(page.getTotal(), page.getResult());
	}
	
}
