package com.example.jenkinstest.controller;

import com.example.jenkinstest.model.vo.ResponseVO;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by win10 on 2017/7/20.
 */
@RestController
public class BaseController {

    @RequestMapping("/")
    @ResponseBody
    public ResponseVO index() {
        ResponseVO responseVO = new ResponseVO();
        responseVO.setResult("[branch:master]jenkins-test!");
        return responseVO;
    }

}
