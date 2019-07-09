package com.aishang.util;
/*
 * @Author 爱尚实训赵国鑫
 * @ClassName  CategoryUtil
 * @Date 2019/7/8/10:06
 * @Description TODO:(一句话描述这个类)
 */

import com.aishang.po.CategoryExt;
import com.aishang.po.Product;
import com.aishang.service.ICategoryService;
import com.aishang.service.IProductService;
import org.springframework.stereotype.Component;


import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import javax.servlet.ServletContext;
import java.util.List;

@Component
public class CategoryUtil {
    //创建一个自己的静态成员变量对象
    public static CategoryUtil categoryUtil;
    @Resource
    private ServletContext applicationContext;

    @PostConstruct
    public void init(){
        categoryUtil=this;
    }
    @Resource
    private ICategoryService categoryService;
    @Resource
    private IProductService productService;
    /**
     * 返回一二级类目集合
     * @return
     */
    public  List<CategoryExt> getAllCategoryExt(){
        return categoryService.getAllCategoryExt();
    }

    //热搜商品集合
    @PostConstruct
    public void getSearchHotProducts(){
        applicationContext.setAttribute("searchHotProducts",productService.searchHotProduct());
    }
}
