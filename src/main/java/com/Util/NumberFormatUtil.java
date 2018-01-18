package com.Util;

import java.text.DecimalFormat;

/**
 * 把double型数据转化为特定格式的字符串
 */
public class NumberFormatUtil {
	public static String doubleToString(Double num, String style){
		DecimalFormat df = new DecimalFormat();
		df.applyPattern(style);
		return df.format(num);
		
	}
}
