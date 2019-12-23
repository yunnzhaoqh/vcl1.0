package com.vcl.utils;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class RequestUtil {

    /**
     * 直接从request中获取所有参数
     *
     * @param request
     * @return
     */
    public static Map getMap(HttpServletRequest request) {
        Map requestParams = request.getParameterMap(); //将异步通知中收到的所有参数都存放到map中
        Map<String, String> params = new HashMap<String, String>();

        for (Iterator iter = requestParams.keySet().iterator(); iter.hasNext(); ) {
            String name = (String) iter.next();
            String[] values = (String[]) requestParams.get(name);
            String valueStr = "";
            for (int i = 0; i < values.length; i++) {
                valueStr = (i == values.length - 1) ? valueStr + values[i] : valueStr + values[i] + ",";
                //乱码解决，这段代码在出现乱码时使用。
                //valueStr = new String(valueStr.getBytes("ISO-8859-1"), "utf-8");
                params.put(name, valueStr);
//                params.put(name.toUpperCase(), valueStr);
            }
        }
        return params;
    }
}
