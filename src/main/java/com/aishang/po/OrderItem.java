package com.aishang.po;
/*
 * @Author 爱尚实训赵国鑫
 * @ClassName  OrderItem
 * @Date 2019/7/12/9:27
 * @Description TODO:(一句话描述这个类)
 */

public class OrderItem {

    private Integer itemId;
    private Integer count;
    private Integer pid;
    private Integer oid;

    public Integer getItemId() {
        return itemId;
    }

    public void setItemId(Integer itemId) {
        this.itemId = itemId;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }

    public Integer getOid() {
        return oid;
    }

    public void setOid(Integer oid) {
        this.oid = oid;
    }

    public double getSubtoTal() {
        return subtoTal;
    }

    public void setSubtoTal(double subtoTal) {
        this.subtoTal = subtoTal;
    }

    private double subtoTal;

}
