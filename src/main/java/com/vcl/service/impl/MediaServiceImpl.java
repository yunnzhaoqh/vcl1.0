package com.vcl.service.impl;
import java.util.List;
import java.util.Map;

import com.github.pagehelper.PageInfo;
import com.vcl.dao.mapper.MediaMapper;
import com.vcl.pojo.Media;
import com.vcl.pojo.PageResult;
import com.vcl.service.MediaService;
import com.vcl.utils.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import org.springframework.stereotype.Service;
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
	public PageResult findPage(Map map) {
		PageHelper.startPage(Integer.parseInt(map.get("page").toString()), Integer.parseInt(map.get("limit").toString()));
		List<Media> media = mediaMapper.selectByExample(map);
		PageInfo pageInfo = new PageInfo(media);
		return new PageResult(pageInfo.getTotal(), media, 0 , "");
	}

	/**
	 * 增加
	 */
	@Override
	public void add(Media media) {
		String date = DateUtil.getDate(DateUtil.DateFormat5);
		media.setCreatetime(date);
		if("1".equals(media.getReleaseDate())){
			media.setReleaseDate(date);
		}else{
            media.setReleaseDate(date);
		}
		mediaMapper.insert(media);		
	}

	
	/**
	 * 修改
	 */
	@Override
	public void update(Media media){
		if("1".equals(media.getReleaseDate())){
			media.setReleaseDate(DateUtil.getDate(DateUtil.DateFormat5));
		}
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

	@Override
	public int delete_media(Long id) {
		return mediaMapper.deleteByPrimaryKey(id);
	}

}
