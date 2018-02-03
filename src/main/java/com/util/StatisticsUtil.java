package com.util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by Administrator on 2018/1/17.
 */
public class StatisticsUtil {
    public static final String DEFAULTPATTERN = "yyyy-MM-dd";
    public static final String NORMALPATTERN = "yyyy-MM-dd hh:mm:ss";
    /**
     * 获得特定格式的时间字符串
     */
    public static String format(Date date,String format){
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(format);
        return simpleDateFormat.format(date);
    }
    /**
     * 时间格式化为字符串"yyyy-MM-dd"
     */
    public static String getTime(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        return simpleDateFormat.format(date);
    }
    /**
     * 获取某一个月应出勤天数
     */
    public static int MonthWorkingDay(List<Calendar> calendars,String monthtime){
        int days = 0;
        DateFormat df = new SimpleDateFormat("yyyy-MM");  
        //截取年份
        //int year =Integer.parseInt(monthtime.substring(0,4));
        //截取月份
        //int month =Integer.parseInt(monthtime.substring(5,7));
    
		try {
			 Date date = df.parse(monthtime);
			//获取当前月最后一天
			 Calendar lastDate=Calendar.getInstance();
		      lastDate.setTime(date);
		      lastDate.set(Calendar.DAY_OF_MONTH, lastDate.getActualMaximum(Calendar.DAY_OF_MONTH));   
		        //获取当月第一天
		        Calendar firstDate=Calendar.getInstance();
		        firstDate.setTime(date);
		        firstDate.add(Calendar.MONTH, 0);
		        firstDate.set(Calendar.DAY_OF_MONTH,1);//设置为1号,当前日期既为本月第一天       
		        while (firstDate.compareTo(lastDate) <= 0){
		           
		            if(calendars.contains(firstDate) || (Calendar.SUNDAY) == firstDate.get(Calendar.DAY_OF_WEEK) ||(Calendar.SATURDAY) == firstDate.get(Calendar.DAY_OF_WEEK)){
		            	//不进行操作
		            }else{
		            	//天数加一
		            	days++;
		            }
		            firstDate = getNextDay(firstDate);
		            
		        }
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
        return days;
    }
    
    public static void main(String[] args) {
    	List<Calendar> calendars = new ArrayList<Calendar>();
    	int i=MonthWorkingDay(calendars,"2018-02");
    	System.out.println(i);
    }

    /**
     * 把日期字符串转为java.util.Date类型
     */
    public static Date strToDate(String dateStr, String parttern) throws Exception {
        if (parttern == null || parttern.equals("")) {
            parttern = DEFAULTPATTERN;
        }
        SimpleDateFormat sdf = new SimpleDateFormat(parttern);
        return sdf.parse(dateStr);
    }


    /**
     * 获得上月有几个工作日
     */
    public static long lastMonthWorkingDay(List<Calendar> calendars){
        long days = 0;
        Calendar calendar = getLastMonthFirstDay();
        Calendar calendar1 = getLastMonthLastDay();
        while (calendar.compareTo(calendar1) <= 0){
            calendar = getNextDay(calendar);
            if(calendars.contains(calendar) || (Calendar.SUNDAY) == calendar.get(Calendar.DAY_OF_WEEK) ||(Calendar.SATURDAY) == calendar.get(Calendar.DAY_OF_WEEK)){
                continue;
            }
            days++;
        }
        return days;
    }
    /**
     * 获得下一天
     */
    public  static Calendar getNextDay(Calendar calendar){
        calendar.add(Calendar.MONTH, 0);
        calendar.set(Calendar.DAY_OF_MONTH, calendar.get(Calendar.DAY_OF_MONTH)+1);
        calendar.set(Calendar.HOUR_OF_DAY, 0);
        calendar.set(Calendar.MINUTE,0);
        calendar.set(Calendar.SECOND, 0);
        return calendar;
    }
    /**
     * 获得上个月
     * @return
     */
    public static Calendar getLastMonthFirstDay() {
        Calendar c = Calendar.getInstance();
        c.add(Calendar.MONTH, -1);
        c.set(Calendar.DAY_OF_MONTH, 1);
        c.set(Calendar.HOUR_OF_DAY, 0);
        c.set(Calendar.MINUTE,0);
        c.set(Calendar.SECOND, 0);
        return c;
    }
    /**
     * 获得上个月最后一天
     */
    public static Calendar getLastMonthLastDay() {
        Calendar c = Calendar.getInstance();
        c.add(Calendar.MONTH, 0);
        c.set(Calendar.DAY_OF_MONTH, 1);
        c.set(Calendar.HOUR_OF_DAY, 0);
        c.set(Calendar.MINUTE,0);
        c.set(Calendar.SECOND, 0);
        return c;
    }

    /**
     * 获得上个月的最后一天
     * @param
     * @return Date
     */
    public static String getDEFAULTPATTERN() {
        return DEFAULTPATTERN;
    }

    public static Date getLastMonthLastDate() {
        Calendar c = Calendar.getInstance();
        c.add(Calendar.MONTH, -1);
        c.set(Calendar.DAY_OF_MONTH, c.getActualMaximum(Calendar.DATE));
        c.set(Calendar.HOUR_OF_DAY,0);
        c.set(Calendar.MINUTE,0);
        c.set(Calendar.SECOND, 0);
        return c.getTime();
    }
    public static Date Calendar2Data(Calendar calendar){
        return calendar.getTime();
    }

    /**
     * 节假日白名单
     * @param
     */
    public static List<Calendar> getWhiteList(){
        List<Calendar> list = new LinkedList<Calendar>();
        list.add(getCalendarUtil(2018,10,1));
        list.add(getCalendarUtil(2018,10,2));
        list.add(getCalendarUtil(2018,10,3));
        return list;
    }

    /**
     * 获得某年某月某日
     * @param year
     * @param month
     * @param date
     * @return
     */
    public static Calendar getCalendarUtil(int year,int month ,int date) {
        Calendar calender = Calendar.getInstance();
        calender.set(year,month,date);
        return calender;
    }

    /**
     *
     */
    public static Date getTime(int year,int month){
        Calendar calendar = Calendar.getInstance();
        calendar.set(Calendar.YEAR,year);
        calendar.set(Calendar.MONTH,month);
        return calendar.getTime();
    }
    /**
     * 获得本月的时间区间
     */
    public static String getCurrentMonthRange(){
        String timeRange;
        Calendar calendar = Calendar.getInstance();
        timeRange = StatisticsUtil.getTime(calendar.getTime());
        calendar.add(Calendar.MONTH, 0);
        calendar.set(Calendar.DAY_OF_MONTH, 1);
        calendar.set(Calendar.HOUR_OF_DAY, 0);
        calendar.set(Calendar.MINUTE,0);
        calendar.set(Calendar.SECOND, 0);
        timeRange = StatisticsUtil.getTime(calendar.getTime())+" - "+timeRange;
        return timeRange;
    }
    /**
     * 截止目前为止本月的工作日
     */
    public static long  getCurrentMonthWorkDay(List<Calendar> calendars){
        long days = 0;
        //本月初
        Calendar calendar0 = Calendar.getInstance();
        calendar0.add(Calendar.MONTH, 0);
        calendar0.set(Calendar.DAY_OF_MONTH, 1);
        calendar0.set(Calendar.HOUR_OF_DAY, 0);
        calendar0.set(Calendar.MINUTE,0);
        calendar0.set(Calendar.SECOND, 0);
        //本月当天
        Calendar calendar = Calendar.getInstance();

        while (calendar.compareTo(calendar0) >= 0){
            calendar0 = getNextDay(calendar0);
            if(calendars.contains(calendar0) || (Calendar.SUNDAY) == calendar0.get(Calendar.DAY_OF_WEEK) ||(Calendar.SATURDAY) == calendar0.get(Calendar.DAY_OF_WEEK)){
                continue;
            }
            days++;
        }
        return days;
    }

   
    /**
     * 计算获得旷工人数
     */
    public static long getAbsenceNumber(long sumDept1, long late, long early, long nomal, long leave, long workDay){

        return (sumDept1 * workDay - late - early - nomal - leave);
    }
    /**
     * 获得上个月的字符串
     */
    public static String getLastMonthString(String currentMonth){
        if (currentMonth != null){
            String[] datas = currentMonth.split("-");
            Integer month = Integer.valueOf(datas[1]);
            month++;
            if (month == 13){
                month = 1;
            }
            datas[1] = ""+month;
            return ""+datas[0]+"-"+datas[1]+"-"+datas[2];
        }
        return null;
    }
    /**
     * 获得上个月的范围字符串
     */
    public static String splidTime(String timeRanges){
        if (timeRanges != null){
            String[] timeRange = timeRanges.split(" - ");
            getLastMonthString(timeRange[0]);
            getLastMonthString(timeRange[1]);
            return getLastMonthString(timeRange[0])+" - "+getLastMonthString(timeRange[1]);
        }

        return null;
    }
    public static Calendar getDateTOCalendar(Date date){
        Calendar calendar =Calendar.getInstance();
        calendar.setTime(date);
        return calendar;
        
    }


}
