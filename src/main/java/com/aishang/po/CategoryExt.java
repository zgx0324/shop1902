package com.aishang.po;
/*
 * @Author 爱尚实训赵国鑫
 * @ClassName  CategoryExt
 * @Date 2019/7/5/8:46
 * @Description TODO:(一级类目扩展类)
 */

import java.util.List;

public class CategoryExt<T> extends Category {

    private Integer cid;
    private String cname;
    //二级类目集合
    private List<T> categorySeconds;

    public List getCategorySeconds() {
        return categorySeconds;
    }

    public void setCategorySeconds(List categorySeconds) {
        this.categorySeconds = categorySeconds;
    }
}
