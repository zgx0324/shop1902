package com.aishang.po;
/*
 * @Author 爱尚实训赵国鑫
 * @ClassName  ProductBean
 * @Date 2019/7/8/9:09
 * @Description TODO:(一句话描述这个类)
 */

public class ProductBean extends PageBean<Product>{
    private Integer cid;
    private Integer csid;

    public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }

    public Integer getCsid() {
        return csid;
    }

    public void setCsid(Integer csid) {
        this.csid = csid;
    }
}
