package com.aishang.controller;

import cn.dsna.util.images.ValidateCode;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/*
 * @Author 爱尚实训赵国鑫
 * @ClassName  ValidateController
 * @Date 2019/7/4/8:38
 * @Description TODO:(验证码)
 */
@RequestMapping("/")
@Controller
public class ValidateController {

    @Resource
    HttpSession session;

    @RequestMapping("/imgCode")
    public void imgCode(HttpServletResponse response) {
        ValidateCode validateCode = new ValidateCode(163,64,4,100);
        String code = validateCode.getCode();
        session.setAttribute("code",code);

        try {
            validateCode.write(response.getOutputStream());
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    @RequestMapping("/checkCode")
    @ResponseBody
    public String checkCode(String code) {
        if (code != null) {
            if (code.equalsIgnoreCase((String) session.getAttribute("code"))) {
                return "true";
            } else {
                return "false";
            }
        }else{
            return "false";
        }


    }
}
