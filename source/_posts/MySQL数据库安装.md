---
title: MySQL数据库安装
date: 2017-04-19
categories: [tools]
tags: [mysql,数据库]
description: MySQL数据库的好处就是开源免费，越来越受企业欢迎，很多企业都搭建了自己的MySQL服务架构，如MHA、MMM等，这一切都要先从安装说起....
---
### 下载 
#### 选择版本 
win版本下载地址： https://dev.mysql.com/downloads/mysql/ 
下载官方推荐的版本，点击Download 
![输入图片说明](https://static.oschina.net/uploads/img/201704/19092259_gdOn.png "在这里输入图片标题")

#### 跳转下载页 
跳转到下载页面，选择如图下载版本，点击Download 
![输入图片说明](https://static.oschina.net/uploads/img/201704/19092412_jobb.png "在这里输入图片标题")

#### 开始下载 
点击 No thanks, just start my download. 开始下载 
![输入图片说明](https://static.oschina.net/uploads/img/201704/19092811_gzax.png "在这里输入图片标题")

### 安装 
#### 双击安装包 
![输入图片说明](https://static.oschina.net/uploads/img/201704/19093909_7HKw.png "在这里输入图片标题")

#### 同意协议书 
同意协议书，打钩之后点击Next 
![输入图片说明](https://static.oschina.net/uploads/img/201704/19094110_g9E6.png "在这里输入图片标题")

#### 选择安装类型 
安装类型有：
Developer Default 默认安装类型；
Server only 仅作为服务器；
Client only 仅作为客户端； 
Full 完全安装类型；
Custom 用户自定义安装类型。
我们这里以自定义Custom安装为例，选择Custom之后点击Next 
![输入图片说明](https://static.oschina.net/uploads/img/201704/19094412_r7Ww.png "在这里输入图片标题")

#### 选择组件 
选择好需要安装的组件，点击Next 
![输入图片说明](https://static.oschina.net/uploads/img/201704/19101703_esu9.png "在这里输入图片标题")

#### 检查配置 
![输入图片说明](https://static.oschina.net/uploads/img/201704/19100453_rTOT.png "在这里输入图片标题")

#### 开始安装 
点击Execute开始安装 
![输入图片说明](https://static.oschina.net/uploads/img/201704/19100528_Dp0t.png "在这里输入图片标题")

#### 安装完成 
安装完成之后点击Next
![输入图片说明](https://static.oschina.net/uploads/img/201704/19102347_NlcB.png "在这里输入图片标题")

#### 准备配置 
进入准备配置页面，点击Next 
![](https://static.oschina.net/uploads/img/201704/19102512_4YF4.png "在这里输入图片标题")

#### 开始配置 
这里有三个选择： 
1.Developer Machine(开发机器)，个人用桌面工作站，占用最少的系统资源； 
2.Server Machine（服务器），MySQL服务器可以同其它应用程序一起运行，例如FTP、email和web服务器。MySQL服务器配置成使用适当比例的系统资源； 
3.Dedicated MySQL Server Machine（专用MySQL服务器）：该选项代表只运行MySQL服务的服务器。假定运行没有运行其它应用程序。MySQL服务器配置成使用所有可用系统资源 
根据自己情况选择即可，一般WEB服务器选择第二个，Server Machine即可。 
个人电脑安装选择第一个，Developer Machine比较好，选择完点击Next
![输入图片说明](https://static.oschina.net/uploads/img/201704/19103022_AVRV.png "在这里输入图片标题") 

#### 配置密码 
为root用户配置密码，点击Next 
![输入图片说明](https://static.oschina.net/uploads/img/201704/19103153_XXPd.png "在这里输入图片标题")

#### windows配置 
默认，点击Next 
![输入图片说明](https://static.oschina.net/uploads/img/201704/19103345_QIo5.png "在这里输入图片标题")

#### 拓展配置 
默认，点击Next 
![输入图片说明](https://static.oschina.net/uploads/img/201704/19103414_c8dd.png "在这里输入图片标题")

#### 申请服务配置 
点击Execute，等待执行完点击Finish 
![输入图片说明](https://static.oschina.net/uploads/img/201704/19103521_5T0p.png "在这里输入图片标题") 
![输入图片说明](https://static.oschina.net/uploads/img/201704/19103925_nIf5.png "在这里输入图片标题")

#### 检查校验配置 
最后安装图片校验一下刚刚所有的配置，最后点击Finish即可 
![输入图片说明](https://static.oschina.net/uploads/img/201704/19104053_Hs5z.png "在这里输入图片标题")
![输入图片说明](https://static.oschina.net/uploads/img/201704/19104129_L8aH.png "在这里输入图片标题")
![输入图片说明](https://static.oschina.net/uploads/img/201704/19104241_Ugiv.png "在这里输入图片标题")

### 检验 
找到安装程序：![输入图片说明](https://static.oschina.net/uploads/img/201704/19105026_F3pg.png "在这里输入图片标题") 
打开之后输入密码，输入命令：show databases，即可以查看到所有的数据库了。 
![输入图片说明](https://static.oschina.net/uploads/img/201704/19105256_gntX.png "在这里输入图片标题")