package com.vcl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {

    @RequestMapping("/console")
    public String index(){
        return "coustom/home/console";
    }

    @RequestMapping("/homepage1")
    public String activities(){
        return "coustom/home/homepage1";
    }

    @RequestMapping("/homepage2")
    public String education(){
        return "coustom/home/homepage2";
    }

    @RequestMapping("/add_user")
    public String add_user(){
        return "/coustom/user/administrators/adminform";
    }

    @RequestMapping("/update_pwd")
    public String update_pwd(){
        return "/coustom/set/user/password";
    }

    @RequestMapping("/project_list")
    public String project_list(){
        return "/coustom/chapter/project_list";
    }

    @RequestMapping("/add_project")
    public String add_project(){
        return "coustom/chapter/project";
    }

    @RequestMapping("/media_list")
    public String media_list(){
        return "/coustom/chapter/media_list";
    }

    @RequestMapping("/add_media")
    public String add_media(){
        return "coustom/chapter/media";
    }

}
