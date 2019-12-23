package com.vcl.controller;
import java.util.List;
import java.util.Map;

import com.vcl.pojo.PageResult;
import com.vcl.pojo.People;
import com.vcl.pojo.Result;
import com.vcl.service.PeopleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * controller
 * @author Administrator
 *
 */
@Controller
@RequestMapping("/people")
public class PeopleController {

	@Autowired
	private PeopleService peopleService;
	
	/**
	 * 返回全部列表
	 * @return
	 */
	@RequestMapping("/findAll")
	@ResponseBody
	public List<People> findAll(Map map){
		return peopleService.findAll(map);
	}
	
	
	/**
	 * 返回全部列表
	 * @return
	 */
	@RequestMapping("/findPage")
	@ResponseBody
	public PageResult findPage(@RequestBody Map map){
		return peopleService.findPage(map);
	}

	/**
	 * 跳转新增页面
	 * @return
	 */
	@RequestMapping("add_people")
	public String add_people(){
		return "coustom/user/user/people";
	}

	/**
	 * 增加
	 * @param people
	 * @return
	 */
	@RequestMapping("/add")
	@ResponseBody
	public Result add(People people){
		try {
			peopleService.add(people);
			return new Result(true, "增加成功");
		} catch (Exception e) {
			e.printStackTrace();
			return new Result(false, "增加失败");
		}
	}
	
	/**
	 * 修改
	 * @param people
	 * @return
	 */
	@RequestMapping("/update")
	@ResponseBody
	public Result update(People people){
		try {
			peopleService.update(people);
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
	@ResponseBody
	public People findOne(Long id){
		return peopleService.findOne(id);		
	}
	
	/**
	 * 批量删除
	 * @param ids
	 * @return
	 */
	@RequestMapping("/delete")
	@ResponseBody
	public Result delete(Long [] ids){
		try {
			peopleService.delete(ids);
			return new Result(true, "删除成功"); 
		} catch (Exception e) {
			e.printStackTrace();
			return new Result(false, "删除失败");
		}
	}

	/**
	 * 删除人员
	 * @param id
	 * @return
	 */
	@RequestMapping("/delete_people")
	@ResponseBody
	public Result delete_people(Long id){
		try {
			peopleService.delete_people(id);
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
	@ResponseBody
	public PageResult search(@RequestBody People people, int page, int rows  ){
		return peopleService.findPage(people, page, rows);		
	}
	
}
