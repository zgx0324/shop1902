package com.aishang.util;
/*
 * @Author 爱尚实训赵国鑫
 * @ClassName  CategoryUtil
 * @Date 2019/7/8/10:06
 * @Description TODO:(一句话描述这个类)
 */

import com.aishang.po.CategoryExt;
import com.aishang.service.ICategoryService;
import org.springframework.stereotype.Component;


import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import java.util.List;

@Component
public class CategoryUtil {
    //创建一个自己的静态成员变量对象
    public static CategoryUtil categoryUtil;

    @PostConstruct
    public void init(){
        categoryUtil=this;
    }
    @Resource
    private ICategoryService categoryService;

    /**
     * 返回一二级类目集合
     * @return
     */
    public  List<CategoryExt> getAllCategoryExt(){
        return categoryService.getAllCategoryExt();
    }
}
