package com.config.aop;



import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Date;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Request;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.context.request.ServletWebRequest;

import com.entity.Login;
import com.entity.Operation;
import com.entity.Thelog;
import com.service.LoginService;
import com.service.xtmgr.OperationService;
import com.service.xtmgr.ThelogService;

/**
 * 拦截器测试类/aop 后置切面测试类 
 * @author 巴士里
 *
 */
@Component
@Aspect
public class AopTest {
	
	Integer id;   
    
    @Autowired  
    LoginService loginService; 
    @Autowired 
    ThelogService logService;
    @Autowired
    OperationService operationService;
	
   /**
    * 切入点
    */
	@Pointcut("execution(* com.service.*.lo*(..))")
	public void pointtest(){
	}
	
	/**
	 * 后置增强--登录日志
	 * @param joinPoint
	 * @throws UnknownHostException 
	 * @AfterReturning 中的参数( value="切入点表达式或命名切入点", 
	 * pointcut="切入点表达式或命名切入点", 
	 * argNames="参数列表参数名",
	 * returning="返回值对应参数名")
	 * 
	 * 在服务器启动后第一次登录时会有两次记录
	 */
    @AfterReturning(value = "execution(* com.service.*.login*(..))",argNames = "object", returning = "object")  
    public void doAfterReturningAdvice1(JoinPoint joinPoint,Object object) throws UnknownHostException{  
    	Login login=(Login) object;
    	if(login==null){
    		return;
    	}
    	//没有参数
    	if(joinPoint.getArgs()==null){
    		return;
    	}
    	id=login.getuId();
    	//获取方法名
    	//String mname=joinPoint.getSignature().getName();
    	//获取操作内容
    	//String opContent=optionContent(joinPoint.getArgs(), mname);
    	//获取登录IP
    	InetAddress myip = InetAddress.getLocalHost();
    	
    	Thelog thelog=new Thelog();
    	thelog.setThelogIp(myip.getHostAddress());
    	thelog.setThelogLoginTime(new Date());
    	thelog.setuId(id);
    	logService.addSelective(thelog);
    	System.out.println(thelog.getThelogId()+"=============");
//    	RequestAttributes ra = RequestContextHolder.getRequestAttributes();  
//    	ServletRequestAttributes sra = (ServletRequestAttributes) ra;  
//    	HttpServletRequest request = sra.getRequest();  
//    	request.getSession().setAttribute("log", thelog);
    	Session session=SecurityUtils.getSubject().getSession();
    	session.setAttribute("thelog", thelog);
    	
        System.out.println("登录触发了=============="); 
    }  
	
    /**
     * 操作日志--添加操作
     * @param joinPoint
     * @param object
     * @throws UnknownHostException
     */
    @AfterReturning(value = "execution(* com.service..*.insert*(..))")  
    public void doAfterReturnInsert(JoinPoint joinPoint){  
    	//判断参数
    	if(joinPoint.getArgs()==null){
    		return;
    	}
    	String mname=joinPoint.getSignature().getName();
    	System.out.println(mname);
    	
    	Operation operation=new Operation();
    	operation.setOperationTime(new Date());
    	operation.setuId(id);
    	if(mname.equals("insertAnnouncementSelective")){
    		operation.setOperationEven("添加公告");
    	}
    	if(mname.equals("insertCounductSelective")){
    		operation.setOperationEven("添加守则");
    	}
    	int i=operationService.addSelective(operation);
    	
        System.out.println(i+"添加员工触发了=============="); 
    } 
    
    /**
     * 操作日志--删除操作
     * @param joinPoint
     * @param object
     * @throws UnknownHostException
     */
    @AfterReturning(value = "execution(* com.service..*.del*(..))")  
    public void doAfterReturnDelete(JoinPoint joinPoint){  
    	//判断参数
    	if(joinPoint.getArgs()==null){
    		return;
    	}
    	String mname=joinPoint.getSignature().getName();
    	System.out.println(mname);
    	
    	Operation operation=new Operation();
    	operation.setOperationTime(new Date());
    	operation.setuId(id);
    	if(mname.equals("deleteByAnnouncementPrimaryKey")){
    		operation.setOperationEven("删除公告");
    	}
    	if(mname.equals("deleteByCounductPrimaryKey")){
    		operation.setOperationEven("删除守则");
    	}
    	if(mname.equals("deleteByOperationPrimaryKey")){
    		operation.setOperationEven("删除操作日志");
    	}
    	if(mname.equals("deleteByThelogPrimaryKey")){
    		operation.setOperationEven("删除登录日志");
    	}
    	int i=operationService.addSelective(operation);
    	
        System.out.println(i+"删除触发了=============="); 
    } 
    
    /**
     * 操作日志--更新(修改)操作
     * @param joinPoint
     * @param object
     * @throws UnknownHostException
     */
    @AfterReturning(value = "execution(* com.service..*.up*(..))")  
    public void doAfterReturnUpdate(JoinPoint joinPoint){  
    	//判断参数
    	if(joinPoint.getArgs()==null){
    		return;
    	}
    	String mname=joinPoint.getSignature().getName();
    	System.out.println(mname);
    	
    	Operation operation=new Operation();
    	operation.setOperationTime(new Date());
    	operation.setuId(id);
    	if(mname.equals("updateByAnnouncementPrimaryKey")){
    		operation.setOperationEven("修改公告");
    	}
    	if(mname.equals("updateByCounductPrimaryKey")){
    		operation.setOperationEven("修改守则");
    	}
    	if(mname.equals("updateByOperationPrimaryKey")){
    		operation.setOperationEven("修改操作日志");
    	}
    	if(mname.equals("updateByThelogPrimaryKey")){
    		operation.setOperationEven("修改登录日志");
    	}
    	int i=operationService.addSelective(operation);
    	
        System.out.println(i+"修改触发了=============="); 
    } 
    
	/**
	 * 最终增强
	 * @param joinPoint
	 */
	/*@After(value="pointtest()")
	public void aftertest(JoinPoint jp){
		System.out.println("最终后置通过触发了！");
		System.out.println("调用 "+jp.getTarget()+" 的 " + jp.getSignature().getName() 
			+ " 方法");
	}*/
	
	 /** 
     * 使用Java反射来获取被拦截方法(insert、update)的参数值， 将参数值拼接为操作内容 
     *  
     * @param args 
     * @param mName 
     * @return 
     */  
    public String optionContent(Object[] args, String mName) {  
        if (args == null) {  
            return null;  
        }  
        StringBuffer rs = new StringBuffer();  
        rs.append(mName);  
        String className = null;  
        int index = 1;  
        // 遍历参数对象  
        for (Object info : args) {  
            // 获取对象类型  
            className = info.getClass().getName();  
            className = className.substring(className.lastIndexOf(".") + 1);  
            rs.append("[参数" + index + "，类型:" + className + "，值:");  
            // 获取对象的所有方法  
            Method[] methods = info.getClass().getDeclaredMethods();  
            // 遍历方法，判断get方法  
            for (Method method : methods) {  
                String methodName = method.getName();  
                // 判断是不是get方法  
                if (methodName.indexOf("get") == -1) {// 不是get方法  
                    continue;// 不处理  
                }  
                Object rsValue = null;  
                try {  
                    // 调用get方法，获取返回值  
                    rsValue = method.invoke(info);  
                } catch (Exception e) {  
                    continue;  
                }  
                // 将值加入内容中  
                rs.append("(" + methodName + ":" + rsValue + ")");  
            }  
            rs.append("]");  
            index++;  
        }  
        return rs.toString();  
    }  
  
}
