package com.vcl.controller;

import com.vcl.pojo.*;
import com.vcl.service.*;
import com.vcl.utils.RequestUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.annotation.RequestScope;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.sql.Timestamp;
import java.text.DecimalFormat;
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
    private ProjectService projectService;
    @Autowired
    private com.vcl.service.ReferenceService referenceService;
    @Value("${FILE_UPLOAD_PATH}")
    private String FILE_UPLOAD_PATH;
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
    @RequestMapping("/activiProject")
    public String activiProject(HttpServletRequest request, Model model){
        Map map = RequestUtil.getMap(request);
        model.addAttribute("type",map.get("type"));
        model.addAttribute("id",map.get("id"));
        return "activiProject";
    }
    @RequestMapping("/project")
    public String project(HttpServletRequest request, Model model){
        Map map = RequestUtil.getMap(request);
        model.addAttribute("type",map.get("type"));
        model.addAttribute("id",map.get("id"));
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
        map.put("status",1);
        try {
            List<Banner> bannerList = bannerService.findAll(map);
            List<Collaboration> collaborationList = collaborationService.findAll(map);
            List<Intro> introList = introService.findAll(map);
            List<Media> mediaList = mediaService.findAll(map);
            List<Project> projectList = projectService.findAll(map);
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
//            List<Reference> references = referenceService.findAll(map);
            map = new HashMap();
            map.put("banner",bannerList);
            map.put("collaboration",collaborationList);
            map.put("intro",introList);
            map.put("media",mediaList);
            map.put("people",peopleList);
            map.put("project",projectList);
            result.setSuccess(true);
            result.setObj(map);
        }catch (Exception e){
            e.printStackTrace();
            result.setSuccess(false);
        }
        return result;
    }

    @RequestMapping("/initPublication")
    @ResponseBody
    public Result initPublication(HttpServletRequest request){
        Map<String, Object> parameterMap = RequestUtil.getMap(request);
        parameterMap.keySet();
        Result result = new Result();
        Map map = new HashMap();
//        map.put("STATUS",1);
        try {
            List<Project> projects = projectService.findAll(parameterMap);

            map.put("projects",projects);
            result.setSuccess(true);
            result.setObj(map);
        }catch (Exception e){
            result.setSuccess(false);
        }
        return result;
    }

    @RequestMapping("/initmedia")
    @ResponseBody
    public PageResult initmedia(@RequestBody Map map){
//        Map<String, Object> parameterMap = RequestUtil.getMap(request);
        PageResult<Media> page = mediaService.findPage(map);
        for (Media media : page.getData()) {
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss",Locale.ENGLISH);
            LocalDateTime date = LocalDateTime.parse( media.getReleaseDate(),formatter);
            String forMatdate =date.format(DateTimeFormatter.ofPattern("MMM dd yyyy HH:mm:ss",Locale.ENGLISH));
            String[] split = forMatdate.split(" ");
            System.out.println(split[0]+","+split[1]+" "+split[2]);
            media.setReleaseDate(split[0]+","+split[1]+" "+split[2]);
//                mediaList.add(media);
        }
        return page;
    }

    @RequestMapping("/mediaDetail")
    @ResponseBody
    public PageResult mediaDetail(@RequestBody Map map){
//        Map<String, Object> parameterMap = RequestUtil.getMap(request);
        PageResult<Media> page = mediaService.findPage(map);
        for (Media media : page.getData()) {
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss",Locale.ENGLISH);
            LocalDateTime date = LocalDateTime.parse( media.getReleaseDate(),formatter);
            String forMatdate =date.format(DateTimeFormatter.ofPattern("MMM dd yyyy HH:mm:ss",Locale.ENGLISH));
            String[] split = forMatdate.split(" ");
            System.out.println(split[0]+","+split[1]+" "+split[2]);
            media.setReleaseDate(split[0]+","+split[1]+" "+split[2]);
//                mediaList.add(media);
        }
        return page;
    }

    @RequestMapping("/initPeople")
    @ResponseBody
    public PageResult initPeople(@RequestBody Map map){
        PageResult<People> page = peopleService.findPage(map);
        return page;
    }
    @RequestMapping("/initActivities")
    @ResponseBody
    public PageResult initActivities(@RequestBody Map map){
        PageResult<Project> page = projectService.findPage(map);
        for (Project project : page.getData()) {
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm",Locale.ENGLISH);
            LocalDateTime date = LocalDateTime.parse( project.getCreatetime(),formatter);
            String forMatdate =date.format(DateTimeFormatter.ofPattern("MMM dd yyyy HH:mm",Locale.ENGLISH));
            String[] split = forMatdate.split(" ");
            System.out.println(split[0]+","+split[1]+" "+split[2]);
            project.setCreatetime(split[0]+","+split[1]+" "+split[2]);
//                mediaList.add(media);
        }
        return page;
    }

    @RequestMapping("/initEducation")
    @ResponseBody
    public PageResult initEducation(@RequestBody Map map){
        PageResult<People> page = peopleService.findPage(map);
        return page;
    }

    @RequestMapping("/findOneProject")
    @ResponseBody
    public Project findOneProject(@RequestBody Map map){
        Long id = Long.parseLong(map.get("id").toString());
        Project project = projectService.findOne(id);
        File file = new File(FILE_UPLOAD_PATH+project.getProject_file());
        if (file.exists() && file.isFile()){
            final String[] units = new String[]{"B", "KB", "MB", "GB", "TB"};
            int digitGroups = (int) (Math.log10(file.length()) / Math.log10(1024));
            project.setFileName(file.getName());
            project.setFileSize(new DecimalFormat("#,##0.#").format(file.length() / Math.pow(1024, digitGroups)) + " " + units[digitGroups]);
        }else{
            project.setFileName("无文件");
            project.setFileSize("0 M");
        }
        return project;
    }



}
