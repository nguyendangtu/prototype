package com.demo.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {

    @RequestMapping(method = RequestMethod.GET, value = "/index1")
    public String getSamples() {
        return "/index1";
    }

    @RequestMapping(method = RequestMethod.GET, value = "/index3")
    public String index3() {
        return "/test/index3";
    }



}
