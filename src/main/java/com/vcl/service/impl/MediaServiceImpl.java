package com.vcl.service.impl;
import java.util.List;
import java.util.Map;

import com.vcl.dao.mapper.MediaMapper;
import com.vcl.pojo.Media;
import com.vcl.pojo.PageResult;
import com.vcl.service.MediaService;
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
public class MediaServiceImpl implements MediaService {

	@Autowired
	private MediaMapper mediaMapper;
	
	/**
	 * 查询全部
	 */
	@Override
	public List<Media> findAll(Map map) {
		return mediaMapper.selectByExample(map);
	}

	/**
	 * 按分页查询
	 */
	@Override
	public PageResult findPage(int pageNum, int pageSize) {
		PageHelper.startPage(pageNum, pageSize);		
		Page<Media> page=   (Page<Media>) mediaMapper.selectByExample(null);
		return new PageResult(page.getTotal(), page.getResult());
	}

	/**
	 * 增加
	 */
	@Override
	public void add(Media media) {
		mediaMapper.insert(media);		
	}

	
	/**
	 * 修改
	 */
	@Override
	public void update(Media media){
		mediaMapper.updateByPrimaryKey(media);
	}	
	
	/**
	 * 根据ID获取实体
	 * @param id
	 * @return
	 */
	@Override
	public Media findOne(Long id){
		return mediaMapper.selectByPrimaryKey(id);
	}

	/**
	 * 批量删除
	 */
	@Override
	public void delete(Long[] ids) {
		for(Long id:ids){
			mediaMapper.deleteByPrimaryKey(id);
		}		
	}
	
	
		@Override
	public PageResult findPage(Map map, int pageNum, int pageSize) {
		PageHelper.startPage(pageNum, pageSize);
		
		Page<Media> page= (Page<Media>)mediaMapper.selectByExample(map);
		return new PageResult(page.getTotal(), page.getResult());
	}
	
}
