package com.aishang.po;
/*
 * @Author 爱尚实训赵国鑫
 * @ClassName  Cart
 * @Date 2019/7/11/8:40
 * @Description TODO:(购物车的实体类)
 */

import java.util.*;

public class Cart {

    private Map<Integer,CartItem> cartItems = new LinkedHashMap<Integer,CartItem>();
    private Double subTotal=0.0;

    public Double getSubTotal() {
        return subTotal;
    }

    public Collection< CartItem> getCartItems() {
        return cartItems.values();
    }

    //判断购物车中是否含有这个购物项
    public boolean isContent(Integer pid){
       return cartItems.containsKey(pid);
    }

    //添加到购物车
    public void addCartItem(CartItem cartItem){
        Integer pid=cartItem.getProduct().getPid();
        //购物车已有购物项则数量累加
        if(cartItems.containsKey(pid)){

            CartItem old = cartItems.get(pid);

            Integer oldCount = old.getCount();
            Integer newCount = cartItem.getCount();
            old.setCount(oldCount+newCount);

        }else {
            //否则直接添加
            cartItems.put(pid,cartItem);
        }
        subTotal = subTotal+cartItem.getTotal();
    }

    //移除购物项
    public void removeCartItem(Integer pid){
        subTotal=subTotal-cartItems.get(pid).getTotal();
        cartItems.remove(pid);
    }

    //清空购物车
    public void clearCartItem(){
        cartItems.clear();
        subTotal=0.0;
    }

    //更改数量
    public void changeCount(Integer pid,Integer newCount){
        CartItem cartItem =  cartItems.get(pid);
        Integer old = cartItem.getCount();
        subTotal=subTotal-cartItem.getTotal();

        cartItem.setCount(newCount);
        subTotal=subTotal+cartItem.getTotal();
    }
}
