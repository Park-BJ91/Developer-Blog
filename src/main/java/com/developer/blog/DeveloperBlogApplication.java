package com.developer.blog;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;

@SpringBootApplication(exclude = DataSourceAutoConfiguration.class)
public class DeveloperBlogApplication {
	public static void main(String[] args) {
		SpringApplication.run(DeveloperBlogApplication.class, args);
	}
}