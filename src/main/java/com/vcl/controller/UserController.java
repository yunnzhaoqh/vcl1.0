package com.vcl.controller;

import com.vcl.pojo.PageResult;
import com.vcl.pojo.Result;
import com.vcl.pojo.User;
import com.vcl.service.UserService;
import org.apache.commons.io.FilenameUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@Controller
@RequestMapping("/user")
public class UserController {

    Logger logger = LogManager.getLogger(UserController.class);

    @Value("${FILE_UPLOAD_PATH}")
    private String FILE_UPLOAD_PATH;		//存储文件路径

    @Autowired
    private UserService userService;

    /**
     * 登录界面
     * @return
     */
    @RequestMapping("/user")
    public String user(){

        return "coustom/user/user/list";
    }
    /**
     * 登录界面
     * @return
     */
    @RequestMapping("/administrators")
    public String administrators(){

        return "coustom/user/administrators/list";
    }
    /**
     * 登录界面
     * @return
     */
    @RequestMapping("/role")
    public String role(){
        return "coustom/user/administrators/role";
    }

    @RequestMapping("upload_file")
    @ResponseBody
    public Map upload_file(@RequestParam(value="file",required=false) MultipartFile file,@RequestParam(value="dirpath",required=false) String dirpath) {
        String prefix="";
        String fileStr="";
        //保存上传
        OutputStream out = null;
        InputStream fileInput=null;
        Map<String,Object> map=new HashMap<>();
        try{
            if(file!=null){
                String originalName = file.getOriginalFilename();
                prefix= FilenameUtils.getExtension(originalName);
                fileStr = UUID.randomUUID().toString();
                String filepath = FILE_UPLOAD_PATH;
                String resultpath = "\\upload\\";
                if(!StringUtils.isEmpty(dirpath)){
                    filepath += "\\" + dirpath + "\\";
                    resultpath += dirpath + "\\";
                }
                filepath += fileStr + "." + prefix;
                resultpath += fileStr + "." + prefix;
                filepath = filepath.replace("\\", "/");
                File files = new File(filepath);
                //打印查看上传路径
                System.out.println(filepath);
                if(!files.getParentFile().exists()){
                    files.getParentFile().mkdirs();
                }
                file.transferTo(files);
                map.put("code",0);
                map.put("msg","上传成功");
                map.put("src",resultpath);
            }
        }catch (Exception e){
            logger.error("上传文件错误：" + e.getMessage() + "方法：user/upload_file");
            map.put("code",1);
            map.put("msg","上传失败");
        }finally{
            try {
                if(out!=null){
                    out.close();
                }
                if(fileInput!=null){
                    fileInput.close();
                }
            } catch (IOException e) {
                logger.error("上传文件错误：" + e.getMessage() + "方法：user/upload_file");
                map.put("code",1);
                map.put("msg","上传失败");
            }
            return map;
        }
    }

    @RequestMapping("/query_users")
    @ResponseBody
    public PageResult<User> query_users(@RequestBody Map map){
        return userService.query_user_list(map);
    }

    @RequestMapping("/insert")
    @ResponseBody
    public Result insert(User user) {
        try {
            userService.insert_user(user);
            return new Result(true, "添加成功,默认密码为000000");
        } catch (Exception e) {
            return new Result(false, "添加失败");
        }
    }

    @RequestMapping("check_login_name")
    @ResponseBody
    public Result check_login_name(String login_name){
        User user = userService.getUser(login_name);
        if(user != null) {
            return new Result(false, "登录名已存在");
        }
        return new Result(true,"");
    }

    @RequestMapping("/update")
    @ResponseBody
    public Result udpate(User user){
        try{
            userService.update_user(user);
            return new Result(true,"修改成功");
        }catch (Exception e){
            return new Result(false,"修改失败");
        }
    }

    @RequestMapping("/delete")
    @ResponseBody
    public Result delete(Integer id){
        try{
            userService.delete_user(id);
            return new Result(true,"删除成功");
        }catch (Exception e){
            return new Result(false,"删除失败");
        }
    }

    @RequestMapping("update_pwd")
    @ResponseBody
    public Result update_pwd(HttpSession session){
        Result result = new Result();
        try{
            User user = (User) session.getAttribute("user");
//            userService.password();
        }catch (Exception e){

        }
        return result;
    }
}
