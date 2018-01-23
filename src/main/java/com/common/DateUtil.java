package com.common;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
	
	public static SimpleDateFormat DATE_TIME_MS = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss SSS");
	public static SimpleDateFormat DATE_TIME = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	public static SimpleDateFormat DATE = new SimpleDateFormat("yyyy-MM-dd");
	public static SimpleDateFormat YEAR = new SimpleDateFormat("yyyy");
	public static SimpleDateFormat MONTH = new SimpleDateFormat("MM");
	
	/**
	 * 得到当前系统的时间
	 * 
	 * @return 返回字符串 格式 yyyy-MM-dd HH:mm:ss SSS
	 */
	public static String getTableTS() {
		return getDateTimeMs(new Date(System.currentTimeMillis()), DateUtil.DATE_TIME_MS);
	}
	
	/**
	 * 返回带毫秒的日期时间字符串
	 * 
	 * @param date
	 * @param sdf
	 *            SimpleDateFormat 有静态常量 显示格式
	 * @return
	 */
	private static String getDateTimeMs(Date date, SimpleDateFormat sdf) {
		if (date == null) {
			return "";
		}
		return sdf.format(date);
	}
	
	/**
	 * 将字符串转化为Date
	 * 
	 * @param date
	 *            返回Date格式 yyyy-MM-dd
	 * @return
	 */
	public static Date doConvertToDate(String date) {
		Date result = null;
		try {
			result = DATE_TIME.parse(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	/**
	 * 返回带日期时间字符串 格式yyyy-MM-dd HH:mm:ss
	 * 
	 * @param date
	 * @return
	 */
	public static String getDateTime(Date date) {

		return DATE_TIME.format(date);
	}

	/**
	 * 返回当前年份yyyy
	 * @return
	 */
	public static String getCurrentYear() {
		Date date = new Date();
		return YEAR.format(date);
	}	/**
	 * 返回当前月份MM
	 * @return
	 */
	public static String getCurrentMonth() {
		Date date = new Date();
		return MONTH.format(date);
	}
	
	/**
	 * 返回带日期字符串 格式yyyy-MM-dd
	 * 
	 * @param date
	 * @return
	 */
	public static String getDate(Date date) {
		if (date == null) {
			return "";
		}
		return DATE.format(date);
	}

	/**
	 * 返回带日期和时间的字符串
	 * 
	 * @param date
	 * @param sdf
	 *            SimpleDateFormat 有静态常量 显示格式
	 * @return
	 */
	public static String getOpTime(Date date, SimpleDateFormat sdf) {
		if (date == null) {
			return "";
		}
		return sdf.format(date);
	}

	/**
	 * 将字符串转换为日期类型
	 * 
	 * @param date
	 *            日期字符串yyyy-MM-dd
	 * @return
	 */
	public static Date parseDate(String date) {
		Date d = null;
		try {
			d = DATE.parse(date);
		} catch (ParseException e) {
		}
		return d;
	}

	/**
	 * 将字符串转换为日期时间类型
	 * 
	 * @param date
	 *            日期日期字符串yyyy-MM-dd HH:mm:ss
	 * @return
	 */
	public static Date parseDateTime(String date) {
		if (date == null || "".equals(date))
			return null;
		Date destDate = null;
		try {
			destDate = DATE_TIME.parse(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return destDate;
	}
}
