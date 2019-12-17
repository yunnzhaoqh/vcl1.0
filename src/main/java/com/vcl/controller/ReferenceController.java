package com.vcl.controller;
import java.util.List;

import com.vcl.pojo.PageResult;
import com.vcl.pojo.Result;
import com.vcl.pojo.TbReference;
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
@RequestMapping("/reference")
public class ReferenceController {

	@Autowired
	private com.zqh.cvl.service.ReferenceService referenceService;
	
	/**
	 * 返回全部列表
	 * @return
	 */
	@RequestMapping("/findAll")
	public List<TbReference> findAll(){
		return referenceService.findAll();
	}
	
	
	/**
	 * 返回全部列表
	 * @return
	 */
	@RequestMapping("/findPage")
	public PageResult findPage(int page, int rows){
		return referenceService.findPage(page, rows);
	}
	
	/**
	 * 增加
	 * @param reference
	 * @return
	 */
	@RequestMapping("/add")
	public Result add(@RequestBody TbReference reference){
		try {
			referenceService.add(reference);
			return new Result(true, "增加成功");
		} catch (Exception e) {
			e.printStackTrace();
			return new Result(false, "增加失败");
		}
	}
	
	/**
	 * 修改
	 * @param reference
	 * @return
	 */
	@RequestMapping("/update")
	public Result update(@RequestBody TbReference reference){
		try {
			referenceService.update(reference);
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
	public TbReference findOne(Long id){
		return referenceService.findOne(id);		
	}
	
	/**
	 * 批量删除
	 * @param ids
	 * @return
	 */
	@RequestMapping("/delete")
	public Result delete(Long [] ids){
		try {
			referenceService.delete(ids);
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
	public PageResult search(@RequestBody TbReference reference, int page, int rows  ){
		return referenceService.findPage(reference, page, rows);		
	}
	
}
