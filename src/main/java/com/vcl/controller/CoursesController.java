package com.vcl.controller;
import java.util.List;
import java.util.Map;

import com.vcl.pojo.Courses;
import com.vcl.pojo.PageResult;
import com.vcl.pojo.Result;
import com.vcl.service.CoursesService;
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
@RequestMapping("/courses")
public class CoursesController {

	@Autowired
	private CoursesService coursesService;
	
	/**
	 * 返回全部列表
	 * @return
	 */
	@RequestMapping("/findAll")
	public List<Courses> findAll(){
		return coursesService.findAll();
	}
	
	
	/**
	 * 返回全部列表
	 * @return
	 */
	@RequestMapping("/findPage")
	public PageResult findPage(@RequestBody Map map){
		return coursesService.query_courses(map);
	}
	
	/**
	 * 增加
	 * @param courses
	 * @return
	 */
	@RequestMapping("/add")
	public Result add(Courses courses){
		try {
			coursesService.add(courses);
			return new Result(true, "增加成功");
		} catch (Exception e) {
			e.printStackTrace();
			return new Result(false, "增加失败");
		}
	}
	
	/**
	 * 修改
	 * @param courses
	 * @return
	 */
	@RequestMapping("/update")
	public Result update(Courses courses){
		try {
			coursesService.update(courses);
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
	public Courses findOne(Long id){
		return coursesService.findOne(id);		
	}
	
	/**
	 * 批量删除
	 * @param ids
	 * @return
	 */
	@RequestMapping("/delete")
	public Result delete(Long [] ids){
		try {
			coursesService.delete(ids);
			return new Result(true, "删除成功"); 
		} catch (Exception e) {
			e.printStackTrace();
			return new Result(false, "删除失败");
		}
	}

	/**
	 * 删除
	 * @param id
	 * @return
	 */
	@RequestMapping("/delete_courses")
	public Result delete_courses(Long id){
		try {
			coursesService.delete_courses(id);
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
	public PageResult search(@RequestBody Map courses, int page, int rows  ){
		return coursesService.findPage(courses, page, rows);		
	}
	
}
