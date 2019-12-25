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
    @Autowired
    private com.zqh.cvl.service.ReferenceService referenceService;

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
//            List<Pulication> mediaList = mediaService.findAll(map);
            for (Media media : mediaList) {
                DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss",Locale.ENGLISH);
                LocalDateTime date = LocalDateTime.parse( media.getReleaseDate(),formatter);
                String forMatdate =date.format(DateTimeFormatter.ofPattern("MMM dd yyyy HH:mm:ss",Locale.ENGLISH));
                String[] split = forMatdate.split(" ");
                System.out.println(split[0]+","+split[1]+" "+split[2]);
                media.setReleaseDate(split[0]+","+split[1]+" "+split[2]);

//                mediaList.add(media);
            }
            List<People> peopleList = peopleService.findAll(map);
            List<TbReference> references = referenceService.findAll(map);
            map = new HashMap();
            map.put("banner",bannerList);
            map.put("collaboration",collaborationList);
            map.put("intro",introList);
            map.put("media",mediaList);
            map.put("people",peopleList);
            map.put("reference",peopleList);
            result.setSuccess(true);
            result.setObj(map);
        }catch (Exception e){
            result.setSuccess(false);
        }
        return result;
    }

}
