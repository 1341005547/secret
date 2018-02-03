package com.web.statistics;

import com.entity.statistics.ViewDateMain;
import com.service.StatisticsServiceMonth;
import com.util.StatisticsUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.Calendar;
import java.util.LinkedList;

/**
 * Created by Administrator on 2018/1/19.
 */
@Controller
public class StatisticsMain  extends BaseControl {
    @Autowired
    private StatisticsServiceMonth statisticsServiceMonth;
    @RequestMapping("statistics_main")
    public ModelAndView statistics_main(){
        //获取当月的工作日
        long workDay = StatisticsUtil.getCurrentMonthWorkDay(StatisticsUtil.getWhiteList());
        //上个月的时间区间字符串
        String lateTime_zones = dealTimeZone(null);
        //获得各部门正常考勤数
        Long[] nomalDeptArray = getAllDeptNumNormal(lateTime_zones);
        //设置返回页面的部门正常考勤数
        ViewDateMain viewDateMain = new ViewDateMain();
        viewDateMain.setDept1NumNormal(nomalDeptArray[0]);
        viewDateMain.setDept2NumNormal(nomalDeptArray[1]);
        viewDateMain.setDept3NumNormal(nomalDeptArray[2]);
        //获取本月的时间区间
        String currentTime_zones = StatisticsUtil.getCurrentMonthRange();
        //本月旷工，早退，迟到，请假的人数
        long late = statisticsServiceMonth.getStatisticsEmpNumber(currentTime_zones,getCurrentUserDeptId(),"迟到");
        long early = statisticsServiceMonth.getStatisticsEmpNumber(currentTime_zones,getCurrentUserDeptId(),"早退");
        long leave = statisticsServiceMonth.getStatisticsEmpNumber(currentTime_zones,getCurrentUserDeptId(),"请假");

        long neglect = StatisticsUtil.getAbsenceNumber(getCurrentUserDeptNum(),late,early ,getCurrentUserDeptNumNormal(currentTime_zones),leave, workDay);
        long nomalDeptLateMonth = statisticsServiceMonth.getStatisticsEmpNumber(lateTime_zones,getCurrentUserDeptId(),"正常");
        long lateLateMonth = statisticsServiceMonth.getStatisticsEmpNumber(lateTime_zones,getCurrentUserDeptId(),"迟到");
        long earlyLateMonth = statisticsServiceMonth.getStatisticsEmpNumber(lateTime_zones,getCurrentUserDeptId(),"早退");
        long leaveLateMonth = statisticsServiceMonth.getStatisticsEmpNumber(lateTime_zones,getCurrentUserDeptId(),"请假");
        //获得截止目前为止本月工作单元
        Long de = workDay*getCurrentUserDeptNum();
        //计算统计率
        Double leaveRate = getRate(leave,de);
        Double nomalRate = getRate(getCurrentUserDeptNumNormal(currentTime_zones),de);
        Double lateRate = getRate(late,de);
        Double earlyRate = getRate(early,de);
        //给前段的数据
        viewDateMain.setDept1Num(getAllDeptNum()[0]);
        viewDateMain.setDept2Num(getAllDeptNum()[1]);
        viewDateMain.setDept3Num(getAllDeptNum()[2]);
        //各个部门正常考勤人数
        viewDateMain.setDept1NumNormal(getAllDeptNumNormal(lateTime_zones)[0]);
        viewDateMain.setDept2NumNormal(getAllDeptNumNormal(lateTime_zones)[1]);
        viewDateMain.setDept3NumNormal(getAllDeptNumNormal(lateTime_zones)[2]);
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
        modelAndView.addObject("viewDateMain",viewDateMain);
        return modelAndView;

    }


    public Long[] getAllDeptNum() {
        int count = getAllDeptId().length;
        Long[] nomalDeptArray = new Long[count];
        for (int i = 0; i < count; i++) {
            nomalDeptArray[i] = statisticsServiceMonth.getEmpNumber(getAllDeptId()[i]);
        }
        return nomalDeptArray;
    }

    public Long[] getAllDeptNumNormal(String lateTime_zones) {
        int count = getAllDeptId().length;
        Long[] nomalDeptArray = new Long[count];
        for (int i = 0; i < count; i++) {
            nomalDeptArray[i] = statisticsServiceMonth.getStatisticsEmpNumber(lateTime_zones,getAllDeptId()[i],"正常");
        }
        return nomalDeptArray;
    }
    /**
     * 获得当前用户的所在部门正常考勤总数
     */
    public Long getCurrentUserDeptNumNormal(String lateTime_zones) {
        return statisticsServiceMonth.getStatisticsEmpNumber(lateTime_zones,getCurrentUserDeptId(),"正常");
    }
    /**
     * 获得当前用户所在部门总人数
     */
    public Long getCurrentUserDeptNum() {
        return statisticsServiceMonth.getEmpNumber(getCurrentUserDeptId());
    }

    /**
     * 获得当前用户的部门
     * @return
     */
    public int getCurrentUserDeptId(){
        return 1;
    }








}
