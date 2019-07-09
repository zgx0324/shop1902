package com.aishang.dao;
/*
 * @Author 爱尚实训赵国鑫
 * @ClassName  IProductDao
 * @Date 2019/7/8/8:50
 * @Description TODO:(一句话描述这个类)
 */

import com.aishang.po.PageBean;
import com.aishang.po.Product;
import com.aishang.po.ProductBean;

import java.util.List;

public interface IProductDao {

    /**
     * 根据一二级类目复合查询商品列表
     */
    List<Product> searchProducts(ProductBean productBean);

    /**
     * 查询商品总记录数
     */
    Integer getRowCount(ProductBean productBean);

    /**
     * 根据商品id查询商品
     * @param pid
     * @return
     */
    Product findProduct(Integer pid);

    /**
     * 查询热搜商品
     */
    List<Product> searchHotProduct();
}
