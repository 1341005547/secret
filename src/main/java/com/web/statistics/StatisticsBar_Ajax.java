package com.web.statistics;

import com.entity.statistics.AjaxBar;
import com.service.StatisticsServiceMonth;
import com.util.StatisticsUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;

/**
 * Created by Administrator on 2018/1/17.
 */

@RestController
public class StatisticsBar_Ajax extends BaseControl {

    @Autowired
    private StatisticsServiceMonth statisticsServiceMonth;

    @RequestMapping("getCharjsData")
    @ResponseBody
    public AjaxBar getCharjsData(String time_zones,Integer deptId){
        //时间解析
        /*Map map = new HashMap<>();
        if (time_zones != null){
            String[] dates = time_zones.split(" - ");
            Date startDate = NumberFormatUtil.String2Date(dates[0]);
            Date endDate = NumberFormatUtil.String2Date(dates[1]);
            map.put("startDate",startDate);
            map.put("endDate",endDate);
        }
        if (deptId != null){
            map.put("deptId",deptId);
        }*/
        //从数据库中取得数据getDateFormDateBase(Map map);return AjaxBar
        //获取部门应考勤的总数，获取正常出勤的人数，求出正常出勤率，遍历获得一年各月的出勤率
        AjaxBar ajaxBar = new AjaxBar();
        Long sumDept = statisticsServiceMonth.getEmpNumber(deptId);
        if (time_zones == null){
            time_zones = getLastYearRange();
        }
        if (deptId == null){
           deptId = 1;
        }
        int lastYear = getLastYear();
        Double[] verticalAxis = new Double[12];
        for (int i = 1; i <= 12; i++) {
            time_zones = getMonthRange(lastYear,i);
            long nomalDept = statisticsServiceMonth.getStatisticsEmpNumber(time_zones,deptId,"正常");
            verticalAxis[i-1] = ((double)nomalDept/sumDept)*100;
        }
        ajaxBar.setData(verticalAxis);
        ajaxBar.setLable(getLastYear()+"年研发部考勤情况");
        return ajaxBar;
    }

    /**
     * 获取上一年的年份
     * @return
     */
    public static int getLastYear(){
        Calendar c = Calendar.getInstance();
        c.add(Calendar.YEAR, -1);
        return c.get(Calendar.YEAR);
    }
    /**
     * 获取某年某月的时间区间
     * @param year
     * @param month
     * @return
     */
    public static String getMonthRange(int year, int month){
        String dateStr;
        DateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        Calendar c = Calendar.getInstance();
        c.set(Calendar.YEAR, year);
        c.set(Calendar.MONTH, month-1);
        c.set(Calendar.DAY_OF_MONTH, c.getActualMinimum(Calendar.DATE));
        dateStr = format.format(c.getTime())+" - ";
        c.set(Calendar.DAY_OF_MONTH, c.getActualMaximum(Calendar.DATE));
        dateStr = dateStr+format.format(c.getTime());
        return dateStr;
    }
    /**
     * 获得上一年的时间区间
     */
    public static String getLastYearRange(){
        String timeRange;
        Calendar calendar = Calendar.getInstance();
        calendar.set(getLastYear(),0,1);
        timeRange = StatisticsUtil.format(calendar.getTime(),"yyyy-MM-dd")+" - ";
        calendar.set(getLastYear(),11,31);
        timeRange = timeRange+StatisticsUtil.format(calendar.getTime(),"yyyy-MM-dd");
        return timeRange;
    }



}
