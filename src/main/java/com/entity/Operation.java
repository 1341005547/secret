package com.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

/**
 * 操作日志
 * @author 巴士里
 *
 */
public class Operation {
    private Integer operationId;

    private Integer uId;

    private String operationEven;

    private Date operationTime;

    private String uname;
    
    public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public Integer getOperationId() {
        return operationId;
    }

    public void setOperationId(Integer operationId) {
        this.operationId = operationId;
    }

    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }

    public String getOperationEven() {
        return operationEven;
    }

    public void setOperationEven(String operationEven) {
        this.operationEven = operationEven == null ? null : operationEven.trim();
    }

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss") 
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
    public Date getOperationTime() {
        return operationTime;
    }

    public void setOperationTime(Date operationTime) {
        this.operationTime = operationTime;
    }
}