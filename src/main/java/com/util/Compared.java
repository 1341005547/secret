package com.util;
import java.util.Date;

/**
 * Class_日期比较
 * 
 * @author OneMax
 * 
 */
public class Compared {

	/**
	 * Method_比较日期大小
	 * 
	 * @param begintime
	 * @return
	 */
	public static boolean compareDate(Date begintime) {

		Date today = new Date();
		//判断该日期是否早于当前日期
		return begintime.before(today);

	}
	
//	/**
//	 * Method_比较日期大小
//	 * 
//	 * @param times
//	 * @return
//	 */
//	public static boolean isreg(String times){
//		
//		Date today = new Date();
//		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm");
//		try {
//			String time = df.format(today).substring(0, 10);
//			Date regtime = df.parse(time+" "+times);
//			if(today.before(regtime)){
//				return true;
//			}
//		} catch (ParseException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return false;
//		
//	}
	
	/**
	 * Method_根据年月获取日期范围
	 * 
	 * @param year
	 * @param month
	 * @return
	 */
	public static String getScope(String year,int month){
		
		//范围数组
		String monlist = null;
		
		//判断月份
		switch(month){
			case 1:
				monlist =year+"-01";
				break;
			case 2:
				//判断是否为闰年
				int y = Integer.parseInt(year);
				if(y % 4 == 0 && y % 100 != 0 || y % 400 == 0){
					monlist = year+"-02";
				}else{
					monlist = year+"-02";
				}
				break;
			case 3:
				monlist =year+"-03";
				break;
			case 4:
				monlist = year+"-04";
				break;
			case 5:
				monlist =year+"-05";
				break;
			case 6:
				monlist = year+"-06";
				break;
			case 7:
				monlist = year+"-07";
				break;
			case 8:
				monlist = year+"-08";
				break;
			case 9:
				monlist = year+"-09";
				break;
			case 10:
				monlist = year+"-10";
				break;
			case 11:
				monlist = year+"-11";
				break;
			case 12:
				monlist = year+"-12";
				break;
		}
		
		return monlist;
		
	}
	
	/**
	 * Method_获取两个日期相差的天数
	 * 
	 * @param d1
	 * @param d2
	 * @return
	 */
	public static int dateDiff(Date d1, Date d2){
		
		long n1 = d1.getTime();
		long n2 = d2.getTime();
		int diff = (int) Math.abs(n1 - n2);
		diff /= 3600 * 1000 * 24;
		return diff;
		
	}
	
}
