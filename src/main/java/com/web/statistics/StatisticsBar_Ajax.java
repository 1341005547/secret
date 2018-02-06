package com.web.statistics;

import com.entity.statistics.AjaxBar;
import com.service.StatisticsServiceMonth;
import com.util.NumberFormatUtil;
import com.util.StatisticsUtil;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;


import java.util.*;

/**
 * Created by 王楠杰 on 2018/1/17.
 */

@RestController
public class StatisticsBar_Ajax extends BaseControl {
    /**
     * 注入月统计业务
     */
    @Autowired
    private StatisticsServiceMonth statisticsServiceMonth;

    /**
     * @param [time_zones, deptId]
     * @return com.entity.statistics.AjaxBar
     * @date 2018/1/28 15:43
     * @methodName getCharjsData
     */
    @RequestMapping("getCharjsData")
    @ResponseBody
    public Map getCharjsData() {
        Integer deptId = (Integer) SecurityUtils.getSubject().getSession().getAttribute("deptId");
        Map map = new HashMap();
        //获得所在部门的总人数
        Long sumDept = statisticsServiceMonth.getEmpNumber(deptId);
        String time_zones = getLastYearRange();
        int lastYear = getLastYear();
        Double[] verticalAxis = new Double[12];
        for (int i = 1; i <= 12; i++) {
            time_zones = getMonthRange(lastYear, i);
            long nomalDept = statisticsServiceMonth.getStatisticsEmpNumber(time_zones, deptId, "正常");
            verticalAxis[i - 1] = ((double) nomalDept / sumDept) * 100;
        }
        map.put("lab1", verticalAxis);
        map.put("lab", new String[]{"17-01", "17-02", "17-03", "17-04", "17-05", "17-06", "17-07", "17-08", "17-09", "17-10", "17-11", "17-12"});
        String title = time_zones + "  " + getDeptName(deptId) + "考勤情况";
        map.put("title", title);
        return map;
    }


}
