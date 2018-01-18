package com.web;

import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2018/1/15.
 */
public class StatisticsDeptYear extends BaseControl {
    /**
     * 注入
     */

    /**
     * 年统计量
     * @return
     */
    public Map getTable(){
        Map map = new HashMap();
        return map;
    }

    /**
     * 月对比饼形图
     * @return
     */
    public Map getPie(){
        Map map = new HashMap();
        return map;
    }
    /**
     * excel导入table
     */
    public void  getExcel(){

    }

}
