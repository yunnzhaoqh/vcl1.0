package com.vcl.controller;
import java.util.List;

import com.vcl.pojo.PageResult;
import com.vcl.pojo.People;
import com.vcl.pojo.Result;
import com.vcl.service.PeopleService;
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
@RequestMapping("/people")
public class PeopleController {

	@Autowired
	private PeopleService peopleService;
	
	/**
	 * 返回全部列表
	 * @return
	 */
	@RequestMapping("/findAll")
	public List<People> findAll(){
		return peopleService.findAll();
	}
	
	
	/**
	 * 返回全部列表
	 * @return
	 */
	@RequestMapping("/findPage")
	public PageResult findPage(int page, int rows){
		return peopleService.findPage(page, rows);
	}
	
	/**
	 * 增加
	 * @param people
	 * @return
	 */
	@RequestMapping("/add")
	public Result add(@RequestBody People people){
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
	public Result update(@RequestBody People people){
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
	public People findOne(Long id){
		return peopleService.findOne(id);		
	}
	
	/**
	 * 批量删除
	 * @param ids
	 * @return
	 */
	@RequestMapping("/delete")
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
	 * 查询+分页
	 * @param page
	 * @param rows
	 * @return
	 */
	@RequestMapping("/search")
	public PageResult search(@RequestBody People people, int page, int rows  ){
		return peopleService.findPage(people, page, rows);		
	}
	
}
