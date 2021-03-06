package com.vcl.controller;

import com.vcl.pojo.PageResult;
import com.vcl.pojo.Result;
import com.vcl.pojo.User;
import com.vcl.service.UserService;
import com.vcl.utils.RequestUtil;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.Base64;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@Controller
@RequestMapping("/user")
public class UserController {

    Logger logger = LogManager.getLogger(UserController.class);

    @Value("${FILE_UPLOAD_PATH}")
    private String FILE_UPLOAD_PATH;        //存储文件路径

    @Autowired
    private UserService userService;

    /**
     * 登录界面
     *
     * @return
     */
    @RequestMapping("/user")
    public String user() {

        return "coustom/user/user/list";
    }

    /**
     * 登录界面
     *
     * @return
     */
    @RequestMapping("/administrators")
    public String administrators() {

        return "coustom/user/administrators/list";
    }

    /**
     * 登录界面
     *
     * @return
     */
    @RequestMapping("/role")
    public String role() {
        return "coustom/user/administrators/role";
    }

    @RequestMapping("upload_file")
    @ResponseBody
    public Map upload_file(@RequestParam(value = "file", required = false) MultipartFile file, @RequestParam(value = "dirpath", required = false) String dirpath) {
        String prefix = "";
        String fileStr = "";
        //保存上传=
        Map<String, Object> map = new HashMap<>();
        try {
            if (file != null) {
                String originalName = file.getOriginalFilename();
                prefix = FilenameUtils.getExtension(originalName);
                String filepath = FILE_UPLOAD_PATH;
                String resultpath = "\\upload\\"; //默认存储到upload 路径下
                if (!StringUtils.isEmpty(dirpath)) {
//                    filepath += "\\" + dirpath + "\\";
                    resultpath += dirpath + "\\";
                    filepath+=resultpath;
                }
//                if(!StringUtils.isEmpty(dirpath) && dirpath.indexOf("file") != -1){
//                    fileStr = originalName;
//                }else{
                    fileStr = UUID.randomUUID().toString() + "." + prefix;
//                }
                filepath += fileStr;
                resultpath += fileStr;
                filepath = filepath.replace("\\", "/");
                resultpath = resultpath.replace("\\", "/");
                File files = new File(filepath);
                if (!files.getParentFile().exists()) {
                    files.getParentFile().mkdirs();
                }
                file.transferTo(files);
                map.put("code", 0);
                map.put("msg", "上传成功");
                map.put("src", resultpath);
                map.put("fileName", originalName);
                map.put("fileSize", file.getSize());
            }
        } catch (Exception e) {
            logger.error("上传文件错误：" + e.getMessage() + "方法：user/upload_file");
            map.put("code", 1);
            map.put("msg", "上传失败");
        } finally {
            return map;
        }
    }

