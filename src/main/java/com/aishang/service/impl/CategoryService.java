package com.aishang.service.impl;
/*
 * @Author 爱尚实训赵国鑫
 * @ClassName  CategoryService
 * @Date 2019/7/4/14:50
 * @Description TODO:(一句话描述这个类)
 */

import com.aishang.dao.ICategoryDao;
import com.aishang.po.CategoryExt;
import com.aishang.po.CategorySecond;
import com.aishang.po.CategorySecondExt;
import com.aishang.service.ICategoryService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
@Transactional
public class CategoryService implements ICategoryService {

    @Resource
    private ICategoryDao categoryDao;

    /**
     * 获取一二级类目集合
     * @return
     */
    @Override
    public List<CategoryExt<CategorySecond>> getCategoryAndCategorySecond() {
        return categoryDao.getCategoryAndCategorySecond();
    }
    /**
     * 获取二级类目热门商品集合
     * @return
     */
    @Override
    public List<CategoryExt<CategorySecondExt>> getIsHotProductList(List<CategoryExt<CategorySecond>> categoryExt) {
        List<CategoryExt<CategorySecondExt>> list = new ArrayList<CategoryExt<CategorySecondExt>>();
        for (CategoryExt<CategorySecond> categorySecondCategoryExt : categoryExt) {
            //根据一级类目Id查询二级类目
            List<CategorySecondExt> categorySecondExtList =categoryDao.getIsHotProductListByCid(categorySecondCategoryExt.getCid());
            //封装categoryExt对象，放入集合
            CategoryExt<CategorySecondExt> categoryExt1 = new CategoryExt<CategorySecondExt>();
            categoryExt1.setCid(categorySecondCategoryExt.getCid());
            categoryExt1.setCname(categorySecondCategoryExt.getCname());
            categoryExt1.setCategorySecondList(categorySecondExtList);
           list.add(categoryExt1);
        }
        return list;
    }
}
