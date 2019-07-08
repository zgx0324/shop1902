package com.aishang.po;
/*
 * @Author 爱尚实训赵国鑫
 * @ClassName  PageBean
 * @Date 2019/7/8/8:56
 * @Description TODO:(一句话描述这个类)
 */

import java.util.List;

public class PageBean<T> {
   private Integer pageNow = 1;
   private Integer pageSize = 12;
   private Integer pageCount;
   private Integer rowCount;
   private Integer start;

    public Integer getStart() {

        return (pageNow-1)*pageSize;
    }

    private List<T> list;

    public Integer getPageNow() {
        return pageNow;
    }

    public void setPageNow(Integer pageNow) {
        this.pageNow = pageNow;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public Integer getPageCount() {
        if(rowCount%pageSize==0){
            pageCount=rowCount/pageSize;
        }else{
            pageCount=rowCount/pageSize+1;
        }
        return pageCount;
    }

    public void setPageCount(Integer pageCount) {
        this.pageCount = pageCount;
    }

    public Integer getRowCount() {
        return rowCount;
    }

    public void setRowCount(Integer rowCount) {
        this.rowCount = rowCount;
    }

    public List<T> getList() {
        return list;
    }

    public void setList(List<T> list) {
        this.list = list;
    }
}
