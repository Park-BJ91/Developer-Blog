package com.example.demo;

import org.springframework.boot.SpringApplication;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;


@SpringBootApplication(exclude={DataSourceAutoConfiguration.class})
@Controller
public class Demo2Application {

	public static void main(String[] args) {
		SpringApplication.run(Demo2Application.class, args);
	}
	
	@GetMapping("/")
	public String Test(ModelMap model) throws Exception{
		// .web이 tiles.xml에서 접미어로 구분하여 적용
		return "main/index.web";
	}
	
}
