---
title: Jenkins安装(war包形式)
date: 2017-04-26
categories: [jenkins]
tags: [jenkins]
description: Jenkins是一个可扩展的持续集成引擎,它非常易于安装和配置，使用Jenkins可以搭建持续集成环境。安装Jenkins安装只是一个开始！ 安装Jenkins可以通过安装包方式来安装，也可以使用更简单的方式，就是war包形式，个人也比较推荐war形式来安装。
---
### 下载 
下载地址： https://jenkins.io/download/ 
选择war包下载，这里我选择的是稳定版本。 
![输入图片说明](https://static.oschina.net/uploads/img/201704/26163002_aWpb.png "在这里输入图片标题") 

### 安装 
直接放到tomcat的webapps目录下，启动tomcat就可以了,双击startup.bat启动 
![输入图片说明](https://static.oschina.net/uploads/img/201704/26170717_kAV9.png "在这里输入图片标题")

### 配置Jenkins server 
#### 配置页面 
在浏览器上输入 http://127.0.0.1:8080/jenkins/ 打开jenkins服务器 
![输入图片说明](https://static.oschina.net/uploads/img/201704/26171457_fP0M.png "在这里输入图片标题")

#### 输入默认密码 
根据提示，找到密码输入，点击Continue 
![输入图片说明](https://static.oschina.net/uploads/img/201704/26171734_AHsc.png "在这里输入图片标题") 

#### 配置Jenkins server 
安装插件，这里选择推荐的插件进行安装，点击Install suggested plugins即可。当然用户也可以自定义选择插件进行安装，如果这一步选择插件有遗漏的话，后续也可以进行补充安装 
![输入图片说明](https://static.oschina.net/uploads/img/201704/18144639_q08O.png "配置Jenkins server")

#### 等待配置 
等待安装，等待10分钟左右（电脑配置不同安装时间也不同） 
![输入图片说明](https://static.oschina.net/uploads/img/201704/18145103_1PPB.png "等待配置")

#### 设置用户和密码 
安装完之后，跳到配置用户和密码的界面，输入相关信息，设置用户和密码，点击 Sava and Finish 即可。如果这一步被跳过，默认用户名就是admin，默认密码就是3.2步骤的密码 
![输入图片说明](https://static.oschina.net/uploads/img/201704/26174138_aUlS.png "在这里输入图片标题")

#### 配置成功 
到此，Jenkins server已经配置成功了。点击 Start using Jenkins 开启Jenkins之旅吧！ 
![输入图片说明](https://static.oschina.net/uploads/img/201704/18150542_WffE.png "在这里输入图片标题") 

### 访问Jenkins服务器 
#### 登陆 
接下来在日常使用中，如果想打开Jenkins服务器，在浏览器输入 http://127.0.0.1:8080/jenkins ，填写配置的用户名和密码，点击登陆即可 
![输入图片说明](https://static.oschina.net/uploads/img/201704/26175348_HlWZ.png "在这里输入图片标题")

#### Jenkins主界面 
登陆成功之后，就可以进入到Jenkins主界面了。欢迎来到新大陆！ 
![输入图片说明](https://static.oschina.net/uploads/img/201704/18151306_MK5K.png "Jenkins主界面")  

### Jenkins服务器开启和关闭 
在jenkins.war所在的tomcat路径下，找到bin目录 
比如我本地的路径： D:\Java\TOMCAT\apache-tomcat-7-8080\bin 
停止：shutdown.bat 
开始：startup.bat 