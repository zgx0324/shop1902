package com.aishang.dao;
/*
 * @Author 爱尚实训赵国鑫
 * @ClassName  ICategoryDao
 * @Date 2019/7/5/8:50
 * @Description TODO:(一句话描述这个类)
 */

import com.aishang.po.CategoryExt;
import com.aishang.po.CategorySecondExt;

import java.util.List;

public interface ICategoryDao {

    /**
     * 返回CategoryExt集合
     */
    List<CategoryExt> getAllCategoryExt();

    /**
     * 根据一级类目id查询二级类目Ext集合
     * @param cid
     * @return
     */
    List<CategorySecondExt> getCategorySecondExtByCid(Integer cid);
}
