package com.web.statistics;

import com.util.Constants;
import com.entity.Dept;
import com.entity.User;
import com.util.StatisticsUtil;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;


/**
 * Created by Administrator on 2018/1/15.
 */
public class BaseControl {
    /**
     * 获得当前用户
     * @return
     */
    public User getCurrentUser(){
        Subject currentUser = SecurityUtils.getSubject();
        return (User)currentUser.getSession().getAttribute(Constants.CURRENT_USER);
    }
    /**
     * 存储部门id
     */
    public Integer[] getAllDeptId(){
        Integer[] deptIds = new Integer[]{1,2,3};
        return deptIds;
    }
    /**
     * 时间的为null处理
     * @param time_zones
     * @return
     */
    public static String dealTimeZone(String time_zones) {
        if (time_zones == null){
            String lastMonth = StatisticsUtil.getTime(StatisticsUtil.getLastMonthFirstDay().getTime());
            time_zones = lastMonth+" - "+StatisticsUtil.getTime(StatisticsUtil.getLastMonthLastDate());
            return time_zones;
        }
        return null;
    }

    /**
     * 获取session
     * @return
     */
    protected Session getSession(){
        return SecurityUtils.getSubject().getSession();
    }

    /**
     * 获得当前用户的id
     * @return
     */
    protected Integer getCurrentUserId(){
       
        return 1;
    }
    /**
     * 获得百分率
     */
    protected double getRate(Long numerator,Long denominator){
        if (denominator != null && denominator != 0){
            return  numerator/denominator;
        }
        return -1;
    }



    /**
     * 获取上一年的年份
     *
     * @return
     */
    public static int getLastYear() {
        Calendar c = Calendar.getInstance();
        c.add(Calendar.YEAR, -1);
        return c.get(Calendar.YEAR);
    }

    /**
     * 获取某年某月的时间区间，例如：2018-02-01 - 2018-02-28
     *
     * @param year
     * @param month
     * @return
     */
    public static String getMonthRange(int year, int month) {
        String dateStr;
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        Calendar c = Calendar.getInstance();
        c.set(Calendar.YEAR, year);
        c.set(Calendar.MONTH, month - 1);
        c.set(Calendar.DAY_OF_MONTH, c.getActualMinimum(Calendar.DATE));
        dateStr = format.format(c.getTime()) + " - ";
        c.set(Calendar.DAY_OF_MONTH, c.getActualMaximum(Calendar.DATE));
        dateStr = dateStr + format.format(c.getTime());
        return dateStr;
    }


    /**
     * 获得上一年的时间区间,例如：2017-01-01 - 2017-12-31
     */
    public static String getLastYearRange() {
        String timeRange;
        Calendar calendar = Calendar.getInstance();
        calendar.set(getLastYear(), 0, 1);
        timeRange = StatisticsUtil.format(calendar.getTime(), "yyyy-MM-dd") + " - ";
        calendar.set(getLastYear(), 11, 31);
        timeRange = timeRange + StatisticsUtil.format(calendar.getTime(), "yyyy-MM-dd");
        return timeRange;
    }

    /**
     * 部门信息map,例如：1   "管理部"
     * @return
     */
    public Map getDeptMap() {
        Map map = new HashMap();
        map.put("1", "管理部");
        map.put("2", "研发部");
        map.put("3", "销售部");
        return map;
    }


 

    /**
     * 部门id和部门名称对应关系
     */
    public String getDeptName(Integer deptId) {
        return (String) (getDeptMap().get(String.valueOf(deptId)));
    }
    /**
     * 获得当前用户的部门id
     */
    public Integer getCurrentUserDeptId(){
    	Session session=SecurityUtils.getSubject().getSession();
    	Dept dept = (Dept) session.getAttribute("dept");
    	Integer deptId = dept.getdId();
    	return deptId;
    }




}
