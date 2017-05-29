---
title: JSP页面报错：The superclass javax.servlet.http.HttpServlet was not found on the Java Build Path
date: 2017-05-02
categories: [java]
tags: [java]
description: 项目结合Tomcat使用的时候会出现很多问题，我会把日常开发中遇到的问题记录下来，供大家参考，避免踩坑！
---
 **问题描述** 
新建的web项目，index.jsp页面报错：**The superclass "javax.servlet.http.HttpServlet" was not found on the Java Build Path** 
如图： 
![ ](https://static.oschina.net/uploads/img/201705/03160922_nLSi.png "在这里输入图片标题")


**处理方法** 
单击鼠标右键》Build Path》Configure Build Path,在Libraries下点击 Add Variable  
![输入图片说明](https://static.oschina.net/uploads/img/201705/03163334_1Gnp.png "在这里输入图片标题") 
选择 Server Runtime 之后点击 Next 
![输入图片说明](https://static.oschina.net/uploads/img/201705/03163443_fbNY.png "在这里输入图片标题") 
选择Tomcat之后点击Finish 
![输入图片说明](https://static.oschina.net/uploads/img/201705/03163523_KK2X.png "在这里输入图片标题") 
最后点击 OK 即可 
![输入图片说明](https://static.oschina.net/uploads/img/201705/03163547_U5ca.png "在这里输入图片标题")

**处理成果** 
![输入图片说明](https://static.oschina.net/uploads/img/201705/03163613_RBg9.png "在这里输入图片标题") 