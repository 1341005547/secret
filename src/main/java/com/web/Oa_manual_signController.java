package com.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.service.Oa_manual_signService;

@Controller
public class Oa_manual_signController {
/*@Autowired
Oa_manual_signService oa_manualService;*/
//跳转到考勤记录页面
@RequestMapping("toinline.html")
public String toOa_manual_sign(){	
	return "attendance/inline";
}
@RequestMapping("toinline-info.html")
public String toinline_info(){
	return "attendance/inline-info";
}
	
	
}
