package com.vcl.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.vcl.dao.mapper.BannerMapper;
import com.vcl.dao.mapper.SummweCampMapper;
import com.vcl.pojo.PageResult;
import com.vcl.pojo.Banner;
import com.vcl.pojo.SummweCamp;
import com.vcl.service.BannerService;
import com.vcl.service.CampService;
import com.vcl.utils.DateUtil;
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
	public PageResult findPage(Map map) {
		PageHelper.startPage(Integer.parseInt(map.get("page").toString()), Integer.parseInt(map.get("limit").toString()));
		List<Banner> banners = bannerMapper.selectByExample(map);
		PageInfo pageInfo = new PageInfo(banners);
		return new PageResult(pageInfo.getTotal(), banners, 0, "");
	}

	/**
	 * 增加
	 */
	@Override
	public void add(Banner banner) {
		banner.setCreateTime(DateUtil.getDate(DateUtil.DateFormat5));
		bannerMapper.insert(banner);
	}

	
	/**
	 * 修改
	 */
	@Override
	public void update(Banner banner){
		bannerMapper.updateByPrimaryKey(banner);
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
	public void delete_banner(Long id) {
		bannerMapper.deleteByPrimaryKey(id);
	}


	@Override
	public PageResult findPage(Map banner, int pageNum, int pageSize) {
		PageHelper.startPage(pageNum, pageSize);

		Page<Banner> page= (Page<Banner>)bannerMapper.selectByExample(banner);
		return new PageResult(page.getTotal(), page.getResult());
	}
	
}
