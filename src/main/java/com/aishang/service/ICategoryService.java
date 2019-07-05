package com.aishang.service;
/*
 * @Author 爱尚实训赵国鑫
 * @ClassName  ICategoryService
 * @Date 2019/7/4/14:49
 * @Description TODO:(一句话描述这个类)
 */

import com.aishang.po.CategoryExt;
import com.aishang.po.CategorySecond;
import com.aishang.po.CategorySecondExt;

import java.util.List;

public interface ICategoryService {

    //获取一二级类目集合
    List<CategoryExt<CategorySecond>> getCategoryAndCategorySecond();

    //获取二级热门商品集合
    List<CategoryExt<CategorySecondExt>> getIsHotProductList(List<CategoryExt<CategorySecond>> categoryExt);
}
