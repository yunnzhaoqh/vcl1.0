package com.vcl.controller;

import com.vcl.pojo.*;
import com.vcl.service.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.annotation.RequestScope;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;

@Controller
@RequestMapping("/home")
public class HomeController {

    @Autowired
    private BannerService bannerService;
    @Autowired
    private CollaborationService collaborationService;
    @Autowired
    private IntroService introService;
    @Autowired
    private MediaService mediaService;
    @Autowired
    private PeopleService peopleService;

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

    @RequestMapping("/initHome")
    @ResponseBody
    public Result initIndex(){
        Result result = new Result();
        Map map = new HashMap();
        map.put("STATUS",1);
        try {
            List<Banner> bannerList = bannerService.findAll(map);
            List<Collaboration> collaborationList = collaborationService.findAll(map);
            List<Intro> introList = introService.findAll(map);
            List<Media> mediaList = mediaService.findAll(map);
            for (Media media : mediaList) {
                DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
//                SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd", Locale.ENGLISH);
                LocalDateTime date = LocalDateTime.parse( media.getCreatetime(),formatter);

                System.out.println(date.getDayOfMonth()+","+date.getMonth()+" "+date.getYear());
                media.setCreatetime(date.getDayOfMonth()+","+date.getMonth()+" "+date.getYear());
//                mediaList.add(media);
            }
            List<People> peopleList = peopleService.findAll(map);
            map = new HashMap();
            map.put("banner",bannerList);
            map.put("collaboration",collaborationList);
            map.put("intro",introList);
            map.put("media",mediaList);
            map.put("people",peopleList);
            result.setSuccess(true);
            result.setObj(map);
        }catch (Exception e){
            result.setSuccess(false);
        }
        return result;
    }

}
