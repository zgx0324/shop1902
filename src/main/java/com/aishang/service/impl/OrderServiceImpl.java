package com.aishang.service.impl;
/*
 * @Author 爱尚实训赵国鑫
 * @ClassName  OrderServiceImpl
 * @Date 2019/7/12/9:49
 * @Description TODO:(一句话描述这个类)
 */

import com.aishang.dao.IOrderDao;
import com.aishang.po.Order;
import com.aishang.po.OrderExt;
import com.aishang.po.OrderItemExt;
import com.aishang.service.IOrderService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;

@Service
@Transactional
public class OrderServiceImpl implements IOrderService {

    @Resource
    private IOrderDao orderDao;

    @Override
    public void createOrder(OrderExt orderExt) {
        orderDao.createOrder(orderExt);
    }

    @Override
    public void createOrderItem(OrderItemExt orderItemExt) {
        orderDao.createOrderItem(orderItemExt);
    }

    @Override
    public void change(Order order) {
        orderDao.change(order);
    }

    @Override
    public OrderExt getOrderExt(Integer oid) {
        return orderDao.getOrderExt(oid);
    }
}
