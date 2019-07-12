package com.aishang.po;
/*
 * @Author 爱尚实训赵国鑫
 * @ClassName  OrderExt
 * @Date 2019/7/12/9:34
 * @Description TODO:(一句话描述这个类)
 */

import java.util.List;

public class OrderExt extends Order {

    private  List<OrderItemExt> orderItemExts;

    public List<OrderItemExt> getOrderItemExts() {
        return orderItemExts;
    }

    public void setOrderItemExts(List<OrderItemExt> orderItemExts) {
        this.orderItemExts = orderItemExts;
    }
}
