package com.aishang.controller;

import com.aishang.po.CategoryExt;
import com.aishang.po.Product;
import com.aishang.po.ProductBean;
import com.aishang.service.IProductService;
import com.aishang.util.CategoryUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.List;

/*
 * @Author 爱尚实训赵国鑫
 * @ClassName  ProductController
 * @Date 2019/7/8/9:24
 * @Description TODO:(一句话描述这个类)
 */
@Controller
@RequestMapping("/product")
public class ProductController {

    @Resource
    private IProductService productService;

    @RequestMapping("/searchProduct")
    public String searchProduct(ProductBean productBean, Model model){
        //返回一二级类目导航集合
        List<CategoryExt> allCategoryExt = CategoryUtil.categoryUtil.getAllCategoryExt();
        model.addAttribute("allCategory",allCategoryExt);

        //返回复合查询结果
        productBean = productService.searchProduct(productBean);
        model.addAttribute("productBean",productBean);

        return "searchProduct";
    }
}
