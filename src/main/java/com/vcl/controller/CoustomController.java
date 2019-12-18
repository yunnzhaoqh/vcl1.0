package com.vcl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/coustom")
public class CoustomController {

    /**
     * 登录界面
     * @return
     */
    @RequestMapping("/user")
    public String user(){

        return "coustom/user/list";
    }
    /**
     * 登录界面
     * @return
     */
    @RequestMapping("/administrators")
    public String administrators(){

        return "coustom/administrators/list";
    }
    /**
     * 登录界面
     * @return
     */
    @RequestMapping("/role")
    public String role(){

        return "coustom/administrators/role";
    }
}
