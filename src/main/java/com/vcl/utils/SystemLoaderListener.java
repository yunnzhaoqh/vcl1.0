package com.vcl.utils;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.core.io.support.PropertiesLoaderUtils;
import org.springframework.web.context.ContextLoaderListener;

import javax.servlet.ServletContextEvent;
import java.io.IOException;
import java.util.Objects;
import java.util.Properties;

public class SystemLoaderListener extends ContextLoaderListener {

//    Logger logger=  LogManager.getLogger(SystemLoaderListener.class);
    static Resource db = new ClassPathResource("jdbc.properties");
    static Resource config=new ClassPathResource("config.properties");
    static final int QUEUE_SIZE = 20;
    static Properties props;


    //系统初始化时执行的方法
    public void contextInitialized(ServletContextEvent event) {
        LoggerManager.getLogger().info("系统正在初始化...");
        //初始化excel上传处理类
        //initExcelProcessor();

        try {
            //初始化系统常量
//            loadRlstInfomation();
            //初始化系统环境
            initSystemContext(event);
        } catch (IOException e) {
            e.printStackTrace();
        }

        LoggerManager.getLogger().info("系统初始化完毕");
    }

    private void initSystemContext(ServletContextEvent event) throws IOException {
        LoggerManager.getLogger().info("系统初始化完毕");
//        props = PropertiesLoaderUtils.loadProperties(config);
//        event.getServletContext().setAttribute(SystemConstants.IMAGE_CONTEXT,props.getProperty("IMAGES_SERVER"));
//        SystemConstants.set(SystemConstants.IMAGES_SVAE_PATH,props.getProperty("IMAGES_SVAE_PATH"));
    }

//    private void initExcelProcessor() {
//        FileProcessUtils.box = new ArrayBlockingQueue<>(QUEUE_SIZE);
//        Thread t = new Thread(new FileProcessUtils());
//        t.start();
//    }



}
