package cn.edu.tju.util;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * 时间格式工具类
 * @author Jimmy
 *
 */
public class TimeFormatUtil {

	/**
	 * 将字符串形式的时间按照一定格式格式转为Date类型
	 * @param dateStr
	 * @param formatStr  例如"yyyy-MM-dd"
	 * @return
	 */
	public static Date StringToDate(String dateStr,String formatStr){
		DateFormat sdf=new SimpleDateFormat(formatStr);
		Date date=null;
		try {
			date = sdf.parse(dateStr);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return date;
	}
	
	/**
	 * 将字符串形式的时间按照一定格式格式转为Calendar类型
	 * @param dateStr
	 * @param formatStr  例如"yyyy-MM-dd"
	 * @return
	 */
	public static Calendar StringToCalendar(String dateStr,String formatStr){
		DateFormat sdf=new SimpleDateFormat(formatStr);
		Date date=null;
		try {
			date = sdf.parse(dateStr);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		return c;
	}
	
}
