package com.config;

import java.io.IOException;

import javax.sql.DataSource;

import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.mapper.MapperScannerConfigurer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;
import org.springframework.core.io.support.ResourcePatternResolver;

/**
 * mybatis 配置文件
 * @author Administrator
 *
 */
@Configuration
public class MappingConfig {
     /**
      * 获取SqlSessionFactory 
      * @param dataSource
      * @return
      */
	@Bean
	public SqlSessionFactoryBean sqlSessionFactory(DataSource dataSource){
		SqlSessionFactoryBean ssf=new SqlSessionFactoryBean();
		ssf.setDataSource(dataSource);
		ResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();
		try {
		ssf.setMapperLocations(resolver.getResources("classpath:mapping/*.xml"));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ssf.setTypeAliasesPackage("com.entity");
		return ssf;
	}
	/**
	 * 自动生成mybatis dao的实现类
	 * @return
	 */
	@Bean
	public MapperScannerConfigurer mapperScannerConfigurer(){
		MapperScannerConfigurer msc=new MapperScannerConfigurer();
		msc.setBasePackage("com.dao");
		//msc.setSqlSessionFactoryBeanName("sqlSessionFactoryName");
		return msc;
		
	}
}
