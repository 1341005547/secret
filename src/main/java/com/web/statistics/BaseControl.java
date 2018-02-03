package com.web.statistics;

import com.util.Constants;
import com.entity.User;
import com.util.StatisticsUtil;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.apache.shiro.subject.Subject;

import java.util.Date;


/**
 * Created by Administrator on 2018/1/15.
 */
public class BaseControl {
    /**
     * 存储部门id
     */
    public Integer[] getAllDeptId(){
        Integer[] deptIds = new Integer[]{1,2,3};
        return deptIds;
    }
    /**
     * 处理时间
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

    public static void main(String[] args) {
        dealTimeZone(null);
    }


    /**
     * 获得当前用户
     * @return
     */
    public User getCurrentUser(){
        Subject currentUser = SecurityUtils.getSubject();
        return (User)currentUser.getSession().getAttribute(Constants.CURRENT_USER);
    }
    /**
     * 判断当前用户是否是普通员工
     */
   /* protected boolean isStaff(){
        User user = getCurrentUser();
        if (user.getProfession().equals(Constants.POSITION_STAFF)){
            return true;
        }else{
            return false;
        }
    }*/
    protected Integer pageNo = 1;
    protected Integer pageSize = 5;
    /**
     * 分页对象
     * ？？？？？？？？？？？？？？？？？？？？？？
     */

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
        User user = getCurrentUser();
        return user.getuId();
    }
    /**
     * 获得百分率
     */
    protected double getRate(Long numerator,Long denominator){
        if (denominator != null){
            return  numerator/denominator;
        }
        return -1;
    }

    /**
     * 获得当前用户的上级id
     * @return
     */
  /*  protected  Integer getCurrManagerId(){
        return getCurrentUser().getAuth_employee_manager_id();
    }*/
    public Integer getPageNo() {
        return pageNo;
    }
    public void setPageNo(Integer pageNo) {
        this.pageNo = pageNo;
    }
    public Integer getPageSize() {
        return pageSize;
    }
    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }




}
