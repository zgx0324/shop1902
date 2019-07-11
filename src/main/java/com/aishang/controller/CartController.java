package com.aishang.controller;

import com.aishang.po.Cart;
import com.aishang.po.CartItem;
import com.aishang.po.Product;
import com.aishang.service.IProductService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

/*
 * @Author 爱尚实训赵国鑫
 * @ClassName  CartController
 * @Date 2019/7/11/9:13
 * @Description TODO:(一句话描述这个类)
 */
@Controller
@RequestMapping("/cart")
public class CartController {
    @Resource
    private HttpSession session;
    @Resource
    private IProductService productService;


    /**
     * 去往购物车页
     */
    @RequestMapping("/toCart")
    public String toCart(){
        return "cart";
    }

    /**
     * 添加购物项
     * @param pid
     * @param count
     * @return
     */
    @RequestMapping("/addCartItem")
    @ResponseBody
    public String addCartItem(Integer pid,Integer count){
        Product product = productService.findProduct(pid);

        //封装购物项信息
        CartItem cartItem = new CartItem();
        cartItem.setCount(count);
        cartItem.setProduct(product);

        Cart cart= (Cart)session.getAttribute("cart");

        if(cart!=null){
            //直接使用该购物车
            cart.addCartItem(cartItem);
        }else {
            //新创建一个购物车

            cart = new Cart();
            cart.addCartItem(cartItem);
            session.setAttribute("cart",cart);
        }

        return cart.getSubTotal()+"";
    }

    /**
     * 删除购物项
     */
    @ResponseBody
    @RequestMapping("/removeCartItem")
    public String removeCartItem(Integer pid){
        Cart cart= (Cart)session.getAttribute("cart");
        if(cart.isContent(pid)){
            //移除
            cart.removeCartItem(pid);
            return cart.getSubTotal()+"";
        }else {
            return "";
        }

    }

    /**
     * 更改购物项数量
     */
    @ResponseBody
    @RequestMapping("/changeCount")
    public String changeCount(Integer pid, Integer count){
        Cart cart= (Cart)session.getAttribute("cart");
        if(cart.isContent(pid)){
            cart.changeCount(pid,count);
            return cart.getSubTotal()+"";
        }else {
            return "";
        }

    }

    /**
     * 清空购物车
     */
    @RequestMapping("/clear")
    public void clear(){
        Cart cart= (Cart)session.getAttribute("cart");
        cart.clearCartItem();
    }
}
