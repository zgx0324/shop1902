package com.aishang.po;
/*
 * @Author 爱尚实训赵国鑫
 * @ClassName  CategorySecondExt
 * @Date 2019/7/4/14:42
 * @Description TODO:(一句话描述这个类)
 */


import java.util.List;

public class CategorySecondExt extends CategorySecond {

    private List<Product> productList;

    public List<Product> getProductList() {
        return productList;
    }

    public void setProductList(List<Product> productList) {
        this.productList = productList;
    }
}
