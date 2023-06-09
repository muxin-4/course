package com.course.generator.server;

import com.course.generator.util.FreeMarkerUtil;
import freemarker.template.TemplateException;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

public class ServerGenerator {
//    static String toPath = "generator/src/main/java/com/course/generator/test/";
    static String toServicePath = "server/src/main/java/com/course/server/service/";
    public static void main(String[] args) throws TemplateException, IOException {
        String Domain = "Section";
        String domain = "section";
        Map<String, Object> map = new HashMap<>();
        map.put("Domain", Domain);
        map.put("domain", domain);

//        FreeMarkerUtil.initConfig("test.ftl");
//        FreeMarkerUtil.generator(toPath + "Test.java", map);
        FreeMarkerUtil.initConfig("service.ftl");
        FreeMarkerUtil.generator(toServicePath + Domain + "Service.java", map);
    }
}
