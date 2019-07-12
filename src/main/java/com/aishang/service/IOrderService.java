package com.aishang.service;
/*
 * @Author 爱尚实训赵国鑫
 * @ClassName  IOrderService
 * @Date 2019/7/12/9:50
 * @Description TODO:(一句话描述这个类)
 */

import com.aishang.po.Order;
import com.aishang.po.OrderExt;
import com.aishang.po.OrderItemExt;

public interface IOrderService {

    //添加订单到订单表
    void createOrder(OrderExt orderExt);

    //添加订单项到订单项表
    void createOrderItem(OrderItemExt orderItemExt);

    //修改订单状态
    void change(Order order);

    OrderExt getOrderExt(Integer oid);
}
