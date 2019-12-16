package com.vcl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/demo")
public class firstController {

    @RequestMapping("/hello")
    @ResponseBody
    public String myFirst(){

        return "hello";
    }
}
