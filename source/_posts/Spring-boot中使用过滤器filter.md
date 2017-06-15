---
title: Spring boot中使用过滤器filter
date: 2017-06-16 07:00:34
categories: [java]
tags:[java,spring boot]
description:介绍一下spring boot中filter的使用方法。
---
### 传统JavaEE
传统的javaEE增加Filter是在web.xml中配置，如以下代码： 
```xml
<filter>
     <filter-name>TestFilter</filter-name>
        <filter-class>com.higher.filter.TestFilter</filter-class>
</filter>
<filter-mapping>
    <filter-name>TestFilter</filter-name>
    <url-pattern>/*</url-pattern>
    <init-param>
       <param-name>paramName</param-name>
       <param-value>paramValue</param-value>
    </init-param>
</filter-mapping>
```
### spring boot中@Bean方式(旧方法)
#### 自定义filter
``` java
package com.higher.filter;

import javax.servlet.*;
import java.io.IOException;

public class TestFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain)
            throws IOException, ServletException {
        System.out.println("TestFilter");
    }

    @Override
    public void destroy() {

    }
}
​````
#### 使用注解[@Bean](https://my.oschina.net/bean)
在Application.java中添加
​```java
@Bean  
public FilterRegistrationBean testFilterRegistration() {
      FilterRegistrationBean registration = new FilterRegistrationBean();
      registration.setFilter(new TestFilter());
      registration.addUrlPatterns("/*");
      registration.addInitParameter("paramName", "paramValue");
      registration.setName("testFilter");
      registration.setOrder(1);
      return registration;
}
```
### spring boot中@WebFilter方式(新方法-推荐)
#### 自定义filter
```java
package com.higher.filter;
import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import org.springframework.core.annotation.Order;

@Order(1)
@WebFilter(filterName = "testFilter ", urlPatterns = "/*")
public class TestFilter implements Filter{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest arg0, ServletResponse arg1, FilterChain arg2)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		System.out.println("TestFilter");
	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}		
}
```
其中@Order注解表示执行过滤顺序，值越小，越先执行
#### 使用注解@ServletComponentScan
```java
@SpringBootApplication
@ServletComponentScan
public class ApiApplication {
	public static void main(String[] args) {
		SpringApplication.run(ApiApplication.class, args);
	}
}
```