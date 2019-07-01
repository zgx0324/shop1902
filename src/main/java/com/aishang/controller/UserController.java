package com.aishang.controller;

import javax.servlet.http.HttpServletRequest;

import com.aishang.po.User;
import com.aishang.service.IUserService;
import com.alibaba.fastjson.JSON;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping("/user")
public class UserController {

    @Resource
    private IUserService userService;

    @RequestMapping("/showUser")
    public void selectUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("UTF-8");
        response.setContentType("text;html;charset=utf-8");
        long userId = Long.parseLong(request.getParameter("id"));
        User user = this.userService.selectUser(userId);
        response.getWriter().write(JSON.toJSONString(user));
        response.getWriter().close();

    }

    @RequestMapping("/springmvcDemo")
    public String login() throws IOException {

        //请求转发
        return "login";
    }

}
