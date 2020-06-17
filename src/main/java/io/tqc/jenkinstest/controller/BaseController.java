package io.tqc.jenkinstest.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author tqccc
 * @date 2017/7/20
 */
@RestController
@RequestMapping("/")
public class BaseController {

    @GetMapping("/index")
    public String index() {
        return "JenkinsTest";
    }

}
