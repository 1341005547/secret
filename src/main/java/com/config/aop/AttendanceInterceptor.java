package com.config.aop;

/**
 * Created by Administrator on 2018/1/20.
 */

import com.dao.BaseStatistics;
import com.entity.statistics.BaseStatisticsEntry;
import com.entity.statistics.DealLeave;
import com.util.Constants;
import com.util.StatisticsUtil;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.logging.Logger;

/**
 * 拦截器：记录用户操作日志，检查用户是否登录……
 *
 * @author XuJijun
 */
@Aspect
@Component
public class AttendanceInterceptor {
    @Autowired
    private BaseStatistics baseStatistics;

    private static final Logger logger = Logger.getLogger("ControllerInterceptor");


    /**
     * 定义拦截规则：拦截com.web包下面的toLogin方法，有@RequestMapping注解的方法。
     */
    @Pointcut("execution(* com.web..toLogin(..)) && @annotation(org.springframework.web.bind.annotation.RequestMapping)")
    public void controllerMethodPointcut() {
    }

    /**
     * 拦截器具体实现
     *
     * @param pjp
     * @return JsonResult（被拦截方法的执行结果，或需要登录的错误提示。）
     */
    /*@Around("controllerMethodPointcut()") //指定拦截器规则；也可以直接把“execution(* com.xjj.........)”写进这里
    public Object Interceptor(ProceedingJoinPoint pjp) throws Throwable {
        获取参数对数据，完成数据库的相关操作
        Object[] objects = pjp.getArgs();
        System.out.println("执行方法前织入内容");
        Object object = pjp.proceed(objects);
        Object[] parameter = pjp.getArgs();
        parameter[0] = 2;
        DealLeave dealLeave = baseStatistics.getApplyMsg((Integer) parameter[0]);
        BaseStatisticsEntry baseStatisticsEntry = new BaseStatisticsEntry();
        for (String time :getTimeStrings(dealLeave.getStartTime(), dealLeave.getEndTime())) {
            baseStatisticsEntry.setTime(StatisticsUtil.strToDate(time,"yyyy-MM-dd"));
            baseStatisticsEntry.setDeptId(dealLeave.getDeptId());
            baseStatisticsEntry.setManualResult("请假");
            baseStatisticsEntry.setUid(dealLeave.getUid());
            baseStatistics.insert(baseStatisticsEntry);
        }
        //获得请假的时间端
        //获取某个部门的谁在在什么时间请假
        System.out.println("执行方法后织入内容");
        return object;
    }*/
    public static String[] getLeaveDays(Date startTime,Date endTime){
        String[] strings = new String[Constants.max_Vacation];
        return strings;
    }
    public static Calendar getDayStart(Date time){
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(time);
        calendar.set(Calendar.HOUR_OF_DAY,0);
        calendar.set(Calendar.MINUTE,0);
        calendar.set(Calendar.SECOND,0);
        return  calendar;
    }

    public static void main(String[] args) {
        System.out.println(getDayEnd("2013-04-15"));
    }
    public static String getStartDay(Date date){
        return StatisticsUtil.getTime(date);
    }
    public static  String getEndDay(Date date){
        return StatisticsUtil.getTime(date);
    }
    public static List<String> getTimeStrings(Date startTime, Date endTime){
        List<String> list = new ArrayList<String>();
        Calendar calendar0 = StatisticsUtil.getDateTOCalendar(startTime);
        Calendar calendar =StatisticsUtil.getNextDay(StatisticsUtil.getDateTOCalendar(endTime));
        while (calendar.compareTo(calendar0) > 0){
            if(StatisticsUtil.getWhiteList().contains(calendar0) || (Calendar.SUNDAY) == calendar0.get(Calendar.DAY_OF_WEEK) ||(Calendar.SATURDAY) == calendar0.get(Calendar.DAY_OF_WEEK)){
                StatisticsUtil.getNextDay(calendar0);
                continue;
            }
            System.out.println(StatisticsUtil.getTime(StatisticsUtil.Calendar2Data(calendar0)));
            list.add(StatisticsUtil.getTime(calendar0.getTime()));
            calendar0 = StatisticsUtil.getNextDay(calendar0);

        }
        return list;
    }
    public static Date getDayStart(String dayStartTime){
        Date date = null;
        dayStartTime = dayStartTime+" 00:05:00";
        try {
            date = StatisticsUtil.strToDate(dayStartTime,"yyyy-MM-dd hh:mm:ss");

        } catch (Exception e) {
            e.printStackTrace();
        }
        return date;
    }
    public static Date getDayEnd(String dayEndTime){
        Date date = null;
        dayEndTime = dayEndTime+" 23:55:00";
        try {
            date = StatisticsUtil.strToDate(dayEndTime,"yyyy-MM-dd hh:mm:ss");

        } catch (Exception e) {
            e.printStackTrace();
        }
        return date;
    }




}
