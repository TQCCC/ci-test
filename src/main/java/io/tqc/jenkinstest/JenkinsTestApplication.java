package io.tqc.jenkinstest;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Configuration;

/**
 * @author tqccc
 */
@SpringBootApplication
@Configuration
public class JenkinsTestApplication {
    public static void main(String[] args) {
        SpringApplication.run(JenkinsTestApplication.class, args);
    }
}
