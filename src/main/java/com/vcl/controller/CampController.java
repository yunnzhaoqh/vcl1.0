package com.vcl.controller;
import java.util.List;

import com.vcl.pojo.PageResult;
import com.vcl.pojo.Result;
import com.vcl.pojo.SummweCamp;
import com.vcl.service.CampService;
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
@RequestMapping("/camp")
public class CampController {

	@Autowired
	private CampService campService;
	
	/**
	 * 返回全部列表
	 * @return
	 */
	@RequestMapping("/findAll")
	public List<SummweCamp> findAll(){
		return campService.findAll();
	}
	
	
	/**
	 * 返回全部列表
	 * @return
	 */
	@RequestMapping("/findPage")
	public PageResult findPage(int page, int rows){
		return campService.findPage(page, rows);
	}
	
	/**
	 * 增加
	 * @param camp
	 * @return
	 */
	@RequestMapping("/add")
	public Result add(@RequestBody SummweCamp camp){
		try {
			campService.add(camp);
			return new Result(true, "增加成功");
		} catch (Exception e) {
			e.printStackTrace();
			return new Result(false, "增加失败");
		}
	}
	
	/**
	 * 修改
	 * @param camp
	 * @return
	 */
	@RequestMapping("/update")
	public Result update(@RequestBody SummweCamp camp){
		try {
			campService.update(camp);
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
	public SummweCamp findOne(Long id){
		return campService.findOne(id);		
	}
	
	/**
	 * 批量删除
	 * @param ids
	 * @return
	 */
	@RequestMapping("/delete")
	public Result delete(Long [] ids){
		try {
			campService.delete(ids);
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
	public PageResult search(@RequestBody SummweCamp camp, int page, int rows  ){
		return campService.findPage(camp, page, rows);		
	}
	
}
