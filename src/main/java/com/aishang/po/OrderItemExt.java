package com.aishang.po;
/*
 * @Author 爱尚实训赵国鑫
 * @ClassName  OrderItemExt
 * @Date 2019/7/12/9:30
 * @Description TODO:(一句话描述这个类)
 */

public class OrderItemExt extends OrderItem {

    private Product product;

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
}
