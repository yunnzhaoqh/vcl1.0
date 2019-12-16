package com.vcl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.annotation.RequestScope;

@Controller
@RequestMapping("/home")
public class HomeController {

    @RequestMapping("/index")
    public String index(){
        return "/home/index";
    }
    @RequestMapping("/activities")
    public String activities(){
        return "/home/activities";
    }
    @RequestMapping("/education")
    public String education(){
        return "/home/education";
    }
    @RequestMapping("/join-us")
    public String join_us(){
        return "/home/join-us";
    }
    @RequestMapping("/media")
    public String media(){
        return "/home/media";
    }
    @RequestMapping("/people")
    public String people(){
        return "/home/people";
    }
    @RequestMapping("/project")
    public String project(){
        return "/home/project";
    }
    @RequestMapping("/publication")
    public String publication(){
        return "/home/publication";
    }
    @RequestMapping("/share")
    public String share(){
        return "/home/share";
    }
}
