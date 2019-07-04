package com.aishang.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/*
 * @Author 爱尚实训赵国鑫
 * @ClassName  DoLogin
 * @Date 2019/7/4/9:13
 * @Description TODO:(一句话描述这个类)
 */
@RequestMapping("/")
@Controller
public class DoLogin {


    @RequestMapping("/login")
    public String login(){
        return "login";
    }
}
