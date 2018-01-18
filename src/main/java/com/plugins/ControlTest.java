package com.plugins;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by wangnanjie on 2018/1/16.
 */
@Controller
public class ControlTest {
    @RequestMapping("getWeather")
    public String getWeather(){
        WeatherApi weatherApi = new WeatherApi();
        String weatherInfo = weatherApi.getWeatherInform("上海");
        //解析返回的天气
        return weatherInfo;
    }

}
