package com.vcl.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.vcl.dao.mapper.BannerMapper;
import com.vcl.dao.mapper.SummweCampMapper;
import com.vcl.pojo.PageResult;
import com.vcl.pojo.Banner;
import com.vcl.service.BannerService;
import com.vcl.service.CampService;
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
public class BannerServiceImpl implements BannerService {

	@Autowired
	private BannerMapper bannerMapper;
	
	/**
	 * 查询全部
	 */
	@Override
	public List<Banner> findAll(Map map) {
		return bannerMapper.selectByExample(map);
	}

	/**
	 * 按分页查询
	 */
	@Override
	public PageResult findPage(int pageNum, int pageSize) {
		PageHelper.startPage(pageNum, pageSize);
		Page<Banner> page=   (Page<Banner>) bannerMapper.selectByExample(null);
		return new PageResult(page.getTotal(), page.getResult());
	}

	/**
	 * 增加
	 */
	@Override
	public void add(Banner camp) {
		bannerMapper.insert(camp);		
	}

	
	/**
	 * 修改
	 */
	@Override
	public void update(Banner camp){
		bannerMapper.updateByPrimaryKey(camp);
	}	
	
	/**
	 * 根据ID获取实体
	 * @param id
	 * @return
	 */
	@Override
	public Banner findOne(Long id){
		return bannerMapper.selectByPrimaryKey(id);
	}

	/**
	 * 批量删除
	 */
	@Override
	public void delete(Long[] ids) {
		for(Long id:ids){
			bannerMapper.deleteByPrimaryKey(id);
		}		
	}
	
	
		@Override
	public PageResult findPage(Map banner, int pageNum, int pageSize) {
		PageHelper.startPage(pageNum, pageSize);

		Page<Banner> page= (Page<Banner>)bannerMapper.selectByExample(banner);
		return new PageResult(page.getTotal(), page.getResult());
	}
	
}
