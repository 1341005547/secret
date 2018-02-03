package com.dao;

import java.util.List;

import com.entity.Oa_manual_sign;
import org.apache.ibatis.annotations.Param;

import com.entity.statistics.BaseStatisticsEntry;

public interface Oa_manual_signMapper {
    int deleteByPrimaryKey(Integer omsId);

    int insert(Oa_manual_sign record);

    int insertSelective(Oa_manual_sign record);

    Oa_manual_sign selectByPrimaryKey(Integer omsId);

    int updateByPrimaryKeySelective(Oa_manual_sign record);

    int updateByPrimaryKey(Oa_manual_sign record);
    //获取所有月份的具体信息
    List listAllManual(@Param("year") String year, @Param("u_id") int u_id);
    //获取一个月早退，迟到次数
    List getMonthQuality(@Param("month") String month);
    //获取一个月的出勤天数计个人信息
    Oa_manual_sign getMonthByPerson(@Param("month") String month, @Param("uId") int uId);
    //统计一个月中，早退/迟到/请假等次数
    BaseStatisticsEntry getMonthByPersonManual(@Param("month") String month, @Param("uId") int uId, @Param("result") String result);
    //查询今天是否签到
    String selectStartTime(@Param("uId") int uId, @Param("month") String month);
    //查询今天是否签退
    Oa_manual_sign selectEndTime(@Param("uId") int uId, @Param("month") String month);
    //添加处理后的考勤信息
    int insertBase(BaseStatisticsEntry base);
    
}