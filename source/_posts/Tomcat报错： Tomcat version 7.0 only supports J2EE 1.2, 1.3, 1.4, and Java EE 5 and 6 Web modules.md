---
title: Tomcat报错： Tomcat version 7.0 only supports J2EE 1.2, 1.3, 1.4, and Java EE 5 and 6 Web modules
date: 2017-05-04
categories: [tomcat]
tags: [tomcat]
description: 项目结合Tomcat使用的时候会出现很多问题，我会把日常开发中遇到的问题记录下来，供大家参考，避免踩坑！
---
**问题描述** 
web项目加载到tomcat时报错：** Tomcat version 7.0 only supports J2EE 1.2, 1.3, 1.4, and Java EE 5 and 6 Web modules** 
如图： 
![输入图片说明](https://static.oschina.net/uploads/img/201705/04150350_OvFp.jpg "在这里输入图片标题")

**处理方法** 
修改 org.eclipse.wst.common.project.facet.core.xml文件。 
在eclipse的workspace里面找到该项目，在项目下找到org.eclipse.wst.common.project.facet.core.xml文件。 
路径：.settings->org.eclipse.wst.common.project.facet.core.xml 
打开文件，如下 
```xml 
<?xml version="1.0" encoding="UTF-8"?>
<faceted-project>
  <fixed facet="wst.jsdt.web"/>
  <installed facet="java" version="1.7"/>
  <installed facet="jst.web" version="3.1"/>
  <installed facet="jst.jsf" version="2.2"/>
  <installed facet="jst.jaxrs" version="2.0"/>
  <installed facet="wst.jsdt.web" version="1.0"/>
</faceted-project>
```
修改   <installed facet="jst.web" version="3.1"/> ，把version修改成3.0，修改完如下 
```xml 
<?xml version="1.0" encoding="UTF-8"?>
<faceted-project>
  <fixed facet="wst.jsdt.web"/>
  <installed facet="java" version="1.7"/>
  <installed facet="jst.web" version="3.0"/>
  <installed facet="jst.jsf" version="2.2"/>
  <installed facet="jst.jaxrs" version="2.0"/>
  <installed facet="wst.jsdt.web" version="1.0"/>
</faceted-project>
```
**处理成果** 
![输入图片说明](https://static.oschina.net/uploads/img/201705/04150812_M8Xf.png "在这里输入图片标题")