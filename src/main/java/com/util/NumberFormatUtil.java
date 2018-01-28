package com.util;

import java.text.DecimalFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 把double型数据转化为特定格式的字符串
 */
public class NumberFormatUtil {
	public static String doubleToString(Double num, String style){
		DecimalFormat df = new DecimalFormat();
		df.applyPattern(style);
		return df.format(num);
		
	}
	public static Date String2Date(String date){
		Date date1 = null;
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
		try {
			date1 = simpleDateFormat.parse(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date1;
	}
	public static Date[] getTimeRange(String times){
		Date[] dates = new Date[2];
		if (times != null){
			String[] timeArray = times.split(" - ");
			dates[0] = String2Date(timeArray[0]);
			dates[1] = String2Date(timeArray[1]);
			return dates;
		}
		return null;

	}

}
