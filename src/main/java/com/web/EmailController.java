package com.web;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.mail.EmailException;
import org.apache.commons.mail.SimpleEmail;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.entity.Msg_info;
import com.entity.User;
import com.service.Msg_infoService;
import com.service.UserService;

/**
 * 邮箱控制器
 * @author Administrator
 *
 */
@Controller
public class EmailController {
	
	/**
	 * 用户表业务实现类
	 */
	@Autowired
	private UserService userService;
	@Autowired
	private Msg_infoService msgService;
	
   /**
    * 跳转到邮箱页面
    */
	@RequestMapping("toemail.html")
	public String doEmail(){
		//根据登陆账户取id，根据接受查询他下边的邮件List
		//把集合存到session中
		Session session=SecurityUtils.getSubject().getSession();
		User user=(User) session.getAttribute("user");
		int uid=user.getuId();
		String name=user.getuName();
		List<Msg_info> msg_infos=msgService.getMsg_infoByUid(uid);
		for (Msg_info msg_info : msg_infos) {
			System.out.println(msg_info.getMsgCreateTime());
		}

		session.setAttribute("msgs", msg_infos);
		String userEmail="123@126.com";
		String emailName="http://mail."+userEmail.split("@")[1];
		session.setAttribute("email", emailName);
		return "email/emailtest";
		
	}
	
	/**
	 * 邮件发送测试
	 */
	@RequestMapping("doemail.html")
	public String toemail(String host,Integer port,String emailname,String emailpassword,String toEmail,String title,String message,String context ){
		
		      SimpleEmail mail = new SimpleEmail();
		      // 设置邮箱服务器信息25
		      mail.setSmtpPort(port);
		      //"smtp.126.com"
		      mail.setHostName(host);
		      // 设置密码验证器
		      mail.setAuthentication(emailname, emailpassword);
		      try {
				// 设置邮件发送者
				  mail.setFrom(emailname);
				  // 设置邮件接收者
				  mail.addTo(toEmail);
				  // 设置邮件编码
				  mail.setCharset("UTF-8");
				  // 设置邮件主题
				  mail.setSubject(title);
				  //发送内容
				  mail.setMsg(context);
				  // 设置邮件发送时间
				  mail.setSentDate(new Date());
				  // 发送邮件
				  mail.send();
			} catch (EmailException e) {
				//e.printStackTrace();
				System.out.println("失败，请重试");
			}
	     // System.out.println("发送成功");
		      Msg_info msginfo=new Msg_info();
		      Session session=SecurityUtils.getSubject().getSession();
		      User user=(User) session.getAttribute("user");
		      msginfo.setuId(user.getuId());
		      msginfo.setMsgTitle(title);
		      msginfo.setMsgContent(context);
		      msginfo.setMsgState("未读");
		      msginfo.setMsgSendtoUId(null);
		      msginfo.setMsgCreateTime(new Date());
		      User touser=userService.getUserByUemal(toEmail);
		      msginfo.setMsgSendtoUId(touser.getuId());
		     /* 把东西存到信箱表中*/
		      msgService.insertByMsgInfo(msginfo);
		     return "email/emailtest";
		
	}
	
	@RequestMapping(value="updatemsgstate/{msgid}",produces = {"application/json;charset=UTF-8"})
	@ResponseBody
	public Map getMap(@PathVariable Integer msgid){
		System.out.println(msgid);
		Msg_info msginfo=new Msg_info();
		msginfo.setMsgId(msgid);
		msginfo.setMsgState("已读");
		msgService.updateMsg_infoByMsgid(msginfo);
		Session session=SecurityUtils.getSubject().getSession();
		String url=(String) session.getAttribute("email");
		Map map=new HashMap();
		map.put("emailurl", url);
		return map;
		
	}
	
}
