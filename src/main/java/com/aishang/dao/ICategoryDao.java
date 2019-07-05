package com.aishang.dao;
/*
 * @Author 爱尚实训赵国鑫
 * @ClassName  ICategoryDao
 * @Date 2019/7/4/14:55
 * @Description TODO:(一句话描述这个类)
 */

import com.aishang.po.CategoryExt;
import com.aishang.po.CategorySecond;
import com.aishang.po.CategorySecondExt;

import java.util.List;

public interface ICategoryDao {

    /**
     * 获取一二级类目集合
     * @return
     */
    List<CategoryExt<CategorySecond>> getCategoryAndCategorySecond();

    /**
     * 根据一级类目id获取二级类目Ext集合
     * @param cid
     * @return
     */
    List<CategorySecondExt> getIsHotProductListByCid(Integer cid);
}
