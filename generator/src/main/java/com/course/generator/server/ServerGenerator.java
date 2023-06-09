package com.course.generator.server;

import com.course.generator.util.FreeMarkerUtil;
import freemarker.template.TemplateException;

import java.io.IOException;

public class ServerGenerator {
    static String toPath = "generator/src/main/java/com/course/generator/test/";

    public static void main(String[] args) throws TemplateException, IOException {
        FreeMarkerUtil.initConfig("test.ftl");
        FreeMarkerUtil.generator(toPath + "Test.java");
    }
}
