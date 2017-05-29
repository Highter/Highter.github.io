---
title: JDK安装
date: 2017-04-14
categories: [java]
tags: [java,jdk]
description: JDK 是Java开发工具包 (Java Development Kit ) 的缩写。它是一种用于构建在 Java 平台上发布的应用程序、applet 和组件的开发环境。 走进Java的第一步就是安装JDK。
---
###下载 
下载地址： http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html 
 如图，选择适合自己电脑型号的版本，我这里下载的是win系统的32位版本。
![输入图片说明](https://static.oschina.net/uploads/img/201704/14163454_xMHH.png "在这里输入图片标题") 

### 安装 
 双击下载之后的exe，按照提示完成安装，基本是傻瓜式的"下一步"，当然中间可以选择安装路径。 
注：安装完jdk之后同时会提示安装jre,也是同理安装。 
如图，这是安装效果： 
![输入图片说明](https://static.oschina.net/uploads/img/201704/14165603_aSWV.png "在这里输入图片标题") 

### 环境变量配置 
#### 新建JAVA_HOME系统变量 
计算机→属性→高级系统设置→高级→环境变量→系统变量→新建 
变量名字：JAVA_HOME 
路径（填写实际安装路径）：D:\Java\JDK\jdk1.8.0_121 
如图： 
![输入图片说明](https://static.oschina.net/uploads/img/201704/14164559_10LX.png "在这里输入图片标题") 

#### 新建CLASSPATH系统变量
变量名字：CLASSPATH 
路径： .;%JAVA_HOME%\lib;%JAVA_HOME%\lib\tools.jar（注意最前面有一点） 
如图： 
![输入图片说明](https://static.oschina.net/uploads/img/201704/14164824_eBp8.png "在这里输入图片标题") 

#### 编辑Path变量
在变量最后面添加：%JAVA_HOME%\bin;%JAVA_HOME%\jre\bin; 
在变量值最后输入 %JAVA_HOME%\bin;%JAVA_HOME%\jre\bin（注意原来Path的变量值末尾有没有;号，如果没有，先输入；号再输入上面的代码） 
到此，JDK安装与环境变量配置。 

### 验证 
运行cmd 输入 java -version ，若如图所示显示版本信息则说明安装和配置成功。 
![输入图片说明](https://static.oschina.net/uploads/img/201704/14165231_Wyce.png "在这里输入图片标题") 