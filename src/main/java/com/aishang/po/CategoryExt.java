package com.aishang.po;
/*
 * @Author 爱尚实训赵国鑫
 * @ClassName  CategoryExt
 * @Date 2019/7/4/14:39
 * @Description TODO:(一句话描述这个类)
 */

import java.util.List;

public class CategoryExt<T> extends Category {

    private List<T> categorySecondList;

    public List<T> getCategorySecondList() {
        return categorySecondList;
    }

    public void setCategorySecondList(List<T> categorySecondList) {
        this.categorySecondList = categorySecondList;
    }
}
