package com.example.demo;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by win10 on 2017/7/20.
 */
@RestController
public class HelloWorldController {

    @RequestMapping("/")
    public String index(){
        return "{\"message\":\"I'm jenkins test!\"}";
    }
}
