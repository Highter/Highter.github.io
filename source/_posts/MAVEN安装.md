---
title: MAVEN安装
date: 2017-04-14
categories: [maven]
tags: [maven]
description: Apache Maven是一个软件项目管理和综合工具。本地安装Maven可以为开发带来很多方便。
---
 注意：安装前请确认一下电脑是否安装了JDK，JDK的安装可以参考[JDK安装](https://my.oschina.net/sssmile/blog/879742)一文。 
### 下载 
下载地址： http://maven.apache.org/download.cgi 
 如图，选择适合自己电脑的版本，我这里下载的是win系统的版本。
![输入图片说明](https://static.oschina.net/uploads/img/201704/14171501_cvDL.png "在这里输入图片标题")

### 解压 
![输入图片说明](https://static.oschina.net/uploads/img/201704/14172231_lAIx.png "在这里输入图片标题")

###  环境变量配置 
#### 新建系统变量 
需要新建M2_HOME和MAVEN_HOME系统变量 
步骤：计算机→属性→高级系统设置→高级→环境变量→系统变量→新建 
变量名：M2_HOME 
变量值（填写实际安装路径）：D:\Java\MAVEN\apache-maven-3.5.0  
MAVEN_HOME系统变量新增同上。 
注:Maven 说只是添加 M2_HOME , 但一些项目仍引用 Maven 的文件夹 MAVEN_HOME, 因此，为了安全也把它添加进去。 
如图： 
![输入图片说明](https://static.oschina.net/uploads/img/201704/14173049_twJK.png "在这里输入图片标题")

#### 编辑Path变量 
在变量最后面添加：%M2_HOME%\bin;  
在变量值最后输入 %M2_HOME%\bin;（注意原来Path的变量值末尾有没有;号，如果没有，先输入；号再输入上面的代码）
 到此，MAVEN安装与环境变量配置。

### 验证 
运行cmd 输入 mvn -v,若如图所示显示版本信息则说明安装和配置成功。
![输入图片说明](https://static.oschina.net/uploads/img/201704/14173539_vzzB.png "在这里输入图片标题")

### 修改仓库存位置 
maven 的仓库默认是放在本地用户的临时文件夹下面的 .m2 文件夹下的 repository 下，我的是在 C:\Users\bank_gz\.m2\repository目录下。现在我们来修改将它指定到我们自己的路径下，我现在要将仓库指定到D:\Java\MAVEN\apache-maven-3.5.0\repo 目录下，只需要将maven安装路径下conf里面的seting.xml文件。 
我的是在D:\Java\MAVEN\apache-maven-3.5.0\conf\seting.xml。把下面注销的本地仓库打开  
![输入图片说明](https://static.oschina.net/uploads/img/201704/20092729_esjo.png "在这里输入图片标题") 
改成如下： 
![输入图片说明](https://static.oschina.net/uploads/img/201704/20092854_jYqS.png "在这里输入图片标题") 
修改仓库位置原因：因为maven刚安装的时候我们可以看得到maven很小，只有最基本的东西，但我们一旦使用它，就会把我们的需要的东西都下载到仓库里面，随着我们需要调用的命令越多，仓库会越来越大，所以最好不要放在c盘，不然让系统越来越慢，且以后重装系统，还要再下一次。 