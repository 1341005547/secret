package com.web;

import com.Util.Constants;
import com.entity.User;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.subject.Subject;


/**
 * Created by Administrator on 2018/1/15.
 */
public class BaseControl {

    User getCurrentUser(){
        Subject currentUser = SecurityUtils.getSubject();
        return (User)currentUser.getSession().getAttribute(Constants.current_User);
    }


}
