package com.developer.blog.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class IndexController {

    @GetMapping("/")
    public String index(ModelMap model) throws Exception{
        // .web이 tiles.xml에서 접미어로 구분하여 적용
        return "/main/index.user";
    }
}