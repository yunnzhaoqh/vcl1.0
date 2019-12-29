package com.vcl.controller;
import java.util.List;
import java.util.Map;

import com.vcl.pojo.PageResult;
import com.vcl.pojo.Project;
import com.vcl.pojo.Result;
import com.vcl.service.ProjectService;
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
@RequestMapping("/project")
public class ProjectController {

	@Autowired
	private ProjectService projectService;
	
	/**
	 * 返回全部列表
	 * @return
	 */
	@RequestMapping("/findAll")
	public List<Project> findAll(Map map){
		return projectService.findAll(map);
	}
	
	
	/**
	 * 返回全部列表
	 * @return
	 */
	@RequestMapping("/findPage")
	public PageResult findPage(@RequestBody Map map){
		return projectService.findPage(map);
	}
	
	/**
	 * 增加
	 * @param project
	 * @return
	 */
	@RequestMapping("/add")
	public Result add(Project project){
		try {
			projectService.add(project);
			return new Result(true, "增加成功");
		} catch (Exception e) {
			e.printStackTrace();
			return new Result(false, "增加失败");
		}
	}
	
	/**
	 * 修改
	 * @param project
	 * @return
	 */
	@RequestMapping("/update")
	public Result update(Project project){
		try {
			projectService.update(project);
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
	public Project findOne(Long id){
		return projectService.findOne(id);		
	}
	
	/**
	 * 批量删除
	 * @param ids
	 * @return
	 */
	@RequestMapping("/delete")
	public Result delete(Long [] ids){
		try {
			projectService.delete(ids);
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
	@RequestMapping("/delete_project")
	public Result delete(Long id){
		try {
			projectService.delete_project(id);
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
	public PageResult search(@RequestBody Project project, int page, int rows  ){
		return projectService.findPage(project, page, rows);		
	}

	/**
	 * 查询publication列表
	 * @param map
	 * @return
	 */
	@RequestMapping("query_publication")
	public PageResult query_publication(@RequestBody Map map){
		return projectService.query_publication(map);
	}

	/**
	 * 查询activities列表
	 * @param map
	 * @return
	 */
	@RequestMapping("query_activities")
	public PageResult query_activities(@RequestBody Map map){
		return projectService.query_activities(map);
	}
}
