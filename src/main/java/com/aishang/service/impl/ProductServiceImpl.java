package com.aishang.service.impl;
/*
 * @Author 爱尚实训赵国鑫
 * @ClassName  ProductServiceImpl
 * @Date 2019/7/8/9:22
 * @Description TODO:(一句话描述这个类)
 */

import com.aishang.dao.IProductDao;
import com.aishang.po.Product;
import com.aishang.po.ProductBean;
import com.aishang.service.IProductService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;
@Service
@Transactional
public class ProductServiceImpl implements IProductService {

    @Resource
    private IProductDao productDao;
    /**
     * 根据一二级类目复合查询商品列表
     */
    @Override
    public ProductBean searchProduct(ProductBean productBean) {
        //获取复合查询的集合
        List<Product> products = productDao.searchProducts(productBean);

        //获取总记录数
        Integer rowCount = productDao.getRowCount(productBean);

        productBean.setRowCount(rowCount);
        productBean.setList(products);

        return productBean;
    }
}
