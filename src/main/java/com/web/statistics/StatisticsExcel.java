package com.web.statistics;

import com.entity.statistics.BaseStatisticsEntry;
import com.entity.statistics.StatisticsCondition;
import com.service.StatisticsExcelService;
import com.util.StatisticsUtil;
import com.util.ExcelOutput;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletResponse;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by 王楠杰 on 2018/1/15.
 */
@Controller
public class StatisticsExcel extends BaseControl {
    /**
     * 注入excel业务层
     */
    @Autowired
    private StatisticsExcelService statisticsExcelService;
    /**
     * 获取部门月统计数据
     * @date 2018/1/28 15:34
     * @methodName  index
     * @param  []  
     * @return org.springframework.web.servlet.ModelAndView  
     */  
    @RequestMapping("excel_print")
    public ModelAndView index(){
        //获得上个月部门的统计数据
        StatisticsCondition statisticsCondition = new StatisticsCondition();
        statisticsCondition.setDeptId(1);
        List<BaseStatisticsEntry> list = statisticsExcelService.selectData(statisticsCondition);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("attendance/statistics_excel");
        modelAndView.addObject("list",list);
        return modelAndView;
    }


    /**
     * excel导入table
     * @date 2018/1/28 15:34
     * @methodName  getExcel
     * @param  [response]  
     * @return void  
     */  
    @RequestMapping("printExcel")
    public void  getExcel( HttpServletResponse response){
        List<BaseStatisticsEntry> list = statisticsExcelService.selectData(new StatisticsCondition());
        if (list != null && list.size()>0) {//查询的数据不为空就对数据进行导出
            //导出文件的标题
            String title = "员工考勤统计结果"+ StatisticsUtil.format(new Date(), "yyyyMMdd")+".xls";
            //设置表格标题行
            String[] headers = new String[] {"统计信息序号","用户编号", "部门编号","用户名","考勤结果","考勤时间"};
            List<Object[]> dataList = new ArrayList();
            Object[] objs = null;
            for (BaseStatisticsEntry baseStatisticsEntry : list) {//循环每一条数据
                objs = new Object[headers.length];
                objs[0] = baseStatisticsEntry.getId();//统计信息序号
                objs[1] = baseStatisticsEntry.getUid();//用户编号
                objs[2] = baseStatisticsEntry.getDeptId();//部门编号
                objs[3] = baseStatisticsEntry.getUname();//用户名
                objs[4] = baseStatisticsEntry.getManualResult();//考勤结果
                objs[5] = baseStatisticsEntry.getTime();//考勤时间
                //数据添加到excel表格
                dataList.add(objs);
            }
            //使用流将数据导出
            OutputStream out = null;
            try {
                //防止中文乱码
                String headStr = "attachment; filename=\"" + new String( title.getBytes("gb2312"), "ISO8859-1" ) + "\"";
                response.setContentType("octets/stream");
                response.setContentType("APPLICATION/OCTET-STREAM");
                response.setHeader("Content-Disposition", headStr);
                out = response.getOutputStream();
                //ExportExcel ex = new ExportExcel(title, headers, dataList);//有标题
                ExcelOutput ex = new ExcelOutput(title, headers, dataList);//没有标题
                ex.export(out);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

    }

}
