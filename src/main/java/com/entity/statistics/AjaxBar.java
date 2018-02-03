package com.entity.statistics;

/**
 * Created by Administrator on 2018/1/19.
 */
public class AjaxBar {
    //横坐标
    Integer[] lables;
    //纵坐标
    Double[] data;
    //标题
    String lable;

    public Integer[] getLables() {
        return lables;
    }
    public void setLables(Integer[] lables) {
        this.lables = lables;
    }

    public Double[] getData() {
        return data;
    }

    public void setData(Double[] data) {
        this.data = data;
    }

    public String getLable() {
        return lable;
    }

    public void setLable(String lable) {
        this.lable = lable;
    }
}
