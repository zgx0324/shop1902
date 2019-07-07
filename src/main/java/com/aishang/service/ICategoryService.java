package com.aishang.service;
/*
 * @Author 爱尚实训赵国鑫
 * @ClassName  ICategoryService
 * @Date 2019/7/5/9:16
 * @Description TODO:(一句话描述这个类)
 */

import com.aishang.po.CategoryExt;

import java.util.List;

public interface ICategoryService {

    /**
     * 返回CategoryExt集合
     */
    List<CategoryExt> getAllCategoryExt();

    List<CategoryExt> getAllCategoryExtAndProduct(List<CategoryExt> allCategoryExt);
}
