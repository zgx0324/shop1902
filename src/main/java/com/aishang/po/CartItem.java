package com.aishang.po;
/*
 * @Author 爱尚实训赵国鑫
 * @ClassName  CartItem
 * @Date 2019/7/11/8:37
 * @Description TODO:(一句话描述这个类)
 */

public class CartItem {

    private Product product;
    private Integer count;
    private Double total=0.0;

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public Double getTotal() {

        return count*product.getShopPrice();
    }


}
