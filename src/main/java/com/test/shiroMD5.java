package com.test;

import java.sql.Date;

import org.apache.shiro.crypto.hash.SimpleHash;

public class shiroMD5 {
    
	public static void  main(String[] args) {
        String credentials = "1234";
        String  usercode="c00001";
        
        System.out.println(new SimpleHash("MD5", credentials, usercode).toString());
		/*String emailName="123@126.com";
		String[] email=emailName.split("@");
		String userEmail="123@126.com";
		String all="http://mail."+userEmail.split("@")[1];    
		System.out.println(all);
		
		Long time=new java.util.Date().getTime();
		Date date=new Date(time);
		System.out.println(date); */
    }

}
	
