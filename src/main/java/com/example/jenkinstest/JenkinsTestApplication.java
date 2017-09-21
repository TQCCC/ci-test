package com.example.jenkinstest;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;

@SpringBootApplication
@Configuration
@ComponentScan("com.example.jenkinstest")
public class JenkinsTestApplication {

	public static void main(String[] args) {
		SpringApplication.run(JenkinsTestApplication.class, args);
	}
}
