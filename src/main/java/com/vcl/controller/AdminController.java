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
}
