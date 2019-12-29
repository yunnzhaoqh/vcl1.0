package com.vcl.controller;

import com.vcl.pojo.Banner;
import com.vcl.pojo.PageResult;
import com.vcl.pojo.Result;
import com.vcl.service.BannerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Map;

/**
 * controller
 * @author Administrator
 *
 */
@RestController
@RequestMapping("/banner")
public class BannerController {

	@Autowired
	private BannerService bannerService;

	@RequestMapping("/findPage")
	public PageResult findPage(@RequestBody Map map){
		return bannerService.findPage(map);
	}

	@RequestMapping("/add")
	public Result add(Banner banner){
		try{
			bannerService.add(banner);
			return new Result(true,"新增成功");
		}catch (Exception e){
			return new Result(false,"新增失败");
		}
	}

	@RequestMapping("/update")
	public Result update(Banner banner){
		try{
			bannerService.update(banner);
			return new Result(true,"修改成功");
		}catch (Exception e){
			return new Result(false,"修改失败");
		}
	}

	@RequestMapping("/delete_banner")
	public Result delete_banner(long id){
		try{
			bannerService.delete_banner(id);
			return new Result(true,"删除成功");
		}catch (Exception e){
			return new Result(false,"删除失败");
		}
	}
}
