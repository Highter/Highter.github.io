---
title: tomcat配置详解
date: 2017-04-27
categories: [tomcat]
tags: [tomcat]
description: 本文介绍一些比较常用的tomcat配置。
---
### 配置用户名和密码 
找到tomcat的目录，修改conf路径下的tomcat-users.xml文件，如我本地地址为 D:\Java\TOMCAT\apache-tomcat-7-8080\conf\tomcat-users.xml 
在<tomcat-users>中添加如下内容，用户名和密码都为admin，保存即可。 
``` xml
<tomcat-users>
  <role rolename="manager-script"/>
  <role rolename="manager-gui"/>
  <user username="admin" password="admin" roles="manager-script,manager-gui"/>
</tomcat-users>
```

### 配置端口 
修改conf路径下的server.xml文件，如我本地地址为 D:\Java\TOMCAT\apache-tomcat-7-8081\conf\server.xml 
 a、修改http访问端口（默认为8080端口），将8080修改为tomcat不在使用的端口号，例如8081 
``` xml
 <Connector port="8081" protocol="HTTP/1.1"
               connectionTimeout="20000"
               redirectPort="8443" />
```

b、修改Shutdown端口（默认为8005端口），将8005修改为没有在使用的端口号，例如8015 
``` xml
<Server port="8015" shutdown="SHUTDOWN">
```

c、修改8009端口，将8009修改为没有在使用的端口号，例如8019 
``` xml
<Connector port="8019" protocol="AJP/1.3" redirectPort="8443" />
```