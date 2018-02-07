package com.web.statistics;

import com.entity.Dept;
import com.entity.statistics.ViewDateMain;
import com.service.StatisticsServiceMonth;
import com.util.StatisticsUtil;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.Calendar;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;

/**
 * 统计主要显示页面控制类
 */

@Controller
public class StatisticsMain extends BaseControl {
    /**
     * 月统计业务层注入
     */
    @Autowired
    private StatisticsServiceMonth statisticsServiceMonth;
    /**
     * 视图渲染数据
     */
    private ViewDateMain viewDateMain;

    long workDay;
    
    Integer deptId;

    /**
     * 完成部门数据获取
     *
     * @return ModelAndView
     */
    @RequestMapping("statistics_main")
    public ModelAndView statistics_main(Integer deptId) {
        viewDateMain = new ViewDateMain();
        if(deptId != null){
            this.deptId = deptId;
        }else{
            deptId = getCurrentUserId();
        }
        SecurityUtils.getSubject().getSession().setAttribute("deptId", deptId);
        //获取当月的工作日
        workDay = StatisticsUtil.getCurrentMonthWorkDay(StatisticsUtil.getWhiteList());
        //上个月的时间区间字符串
        String lateTime_zones = dealTimeZone(null);
        //获得各部门正常考勤数
        getAllDeptNumNormal(lateTime_zones);
        //获取本月的时间区间
        String currentTime_zones = StatisticsUtil.getCurrentMonthRange();
        //本月旷工，早退，迟到，请假的人数
        long late = statisticsServiceMonth.getStatisticsEmpNumber(currentTime_zones,deptId , "迟到");
        long early = statisticsServiceMonth.getStatisticsEmpNumber(currentTime_zones, deptId, "早退");
        long leave = statisticsServiceMonth.getStatisticsEmpNumber(currentTime_zones,deptId , "请假");

        long neglect = StatisticsUtil.getAbsenceNumber(getCurrentUserDeptNum(), late, early, getCurrentUserDeptNumNormal(currentTime_zones), leave, workDay);
        long nomalDeptLateMonth = statisticsServiceMonth.getStatisticsEmpNumber(lateTime_zones,deptId , "正常");

        long lateLateMonth = statisticsServiceMonth.getStatisticsEmpNumber(lateTime_zones,deptId , "迟到");
        viewDateMain.setEarlyNum(statisticsServiceMonth.getStatisticsEmpNumber(lateTime_zones,deptId , "早退"));
        long leaveLateMonth = statisticsServiceMonth.getStatisticsEmpNumber(lateTime_zones, deptId, "请假");
        //获得截止目前为止本月工作单元
        Long de = workDay * getCurrentUserDeptNum();
        //计算统计率
        Double leaveRate = getRate(leave, de);
        Double nomalRate = getRate(getCurrentUserDeptNumNormal(currentTime_zones), de);
        Double lateRate = getRate(late, de);
        Double earlyRate = getRate(early, de);
        //各部门的总数
        getAllDeptNum();
        //各个部门上个月正常考勤人数
        getAllDeptNumNormal(lateTime_zones);
        //部门考勤变化率
        if(viewDateMain.getDeptSearchNum() != 0){
            viewDateMain.setSearchRate(viewDateMain.getDeptSearchNumNormal() * 100/ viewDateMain.getDeptSearchNum()/workDay);
        }
        if(viewDateMain.getDeptSaleNum() != 0){
            viewDateMain.setSaleRate(viewDateMain.getDeptSaleNumNormal() * 100 / viewDateMain.getDeptSaleNum()/workDay);
        }
        if(viewDateMain.getDeptManagerNum() != 0){
            Long test = viewDateMain.getDeptManagerNumNormal() * 100 / viewDateMain.getDeptManagerNum()/workDay;
            viewDateMain.setManagerRate(test);
        }
        //各个部门不正常考勤
        viewDateMain.setEarlyNum(early);
        viewDateMain.setLateNum(late);
        viewDateMain.setLeaveNum(leave);
        viewDateMain.setNeglectNum(neglect);
        //各个部门不正常考勤率
        viewDateMain.setEarlyRate(earlyRate);
        viewDateMain.setLateRate(lateRate);
        viewDateMain.setLeaveRate(leaveRate);
        viewDateMain.setNeglectRate(nomalRate);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("attendance/statistics_main");
        modelAndView.addObject("viewDateMain", viewDateMain);
        return modelAndView;

    }


    /**
     * @param []
     * @return java.lang.Long[]
     * @date 2018/1/28 15:20
     */
    public Long[] getAllDeptNum() {
        int count = getAllDeptId().length;
        Long[] nomalDeptArray = new Long[count];
        for (int i = 0; i < count; i++) {
            nomalDeptArray[i] = statisticsServiceMonth.getEmpNumber(getAllDeptId()[i]);

            if (getAllDeptId()[i].equals(deptId)) {
                viewDateMain.setCurrentDeptNum(nomalDeptArray[i]*workDay);
            }
            if ("研发部".equals(getDeptName(getAllDeptId()[i]))) {
                viewDateMain.setDeptSearchNum(nomalDeptArray[i]*workDay);
            }
            if ("销售部".equals(getDeptName(getAllDeptId()[i]))) {
                Long test = nomalDeptArray[i];
                viewDateMain.setDeptSaleNum(nomalDeptArray[i]*workDay);
            }
            if ("管理部".equals(getDeptName(getAllDeptId()[i]))) {
                viewDateMain.setDeptManagerNum(nomalDeptArray[i]*workDay);
            }
        }
        return nomalDeptArray;
    }

    /**
     * @param [lateTime_zones]
     * @return java.lang.Long[]
     * @date 2018/1/28 15:42
     * @methodName getAllDeptNumNormal
     */
    public Long[] getAllDeptNumNormal(String lateTime_zones) {
        int count = getAllDeptId().length;
        Long[] nomalDeptArray = new Long[count];
        for (int i = 0; i < count; i++) {
            nomalDeptArray[i] = statisticsServiceMonth.getStatisticsEmpNumber(lateTime_zones, getAllDeptId()[i], "正常");
            Integer deptId = getAllDeptId()[i];
            String deptName = getDeptName(getAllDeptId()[i]);
            if(getAllDeptId()[i].equals(deptId)){
                viewDateMain.setCurrentDeptNumNormal(nomalDeptArray[i]);
            }
            if ("研发部".equals(getDeptName(getAllDeptId()[i]))) {
                viewDateMain.setDeptSearchNumNormal(nomalDeptArray[i]);
            }
            if ("销售部".equals(getDeptName(getAllDeptId()[i]))) {
                viewDateMain.setDeptSaleNumNormal(nomalDeptArray[i]);
            }
            String name = getDeptName(getAllDeptId()[i]);

            if ("管理部".equals(getDeptName(getAllDeptId()[i]))) {
                viewDateMain.setDeptManagerNumNormal(nomalDeptArray[i]);
            }
        }
        return nomalDeptArray;
    }

    /**
     * 获得当前用户的所在部门正常考勤总数
     */
    public Long getCurrentUserDeptNumNormal(String lateTime_zones) {
        return statisticsServiceMonth.getStatisticsEmpNumber(lateTime_zones,deptId , "正常");
    }

    /**
     * 获得当前用户所在部门总人数
     */
    public Long getCurrentUserDeptNum() {
        Long test = statisticsServiceMonth.getEmpNumber(deptId);
        return test;
    }





}
