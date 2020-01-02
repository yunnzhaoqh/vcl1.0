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
    private CoursesService coursesService;
    @Autowired
    private CampService campService;
    @Autowired
    private ShareService shareService;

    @Autowired
    private com.vcl.service.ReferenceService referenceService;
    @Value("${FILE_UPLOAD_PATH}")
    private String FILE_UPLOAD_PATH;
    @RequestMapping("/index")
    public String index(){
        return "index";
    }
    @RequestMapping("/activities")
    public String activities(HttpServletRequest request,Model model){
        Map map = RequestUtil.getMap(request);
        if(map.get("id")!= null){
            model.addAttribute("id",map.get("id"));
        }else{
            model.addAttribute("id",0);
        }
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
    public String media(HttpServletRequest request,Model model){
        Map map = RequestUtil.getMap(request);
        if(map.get("id")!= null){
            model.addAttribute("id",map.get("id"));
        }else{
            model.addAttribute("id",0);
        }

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
    @RequestMapping("/educationDetial")
    public String educationDetial(HttpServletRequest request, Model model){
        Map map = RequestUtil.getMap(request);
        model.addAttribute("type",map.get("type"));
        model.addAttribute("id",map.get("id"));
        return "educationDetial";
    }
    @RequestMapping("/publication")
    public String publication(HttpServletRequest request, Model model){
        Map map = RequestUtil.getMap(request);
        model.addAttribute("type",map.get("type"));
//        model.addAttribute("id",map.get("id"));
        if(map.get("id")!= null){
            model.addAttribute("id",map.get("id"));
            model.addAttribute("isshare",map.get("isshare"));
        }else{
            model.addAttribute("id",0);
            model.addAttribute("isshare",0);
        }
        return "publication";
    }
    @RequestMapping("/share")
    public String share(){
        return "share";
    }

    @RequestMapping("/initHome")
    @ResponseBody
    public Result initHome(){
        Result result = new Result();
        Map map = new HashMap();
        map.put("status",2);
        map.put("type",1);
        try {
            List<Banner> bannerList = bannerService.findAll(map);
            map.remove("type");
            List<Collaboration> collaborationList = collaborationService.findAll(map);
            List<Intro> introList = introService.findAll(map);
            List<Media> mediaList = mediaService.findAll(map);
            map.put("type",1);
            List<Project> projectList = projectService.findAll(map);
            map.remove("type");
            for (Media media : mediaList) {
                DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss",Locale.ENGLISH);
                LocalDateTime date = LocalDateTime.parse( media.getReleaseDate(),formatter);
                String forMatdate =date.format(DateTimeFormatter.ofPattern("dd MMM yyyy HH:mm:ss",Locale.ENGLISH));
                String[] split = forMatdate.split(" ");
                System.out.println(split[0]+","+split[1]+" "+split[2]);
                media.setReleaseDate(split[0]+","+split[1]+" "+split[2]);
                media.setContent(media.getContent().replaceAll("<img","<span"));
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
//        parameterMap.put("initSstatus",-1);
        parameterMap.keySet();
        Result result = new Result();
        Map map = new HashMap();
//        map.put("STATUS",1);
        try
        {
            List<Project> projects = new ArrayList<>();
            List<Map> years = new ArrayList<>();

            if(parameterMap.get("isshare")!= null && parameterMap.get("isshare").toString().equals("1")){
                List<Share> all = shareService.findAll(parameterMap);
                for (Share share : all) {
                    Project project = new Project(share.getId(),share.getTitle(),share.getReleaseDate(),share.getReleaseDate(),share.getContent(),null);
                    projects.add(project);
                }
                years = shareService.findYears();
            }else {
                projects = projectService.findAll(parameterMap);
                years  = projectService.findYears();;
            }

            map.put("type",2);
            List<Banner> banners = bannerService.findAll(map);

            map.put("projects",projects);
            map.put("publicYear",years);
            map.put("banner",banners);
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
        map.put("initSstatus",-1);
//        Map<String, Object> parameterMap = RequestUtil.getMap(request);
        PageResult<Media> page = mediaService.findPage(map);
        for (Media media : page.getData()) {
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss",Locale.ENGLISH);
            LocalDateTime date = LocalDateTime.parse( media.getReleaseDate(),formatter);
            String forMatdate =date.format(DateTimeFormatter.ofPattern("dd MMM yyyy HH:mm:ss",Locale.ENGLISH));
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
//        map.put("initSstatus",-1);
//        Map<String, Object> parameterMap = RequestUtil.getMap(request);
        PageResult<Media> page = mediaService.findPage(map);
        for (Media media : page.getData()) {
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss",Locale.ENGLISH);
            LocalDateTime date = LocalDateTime.parse( media.getReleaseDate(),formatter);
            String forMatdate =date.format(DateTimeFormatter.ofPattern("dd MMM yyyy HH:mm:ss",Locale.ENGLISH));
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
        map.put("initSstatus",-1);
        PageResult<People> page = peopleService.findPage(map);
        return page;
    }
    @RequestMapping("/initActivities")
    @ResponseBody
    public PageResult initActivities(@RequestBody Map map){
        map.put("initSstatus",-1);
        PageResult<Project> page = projectService.findPage(map);
        for (Project project : page.getData()) {
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm",Locale.ENGLISH);
            LocalDateTime date = LocalDateTime.parse( project.getCreatetime(),formatter);
            String forMatdate =date.format(DateTimeFormatter.ofPattern("dd MMM yyyy HH:mm",Locale.ENGLISH));
            String[] split = forMatdate.split(" ");
            System.out.println(split[0]+","+split[1]+" "+split[2]);
            project.setCreatetime(split[0]+","+split[1]+" "+split[2]);
//                mediaList.add(media);
        }
        return page;
    }

    @RequestMapping("/initEducation")
    @ResponseBody
    public Result initEducation(@RequestBody Map map){
        map.put("initSstatus",-1);
        Result result = new Result();
        Map resMap = new HashMap();
        resMap.put("summer",campService.findAll(map));
        resMap.put("reference",referenceService.findAll(map));
        resMap.put("courses",coursesService.findAll());
        result.setObj(resMap);
        result.setSuccess(true);
        return result;
    }

    @RequestMapping("/findOneProject")
    @ResponseBody
    public Project findOneProject(@RequestBody Map map){
        Long id = Long.parseLong(map.get("id").toString());
        Project project = new Project();
        if(map.get("isshare")!= null && map.get("isshare").toString().equals("1")){
            System.out.println("这是share");
            Share share = shareService.findOne(id);
            project = new Project(share.getId(),share.getTitle(),share.getReleaseDate(),share.getReleaseDate(),share.getContent(),null);
        }else {
            System.out.println("这是publication");
            project = projectService.findOne(id);
        }

        String filePath = (FILE_UPLOAD_PATH+project.getProject_file()).replace("\\", "/");
        File file = new File(filePath);

//        if (file.exists()){
            final String[] units = new String[]{"B", "KB", "MB", "GB", "TB"};
            int digitGroups = (int) (Math.log10(file.length()) / Math.log10(1024));
            if(file.getName()!= null && project.getProject_file()!= null){
                project.setFileName(file.getName());
            }else {
                project.setFileName("无文件");
            }
            if(file.length()>0){
                project.setFileSize(new DecimalFormat("#,##0.#").format(file.length() / Math.pow(1024, digitGroups)) + " " + units[digitGroups]);
            }else {
                project.setFileSize("0 MB");
            }
        return project;
    }

    @RequestMapping("/findMediaOne")
    @ResponseBody
    public Media findMediaOne(@RequestBody Map map){
        Long id = Long.parseLong(map.get("id").toString());
        Media media = mediaService.findOne(id);
        media.setReleaseDate(media.getReleaseDate().substring(0,10));
        return media;
    }
    @RequestMapping("/findEducationOne")
    @ResponseBody
    public EducationOne findEducationOne(@RequestBody Map map){
        Long id = Long.parseLong(map.get("id").toString());
        EducationOne educationOne = new EducationOne();
        switch (map.get("type").toString())
        {
            case "summer":
                SummweCamp campOne = campService.findOne(id);
                educationOne.setContent(campOne.getIntro());
                educationOne.setDate(campOne.getStarttime()+" - "+campOne.getEndtime());
                educationOne.setName(campOne.getName());
                break;
            case "reference":
                Reference referenceOne = referenceService.findOne(id);
                educationOne.setContent(referenceOne.getIntro());
                educationOne.setDate(referenceOne.getStarttime()+" - "+referenceOne.getEndtime());
                educationOne.setName(referenceOne.getReferenceName());
                break;
            case "courses":
                Courses coursesOne = coursesService.findOne(id);
                educationOne.setContent(coursesOne.getContent());
                educationOne.setDate(coursesOne.getStarttime()+" - "+coursesOne.getEndtime());
                educationOne.setName(coursesOne.getCourseName());
                break;

        }
        return educationOne;
    }

    @RequestMapping("/initJoinUs")
    @ResponseBody
    public List<People> initJoinUs(@RequestBody Map map){
        map.put("type",1);
        return peopleService.findAll(map);
    }

    @RequestMapping("/initBannerData")
    @ResponseBody
    public  List<Banner>  initBannerData(@RequestBody Map map){

        List<Banner> banners = bannerService.findAll(map);

        return banners;
    }

}
