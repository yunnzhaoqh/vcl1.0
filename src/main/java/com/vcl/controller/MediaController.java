package com.vcl.controller;
import java.util.List;
import java.util.Map;

import com.vcl.pojo.Media;
import com.vcl.pojo.PageResult;
import com.vcl.pojo.Result;
import com.vcl.service.MediaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
/**
 * controller
 * @author Administrator
 *
 */
@RestController
@RequestMapping("/media")
public class MediaController {

	@Autowired
	private MediaService mediaService;
	
	/**
	 * 返回全部列表
	 * @return
	 */
	@RequestMapping("/findAll")
	public List<Media> findAll(Map map){
		return mediaService.findAll(map);
	}
	
	
	/**
	 * 返回全部列表
	 * @return
	 */
	@RequestMapping("/findPage")
	public PageResult findPage(@RequestBody Map map){
		return mediaService.findPage(map);
	}
	
	/**
	 * 增加
	 * @param media
	 * @return
	 */
	@RequestMapping("/add")
	public Result add(Media media){
		try {
			mediaService.add(media);
			return new Result(true, "增加成功");
		} catch (Exception e) {
			e.printStackTrace();
			return new Result(false, "增加失败");
		}
	}
	
	/**
	 * 修改
	 * @param media
	 * @return
	 */
	@RequestMapping("/update")
	public Result update(Media media){
		try {
			mediaService.update(media);
			return new Result(true, "修改成功");
		} catch (Exception e) {
			e.printStackTrace();
			return new Result(false, "修改失败");
		}
	}	
	
	/**
	 * 获取实体
	 * @param id
	 * @return
	 */
	@RequestMapping("/findOne")
	public Media findOne(Long id){
		return mediaService.findOne(id);		
	}
	
	/**
	 * 批量删除
	 * @param ids
	 * @return
	 */
	@RequestMapping("/delete")
	public Result delete(Long [] ids){
		try {
			mediaService.delete(ids);
			return new Result(true, "删除成功"); 
		} catch (Exception e) {
			e.printStackTrace();
			return new Result(false, "删除失败");
		}
	}

	/**
	 * 批量删除
	 * @param id
	 * @return
	 */
	@RequestMapping("/delete_media")
	public Result delete_media(Long id){
		try {
			mediaService.delete_media(id);
 			return new Result(true, "删除成功");
		} catch (Exception e) {
			e.printStackTrace();
			return new Result(false, "删除失败");
		}
	}

	/**
	 * 查询+分页
	 * @param page
	 * @param rows
	 * @return
	 */
	@RequestMapping("/search")
	public PageResult search(@RequestBody Map map, int page, int rows  ){
		return mediaService.findPage(map, page, rows);
	}
	
}
