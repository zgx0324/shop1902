package com.aishang.controller;

import com.aishang.po.Category;
import com.aishang.po.CategoryExt;
import com.aishang.po.Product;
import com.aishang.service.ICategoryService;
import com.aishang.util.CategoryUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
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

    //去往登录页
    @RequestMapping("/login")
    public String login(){
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
