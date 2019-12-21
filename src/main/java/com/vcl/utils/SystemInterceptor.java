package com.vcl.utils;

import com.vcl.pojo.User;
import org.apache.logging.log4j.LogManager;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

/**
 * @Autor zhaoqh
 * @Date 2019/11/11
 * * @Usage 系统拦截器
 * @ChangeLog
 */
public class SystemInterceptor implements HandlerInterceptor {

    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
//        LoggerManager.getLogger().info("系统正在初始化...");
//        Logger log = LogManager.getLogger(LogPropertiesTest.class);
//        LoggerManager.getLogger().debug("调试");
//        LoggerManager.getLogger().info("信息");
//        LoggerManager.getLogger().warn("警告");
//        LoggerManager.getLogger().error("错误");
//        System.out.println("Interceptor _ preHandle");
        String uri = request.getRequestURI();
        System.out.println(uri);
        //UTL:除了login.jsp是可以公开访问的，其他的URL都进行拦截控制
        if (uri.indexOf("/coustom/login") >= 0) {
            return true;
        }else if(uri.indexOf("/home") >= 0){
            return true;
        }
        //获取session
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        //判断session中是否有用户数据，如果有，则返回true，继续向下执行
        if (user != null) {
            return true;
        }
        //不符合条件的给出提示信息，并转发到登录页面
        request.setAttribute("msg", "您还没有登录，请先登录！");
        request.getRequestDispatcher("/coustom/login").forward(request, response);
        return false;
    }

    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {
        LoggerManager.getLogger().info("系统正在初始化...");
        System.out.println("Interceptor _ postHandle");
    }

    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {
        LoggerManager.getLogger().info("系统正在初始化...");
        System.out.println("Interceptor _ afterCompletion");
    }

//    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
//        String user_agent = request.getHeader("user-agent");
////        boolean isPhone = StringUtils.checkAgentIsMobile(user_agent);
//        if (null != request.getHeader("Host") && !(request.getHeader("Host") + "").equals("")) {
//            String host = request.getHeader("Host") + "";
//            if (request.getSession().getAttribute("Host") == null) {
//                request.getSession().setAttribute("DOMAIN_NAME", host);
//            }
//            if (null != request.getSession().getAttribute("DOMAIN_NAME") && !(request.getSession().getAttribute("DOMAIN_NAME") + "").equals(host)) {
//                request.getSession().setAttribute("DOMAIN_NAME", host);
//            }
//        }
//        request.getSession().setAttribute("DOMAIN_NAME", "wonder.netgis.cn");
////        request.getSession().setAttribute("DOMAIN_NAME", "measure.netgis.cn");
////        request.getSession().setAttribute("DOMAIN_NAME", "syabroad.wonology.com");
//        //请求参数整理
//        this.fixRequestParams(request);
//        //分页排序
//        this.setPagerInfo(request);
//        //其它 权限==
//        //添加操作日志
////        this.addOperationLog(request);
//        return true;
//    }
//
//    /**
//     * 请求参数整理
//     *
//     * @param request
//     */
//    private void fixRequestParams(HttpServletRequest request) {
//        Map params = new HashMap();
//        params.put("PUBLIC_APP_DOMAIN_NAME", request.getSession().getAttribute("DOMAIN_NAME"));
//        Map m = request.getParameterMap();
//        logger.debug("request parameters:");
//        m.forEach((key, value) -> {
//            String[] vals = (String[]) value;
//            StringBuffer sb = new StringBuffer();
//            for (String s : vals) {
//                sb.append(s).append(",");
//            }
//            String val = sb.substring(0, sb.length() - 1);
//            params.put(key, val);
//            logger.debug(request.getRequestURI() + " : " + key + "-> " + val);
//        });
//    }
//
//    /**
//     * 给每个方法都加上分页信息
//     */
//    private void setPagerInfo(HttpServletRequest request) {
////        String req_size = request.getParameter(PagerUtils.PAGE_SIZE);
////        String req_num = request.getParameter(PagerUtils.PAGE_NUMBER);
////        String order = request.getParameter(PagerUtils.ORDER);
////        String sort = request.getParameter(PagerUtils.SORT);
////        String statistic = request.getParameter(PagerUtils.STATISTIC);
////        int size = 0, number = 0;
////        if (req_size != null && req_num != null) {
////            size = Integer.parseInt(req_size);
////            number = Integer.parseInt(req_num);
////        }
////        boolean req_pager = size != 0 && number != 0;
////        boolean req_sort = sort != null && order != null;
////        PagerUtils pagerUtils = new PagerUtils();
////
////        if (!StringUtils.isEmpty(statistic)) {//统计
////            pagerUtils.setPager(true);
////            pagerUtils.setStatistic(statistic);
////        }
////        if (req_pager) {//分页
////            pagerUtils.setPager(true);
////            pagerUtils.setPageSize(size);
////            pagerUtils.setPageNumber(number);
////
////        }
////        if (req_sort) {//排序
////            pagerUtils.setPager(true);
////            pagerUtils.setSort(sort);
////            pagerUtils.setOrder(order);
////        }
////        LocalThread.setPager(pagerUtils);
//    }
}
