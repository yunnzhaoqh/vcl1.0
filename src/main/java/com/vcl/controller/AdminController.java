package com.vcl.controller;

import com.vcl.utils.RequestUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

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

    @RequestMapping("/activities_list")
    public String activities_list(){
        return "/coustom/chapter/activities_list";
    }

    @RequestMapping("/add_activities")
    public String add_activities(){
        return "coustom/chapter/activities";
    }

    @RequestMapping("/media_list")
    public String media_list(){
        return "/coustom/chapter/media_list";
    }

    @RequestMapping("/add_media")
    public String add_media(){
        return "coustom/chapter/media";
    }

    @RequestMapping("/reference")
    public String reference(){
        return "/coustom/education/reference_list";
    }

    @RequestMapping("/add_reference")
    public String add_reference(){
        return "coustom/education/reference";
    }

    @RequestMapping("/summweCamp")
    public String summweCamp(){
        return "/coustom/education/summwe_camp_list";
    }

    @RequestMapping("/add_summwe_camp")
    public String add_summwe_camp(){
        return "coustom/education/summwe_camp";
    }

    @RequestMapping("/course")
    public String course(){
        return "/coustom/education/courses_list";
    }

    @RequestMapping("/add_courses")
    public String add_courses(){
        return "coustom/education/courses";
    }

    @RequestMapping("/banner_list")
    public String banner_list(Model model, HttpServletRequest request){
        Map map = RequestUtil.getMap(request);
        model.addAttribute("type",map.get("type"));
        return "coustom/banner/banner_list";
    }

    @RequestMapping("/add_banner")
    public String add_banner(){
//        Map map = RequestUtil.getMap(request);
//        model.addAttribute("type",map.get("type"));
        return "coustom/banner/banner";
    }

    @RequestMapping("/share_list")
    public String share_list(){
        return "/coustom/share/share_list";
    }

    @RequestMapping("/add_share")
    public String add_share(){
        return "coustom/share/share";
    }

    @RequestMapping("/cropper")
    public String cropper(){
        return "/coustom/cropper/cropper";
    }

    @RequestMapping("/cropper_img")
    public String cropper_img(){
        return "/coustom/cropper/cropper_img";
    }
}
