package com.aishang.controller;



import com.aishang.po.User;
import com.aishang.service.IUserService;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;



@Controller
@RequestMapping("/user")
public class UserController {

    @Resource
    private IUserService userService;


    @RequestMapping("/register")
    public String register(){

        return "register";
    }

    /**
     *
     * @param userName
     * @return
     * TODO   ajax验证用户名
     */
    @ResponseBody
    @RequestMapping("/checkUserName")
    public String checkUserName(String userName){

       User user = userService.selectUserByUserName(userName);
       if(user==null){
           return "ok"; }else {
           return "no";
       }


    }

    //执行注册
    @RequestMapping("/doRegister")
    public String doRegister(User user, Model model){
        boolean flag = true;
        if(user==null){
            flag=false;
        }else{
            if(user.getUserName()==null ||"".equals(user.getUserName().trim())){
                flag=false;
                model.addAttribute("userNameMsg","用户名不可为空");
            }
        }
        if(flag){
            //调用service添加
            userService.addUser(user);
            model.addAttribute("userName",user.getUserName());
            return "login";
        }else{
            //注册参数回显
            model.addAttribute("user",user);
            return "register";
        }



    }

}
