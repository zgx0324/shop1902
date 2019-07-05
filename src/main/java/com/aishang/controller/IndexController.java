package com.aishang.controller;

import com.aishang.po.Category;
import com.aishang.po.CategoryExt;
import com.aishang.po.CategorySecond;
import com.aishang.po.CategorySecondExt;
import com.aishang.service.ICategoryService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

/*
 * @Author 爱尚实训赵国鑫
 * @ClassName  IndexController
 * @Date 2019/7/4/14:33
 * @Description TODO:(一句话描述这个类)
 */
@RequestMapping("/")
@Controller
public class IndexController {

    @Resource
    private ICategoryService categoryService;

    @RequestMapping("/index")
    public String index(Model model){

        //获取一二级类目集合
        List<CategoryExt<CategorySecond>> categoryExt = categoryService.getCategoryAndCategorySecond();
        model.addAttribute("categoryExt",categoryExt);

        //获取首页二级商品热门列表
        List<CategoryExt<CategorySecondExt>> categorys = categoryService.getIsHotProductList(categoryExt);
        model.addAttribute("categorys",categorys);
        return "index";
    }

}
