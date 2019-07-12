package com.aishang.controller;

import com.aishang.po.*;

import com.aishang.service.IOrderService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

/*
 * @Author 爱尚实训赵国鑫
 * @ClassName  OrderController
 * @Date 2019/7/12/8:38
 * @Description TODO:(一句话描述这个类)
 */
@Controller
@RequestMapping("/order")
public class OrderController {
    @Resource
    private HttpSession session;

    @Resource
    private IOrderService orderService;

    /**
     * 去往确认订单页面
     * @return
     */
    @RequestMapping("/toConfirmOrder")
    public String toConfirmOrder(){
        if(session.getAttribute("user")!=null){
            return "confirmOrder";
        }else {
            return "login";
        }

    }

    /**
     * 去往支付页面
     */
    @RequestMapping("/toPay")
    public String toPay(OrderExt orderExt, Model model){
        User user = (User)session.getAttribute("user");
        Cart cart = (Cart)session.getAttribute("cart");
        //1，接收信息
        //***************封装订单信息****************************
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String orderTime = sdf.format(new Date());
        orderExt.setOrderTime(orderTime);
        orderExt.setUid(user.getUid());
        orderExt.setTotal(cart.getSubTotal());
        //添加订单信息到数据库
        orderService.createOrder(orderExt);
        //******************封装订单项信息*****************
        Collection<CartItem> cartItems = cart.getCartItems();
        List<OrderItemExt> orderItemExts = new ArrayList<OrderItemExt>();
        for (CartItem cartItem : cartItems) {
            //创建订单项对象
            OrderItemExt orderItemExt = new OrderItemExt();
            orderItemExt.setProduct(cartItem.getProduct());
            orderItemExt.setCount(cartItem.getCount());
            orderItemExt.setPid(cartItem.getProduct().getPid());
            orderItemExt.setSubtoTal(cartItem.getTotal());
            orderItemExt.setOid(orderExt.getOid());
            orderService.createOrderItem(orderItemExt);
            orderItemExts.add(orderItemExt);
        }
        orderExt.setOrderItemExts(orderItemExts);
        //2，生成待支付订单

        session.removeAttribute("cart");
        model.addAttribute("orderExt",orderExt);
        return "pay";
    }

    //更改订单状态
    @RequestMapping("/paySuccess")
    public String paySuccess( Order order,Model model){

        order.setState(1);
        //更改订单状态为已支付
        orderService.change(order);
        //查询订单信息并回显
        OrderExt orderExt = orderService.getOrderExt(order.getOid());
        model.addAttribute("orderExt",orderExt);
        return "paySuccess";
    }




}
