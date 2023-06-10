package com.course.generator.server;

import com.course.generator.util.FreeMarkerUtil;
import freemarker.template.TemplateException;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class ServerGenerator {
    static String toServicePath = "server/src/main/java/com/course/server/service/";
    static String toControllerPath = "business/src/main/java/com/course/business/controller/admin/";

    public static void main(String[] args) throws TemplateException, IOException {
        String Domain = "Section";
        String domain = "section";
        Map<String, Object> map = new HashMap<>();
        map.put("Domain", Domain);
        map.put("domain", domain);

        // 生成service
        FreeMarkerUtil.initConfig("service.ftl");
        FreeMarkerUtil.generator(toServicePath + Domain + "Service.java", map);

        // 生成controller
        FreeMarkerUtil.initConfig("controller.ftl");
        FreeMarkerUtil.generator(toControllerPath + Domain + "Controller.java", map);
    }
}
