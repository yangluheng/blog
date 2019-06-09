package com.datou.controller;

import com.datou.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class HomeController {

    @Autowired
    private IUserService userService;

    @RequestMapping("index")
    public String index(){
        return "front/index";
    }




}
