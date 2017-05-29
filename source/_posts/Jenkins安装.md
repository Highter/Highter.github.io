---
title: Jenkins安装
date: 2017-04-18
categories: [jenkins]
tags: [jenkins]
description: Jenkins是一个可扩展的持续集成引擎,它非常易于安装和配置，使用Jenkins可以搭建持续集成环境。安装Jenkins安装只是一个开始！
---
### 下载   
下载地址： https://jenkins.io/download/  
选择适合自己电脑型号的版本，我这里下载的是win系统的版本。  
![输入图片说明](https://static.oschina.net/uploads/img/201704/18142011_tguE.png "在这里输入图片标题")  

### 安装   
#### 解压  
解压，得到jenkins.msi安装包，双击运行  
![输入图片说明](https://static.oschina.net/uploads/img/201704/18142547_Zto6.png "解压")  
#### 欢迎界面   
点击Next  
![输入图片说明](https://static.oschina.net/uploads/img/201704/18142634_gkDx.png "Next")

#### 选择安装路径  
选择好安装路径之后，点击Next  
![输入图片说明](https://static.oschina.net/uploads/img/201704/18142650_vELh.png "选择安装路径")

#### 安装  
点击Install，开始安装  
![输入图片说明](https://static.oschina.net/uploads/img/201704/18142711_iSNS.png "开始安装")

#### 等待安装  
![输入图片说明](https://static.oschina.net/uploads/img/201704/18142818_h2wQ.png "在这里输入图片标题")  

#### 安装完成  
到此，Jenkins 已经安装完成，点击Finish跳转到网页上进行配置  
![输入图片说明](https://static.oschina.net/uploads/img/201704/18142841_1H0w.png "安装完成")

### 配置Jenkins server   
#### 配置页面  
在2.6步骤的时候点击Finish会自动跳转到配置页面，如果不小心关闭了，在浏览器上输入 http://127.0.0.1:8080 自行打开  
![输入图片说明](https://static.oschina.net/uploads/img/201704/18144444_yVOJ.png "配置页面")  

#### 输入默认密码  
根据提示，找到密码输入，点击Continue  
![输入图片说明](https://static.oschina.net/uploads/img/201704/18144102_8nC6.png "输入默认密码")  

#### 配置Jenkins server  
安装插件，这里选择推荐的插件进行安装，点击Install suggested plugins即可。当然用户也可以自定义选择插件进行安装，如果这一步选择插件有遗漏的话，后续也可以进行补充安装  
![输入图片说明](https://static.oschina.net/uploads/img/201704/18144639_q08O.png "配置Jenkins server")

#### 等待配置  
等待安装，等待10分钟左右（电脑配置不同安装时间也不同）  
![输入图片说明](https://static.oschina.net/uploads/img/201704/18145103_1PPB.png "等待配置")

#### 设置用户和密码  
安装完之后，跳到配置用户和密码的界面，输入相关信息，设置用户和密码，点击 Sava and Finish 即可。如果这一步被跳过，默认用户名就是admin，默认密码就是3.2步骤的密码  
![输入图片说明](https://static.oschina.net/uploads/img/201704/18150006_ng1K.png "用户和密码")

#### 配置成功  
到此，Jenkins server已经配置成功了。点击 Start using Jenkins 开启Jenkins之旅吧！  
![输入图片说明](https://static.oschina.net/uploads/img/201704/18150542_WffE.png "在这里输入图片标题")  

### 访问Jenkins服务器  
#### 登陆  
接下来在日常使用中，如果想打开Jenkins服务器，在浏览器输入 http://127.0.0.1:8080 ，填写配置的用户名和密码，点击登陆即可  
![输入图片说明](https://static.oschina.net/uploads/img/201704/18151018_oqrH.png "在这里输入图片标题")  

#### Jenkins主界面  
登陆成功之后，就可以进入到Jenkins主界面了。欢迎来到新大陆！  
![输入图片说明](https://static.oschina.net/uploads/img/201704/18151306_MK5K.png "Jenkins主界面")  

### Jenkins服务器维护命令  
打开控制台/命令行 - >转到您的Jenkins安装目录。分别执行以下命令  
停止：jenkins.exe stop  
开始：jenkins.exe start  
重新启动：jenkins.exe restart