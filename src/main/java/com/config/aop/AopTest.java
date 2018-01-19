package com.config.aop;



import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;
import com.entity.Login;

/**
 * aop 后置切面测试类
 * @author Administrator
 *
 */
@Component
@Aspect
public class AopTest {
   /**
    * 切入点
    */
	@Pointcut("execution(* com.service.*.lo*(..))")
	public void pointtest(){
		
	}
	
	/**
	 * 后置增强
	 * @param joinPoint
	 */
    @AfterReturning(value = "execution(* com.service.*.lo*(..))")  
    public void doAfterReturningAdvice1(JoinPoint joinPoint){  
    	/*HttpServletRequest request =((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest(); 
        HttpSession session =request.getSession(); */
    	Session session=SecurityUtils.getSubject().getSession();
    	String usercode=(String) session.getAttribute("usercode");
        System.out.println("第一个后置触发了："+usercode);  
    }  
	
	
	/**
	 * 最终增强
	 * @param joinPoint
	 */
	@After(value="pointtest()")
	public void aftertest(JoinPoint jp){
		System.out.println("最终后置通过触发了！");
		System.out.println("调用 "+jp.getTarget()+" 的 " + jp.getSignature().getName() 
			+ " 方法");
	}
	

  
}
