package com.aishang.service;

import com.aishang.po.Product;
import com.aishang.po.ProductBean;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

/*
 * @Author 爱尚实训赵国鑫
 * @ClassName  IProductService
 * @Date 2019/7/8/9:19
 * @Description TODO:(一句话描述这个类)
 */

public interface IProductService {

    /**
     * 根据一二级类目复合查询商品列表
     */
    ProductBean searchProduct(ProductBean productBean);
}
