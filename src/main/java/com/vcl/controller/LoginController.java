package com.vcl.controller;

import com.google.code.kaptcha.Constants;
import com.google.code.kaptcha.impl.DefaultKaptcha;
import com.vcl.pojo.Result;
import com.vcl.pojo.User;
import com.vcl.service.UserService;
import com.vcl.utils.RequestUtil;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.image.BufferedImage;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

@Controller
@RequestMapping("/coustom")
public class LoginController {

    @Autowired
    DefaultKaptcha captchaProducer;

    @Autowired
    UserService userService;

    /**
     * 登录界面
     * @return
     */
    @RequestMapping("/login")
    public String login(){
        return "coustom/user/login";
    }

    /**
     * 用户登录
     * @param session
     * @return
     */
    @RequestMapping("/login_user")
    @ResponseBody
    public Result login(HttpServletRequest request, HttpSession session){
        Map params = RequestUtil.getMap(request);
        Result result = new Result();
        if(StringUtils.isEmpty(params.get("vercode"))){
            result.setSuccess(false);
            result.setMessage("验证码不能为空");
            return result;
        }
        String sessioncode = (String) session.getAttribute(Constants.KAPTCHA_SESSION_KEY);
        if(!params.get("vercode").equals(sessioncode)){
            result.setSuccess(false);
            result.setMessage("验证码错误");
            return result;
        }
        if(StringUtils.isEmpty(params.get("login_name")) || StringUtils.isEmpty(params.get("password"))){
            result.setSuccess(false);
            result.setMessage("账号或密码不能为空");
            return result;
        }
        User user = userService.getUser(params.get("login_name").toString());
        if(user == null || -1 == user.getStatus()){
            result.setSuccess(false);
            result.setMessage("用户不存在");
            return result;
        }
        if(0 == user.getStatus()){
            result.setSuccess(false);
            result.setMessage("用户无效");
            return result;
        }
        String pwd = new Md5Hash(params.get("password").toString(),params.get("login_name")).toString();
        if(!user.getPassword().equals(pwd)){
            result.setSuccess(false);
            result.setMessage("账号或密码错误");
            return result;
        }
        session.setAttribute("user",user);
        result.setSuccess(true);
        result.setMessage("登录成功");
        return result;
    }

    @RequestMapping("login_out")
    public String login_out(HttpSession session){
        if(session.getAttribute("user") != null){
            session.removeAttribute("user");
        }
        return "coustom/user/login";
    }

    /**
     * 登录界面
     * @return
     */
    @RequestMapping("/index")
    public String index(HttpSession session){
        return "coustom/index";
    }

    @RequestMapping("/login/verification")
    @ResponseBody
    public void verification(HttpServletRequest request, HttpServletResponse response) throws Exception{
        HttpSession session = request.getSession();
        response.setDateHeader("Expires", 0);
        response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
        response.addHeader("Cache-Control", "post-check=0, pre-check=0");
        response.setHeader("Pragma", "no-cache");
        response.setContentType("image/jpeg");
        String capText = captchaProducer.createText();
        session.setAttribute(Constants.KAPTCHA_SESSION_KEY, capText);
        BufferedImage bi = captchaProducer.createImage(capText);
        ServletOutputStream out = response.getOutputStream();
        ImageIO.write(bi, "jpg", out);
        try {
            out.flush();
        } finally {
            out.close();
        }
     }
}
