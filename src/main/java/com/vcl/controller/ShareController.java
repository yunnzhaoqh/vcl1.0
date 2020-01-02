package com.vcl.controller;

import com.vcl.pojo.PageResult;
import com.vcl.pojo.Result;
import com.vcl.pojo.Share;
import com.vcl.service.ShareService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/share")
public class ShareController {

    @Autowired
    private ShareService shareService;

    /**
     * 返回全部列表
     * @return
     */
    @RequestMapping("/findAll")
    public List<Share> findAll(Map map){
        return shareService.findAll(map);
    }


    /**
     * 返回全部列表
     * @return
     */
    @RequestMapping("/findPage")
    public PageResult findPage(@RequestBody Map map){
        return shareService.findPage(map);
    }

    /**
     * 增加
     * @param share
     * @return
     */
    @RequestMapping("/add")
    public Result add(Share share){
        try {
            shareService.add(share);
            return new Result(true, "增加成功");
        } catch (Exception e) {
            e.printStackTrace();
            return new Result(false, "增加失败");
        }
    }

    /**
     * 修改
     * @param share
     * @return
     */
    @RequestMapping("/update")
    public Result update(Share share){
        try {
            shareService.update(share);
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
    public Share findOne(Long id){
        return shareService.findOne(id);
    }

    /**
     * 批量删除
     * @param ids
     * @return
     */
    @RequestMapping("/delete")
    public Result delete(Long [] ids){
        try {
            shareService.delete(ids);
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
    @RequestMapping("/delete_share")
    public Result delete_share(Long id){
        try {
            shareService.delete_share(id);
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
        return shareService.findPage(map, page, rows);
    }
}