    @RequestMapping("/query_users")
    @ResponseBody
    public PageResult<User> query_users(@RequestBody Map map) {
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
    public Result check_login_name(String login_name) {
        User user = userService.getUser(login_name);
        if (user != null) {
            return new Result(false, "登录名已存在");
        }
        return new Result(true, "");
    }

    @RequestMapping("/update")
    @ResponseBody
    public Result udpate(User user) {
        try {
            userService.update_user(user);
            return new Result(true, "修改成功");
        } catch (Exception e) {
            return new Result(false, "修改失败");
        }
    }

    @RequestMapping("/delete")
    @ResponseBody
    public Result delete(Integer id) {
        try {
            userService.delete_user(id);
            return new Result(true, "删除成功");
        } catch (Exception e) {
            return new Result(false, "删除失败");
        }
    }

    @RequestMapping("update_pwd")
    @ResponseBody
    public Result update_pwd(HttpServletRequest request, HttpSession session) {
        Result result = new Result();
        Map map = RequestUtil.getMap(request);
        try {
            if (StringUtils.isEmpty(map.get("oldPassword")) || StringUtils.isEmpty(map.get("password")) || StringUtils.isEmpty(map.get("repassword"))) {
                result.setMessage("请填写完整");
                result.setSuccess(false);
                return result;
            }
            if (!map.get("repassword").toString().equals(map.get("password").toString())) {
                result.setMessage("新密码和确认密码必须相同");
                result.setSuccess(false);
                return result;
            }
            User user = (User) session.getAttribute("user");
            String oldpwd = new Md5Hash(map.get("oldPassword").toString(),user.getLogin_name()).toString();
            if (!user.getPassword().equals(oldpwd)) {
                result.setMessage("原密码错误");
                result.setSuccess(false);
                return result;
            }
            map.put("login_name", user.getLogin_name());
            userService.password(map);
            session.removeAttribute("user");
            result.setSuccess(true);
            result.setMessage("修改成功，请重新登录");
        } catch (Exception e) {
            result.setSuccess(false);
            result.setMessage("系统错误");
        }
        return result;
    }

    /**
     * project 文章内容上传图片
     * @param multipartFile
     * @return
     */
    @RequestMapping("/kindupload/{type}")
    @ResponseBody
    public Map kindupload(@RequestParam("imgFile") MultipartFile multipartFile, @PathVariable(name = "type", required = false ) String type){
        Map map = new HashMap();
        try {
            String prefix = FilenameUtils.getExtension(multipartFile.getOriginalFilename());
            String fileStr = UUID.randomUUID().toString();
            String resultpath = "\\upload\\" + type + "\\";
            resultpath += fileStr + "." + prefix;
            String filepath = FILE_UPLOAD_PATH + resultpath;
            filepath = filepath.replace("\\", "/");
            resultpath = resultpath.replace("\\","/");
            File newFile = new File(filepath);
            if(!newFile.exists()){
                newFile.mkdirs();
            }
            multipartFile.transferTo(newFile);
//            Map dataMap = new HashMap();
//            dataMap.put("src",resultpath);
//            dataMap.put("title", fileStr + "." + prefix);
            map.put("error",0);
            map.put("message","上传成功");
            map.put("url", resultpath);
        }catch (Exception e){
            logger.error("错误：" + e.getMessage() + "项目文件上传");
            map.put("error",1);
            map.put("message","出现错误");
        }finally {
            return map;
        }

    }

    /**
     * project 截图上传base64转为图片
     * @return
     */
    @RequestMapping("/uploadbase64")
    @ResponseBody
    public Map base64Upload(HttpServletRequest request){
        Map map = RequestUtil.getMap(request);
        Map resultMap = new HashMap();
        if(StringUtils.isEmpty(map.get("filetype")) || map.get("filetype").toString().indexOf("image") < 0){
            resultMap.put("code","-1");
            resultMap.put("message","图片格式不正确");
            return resultMap;
        }
        if(StringUtils.isEmpty(map.get("filecode"))){
            resultMap.put("code","-1");
            resultMap.put("message","上传图片不能为空");
            return resultMap;
        }
        OutputStream out = null;
        Base64.Decoder decoder = Base64.getDecoder();
        byte[] filecode = decoder.decode(map.get("filecode").toString().substring(map.get("filecode").toString().indexOf(',') + 1));
        for (int i = 0; i < filecode.length; ++i) {
            if (filecode[i] < 0) {// 调整异常数据
                filecode[i] += 256;
            }
        }
        String resultpath = "\\upload\\" + map.get("dirpath") + "\\";
        String filepath = FILE_UPLOAD_PATH + resultpath;
        File newFile = new File(filepath);
        if(!newFile.exists()){
            newFile.mkdirs();
        }
        try {
            String prefix =FilenameUtils.getExtension(map.get("filename").toString());
            String fileStr = UUID.randomUUID().toString();
            out = new FileOutputStream(filepath + fileStr + "." + prefix);
            out.write(filecode);
            resultMap.put("code",0);
            resultMap.put("src", resultpath + fileStr + "." + prefix);
            resultMap.put("message","上传成功");
            if(out != null){
                out.flush();
                out.close();
            }
        } catch (IOException e) {
            e.printStackTrace();
            resultMap.put("code",-2);
            resultMap.put("message","上传失败");
        } finally {

            return resultMap;
        }

    }
}
