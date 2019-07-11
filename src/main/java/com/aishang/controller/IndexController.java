package com.aishang.controller;

import com.aishang.po.Category;
import com.aishang.po.CategoryExt;
import com.aishang.po.Product;
import com.aishang.po.User;
import com.aishang.service.ICategoryService;
import com.aishang.service.IUserService;
import com.aishang.util.CategoryUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

/*
 * @Author 爱尚实训赵国鑫
 * @ClassName  DoLogin
 * @Date 2019/7/4/9:13
 * @Description TODO:(一句话描述这个类)
 */
@RequestMapping("/")
@Controller
public class IndexController {

    @Resource
    private ICategoryService categoryService;
    @Resource
    private IUserService userService;
    @Resource
    private HttpSession session;

    //去往登录页
    @RequestMapping("/login")
    public String login(){
        return "login";
    }
// TODO 2, 登录校验以及跳转主页

    @RequestMapping("/doLogin")
    public String doLogin(User user, String remember, HttpServletResponse response) {
        // 调用userService方法验证用户登录信息返回值为User对象
        User user1= userService.doLogin(user);
        // 若User对象不为空意为登陆成功跳转index页，否则为登陆失败返回登录页
        if(user1!=null){ //----------------------------登录成功
            // 创建session
            session.setAttribute("user",user1);
            // 创建cookie
            Cookie cookie1 = new Cookie("userName",user1.getUserName());
            Cookie cookie2 = new Cookie("passWord",user1.getPassWord());

            if (remember != null) {
                cookie1.setMaxAge(60*60*24*7);
                cookie2.setMaxAge(60*60*24*7);
            }else{
                cookie1.setMaxAge(0);
                cookie2.setMaxAge(0);
            }
            cookie1.setPath("/");
            cookie2.setPath("/");
            response.addCookie(cookie1);
            response.addCookie(cookie2);
            return "redirect:/index.do";
        }else { //----------------------------登录失败,返回login页
            return "redirect:login.do?msg=error";
        }

    }

    /**
     * TODO: 退出登录
     */
    @RequestMapping("/outLogin")
    public String outLogin(){
       session.removeAttribute("user");
        return "login";
    }


    //去往主页
    @RequestMapping("/index")
    public String index(Model model){
        //返回一二级类目的CategoryExt<CategorySecond>集合
        List<CategoryExt> allCategoryExt = categoryService.getAllCategoryExt();
        model.addAttribute("allCategory",allCategoryExt);


        //返回一级和二类扩展类CategoryExt<CategorySecondExt>的集合
        List<CategoryExt> categoryExtAndProduct=categoryService.getAllCategoryExtAndProduct(allCategoryExt);
        model.addAttribute("categoryExtAndProduct",categoryExtAndProduct);
        return "index";
    }
}
