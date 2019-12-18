package com.vcl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/coustom")
public class LoginController {

    /**
     * 登录界面
     * @return
     */
    @RequestMapping("/login")
    public String login(){

        return "coustom/user/login";
    }
    /**
     * 登录界面
     * @return
     */
    @RequestMapping("/index")
    public String index(){

        return "coustom/index";
    }
}
