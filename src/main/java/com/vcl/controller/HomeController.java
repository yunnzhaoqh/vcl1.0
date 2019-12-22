package com.vcl.controller;

import com.vcl.pojo.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.annotation.RequestScope;

@Controller
@RequestMapping("/home")
public class HomeController {

    @Autowired

    @RequestMapping("/index")
    public String index(){
        return "index";
    }
    @RequestMapping("/activities")
    public String activities(){
        return "activities";
    }
    @RequestMapping("/education")
    public String education(){
        return "education";
    }
    @RequestMapping("/join-us")
    public String join_us(){
        return "join-us";
    }
    @RequestMapping("/media")
    public String media(){
        return "media";
    }
    @RequestMapping("/people")
    public String people(){
        return "people";
    }
    @RequestMapping("/project")
    public String project(){
        return "project";
    }
    @RequestMapping("/publication")
    public String publication(){
        return "publication";
    }
    @RequestMapping("/share")
    public String share(){
        return "share";
    }

    @RequestMapping("/initIndex")
    public Result initIndex(){
        Result result = new Result();

        return result;
    }

}
