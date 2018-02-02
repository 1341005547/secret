package com.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.mysql.jdbc.exceptions.jdbc4.MySQLDataException;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2018/1/15.
 */
@Controller
public class ControlTest {

	/**
	 * 跳转到json页面
	 * 
	 * @return
	 */
	@RequestMapping("testCalendar.html")
	public String testCalendar() {
		return "calendar";
	}

	/**
	 * 传输数据
	 */
	@RequestMapping("testCalendarDate")
	@ResponseBody
	public List testCalendarDate() {
		//数据库中的数据
		
		List<Map> list = new ArrayList<Map>();
		Map<String, String> map = new HashMap<String, String>();
		map.put("title", "event1");
		map.put("start", "2018-01-05");
		map.put("end", "2018-01-07");
		list.add(map);
		return list;
	}

}
