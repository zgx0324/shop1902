package com.aishang.service.impl;
/*
 * @Author 爱尚实训赵国鑫
 * @ClassName  CategoryServiceImpl
 * @Date 2019/7/5/9:16
 * @Description TODO:(一句话描述这个类)
 */

import com.aishang.dao.ICategoryDao;
import com.aishang.po.CategoryExt;
import com.aishang.po.CategorySecondExt;
import com.aishang.service.ICategoryService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
@Transactional
public class CategoryServiceImpl implements ICategoryService {

    @Resource
    private ICategoryDao categoryDao;

    @Override
    public List<CategoryExt> getAllCategoryExt() {
        return categoryDao.getAllCategoryExt();
    }

    @Override                                                       //一级类目集合
    public List<CategoryExt> getAllCategoryExtAndProduct(List<CategoryExt> allCategoryExt) {
        //创建一级类目Ext集合
        List<CategoryExt> categoryExts = new ArrayList<CategoryExt>();
        for (CategoryExt categoryExt : allCategoryExt) {
            //创建一级类目Ext对象
            CategoryExt categoryExt1 = new CategoryExt();

            //根据一级类目id查询二级类目Ext(商品集合)集合
            List<CategorySecondExt> categorySecondExts=categoryDao.getCategorySecondExtByCid(categoryExt.getCid());

            //向一级类目Ext对象封装属性
            categoryExt1.setCategorySeconds(categorySecondExts);
            categoryExt1.setCid(categoryExt.getCid());
            categoryExt1.setCname(categoryExt.getCname());

            //装入集合
            categoryExts.add(categoryExt1);
        }

        //返回集合
        return categoryExts;
    }
}
