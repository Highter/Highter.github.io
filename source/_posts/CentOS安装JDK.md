---
title: CentOS安装JDK
date: 2017-05-01
categories: [java]
tags: [java,centos,jdk]
description: 本文介绍在linux系统下安装JDK，这里选择在CentOS系统下实践。
comments: true
---

### 创建目录  
在/usr/local下创建java/jdk目录
```shell
[higher@localhost ~]$ pwd
/home/higher
[higher@localhost ~]$ mkdir /usr/local/java
mkdir: cannot create directory ‘/usr/local/java’: Permission denied  
```
用户权限不足，切换到root用户  

```shell
[higher@localhost ~]$ su root
Password: 
[root@localhost higher]# mkdir /usr/local/java
[root@localhost higher]# cd /usr/local/java/
[root@localhost java]# mkdir jdk
[root@localhost java]# cd jdk/
```
### 下载JDK压缩包  
```shell
[root@localhost jdk]# wget -c http://download.oracle.com/otn-pub/java/jdk/8u131-b11/d54c1d3a095b4ff2b6607d096fa80163/jdk-8u131-linux-x64.tar.gz
```
如图表示下载成功  
![输入图片说明](https://static.oschina.net/uploads/img/201705/01133149_kb6k.png "在这里输入图片标题")  

### 解压  
```shell
[root@localhost jdk]# tar -zxvf jdk-8u131-linux-x64.tar.gz
```

### 设置环境变量  
进入jdk目录，查看当前位置  
```shell
[root@localhost jdk]# cd jdk1.8.0_131/
[root@localhost jdk1.8.0_131]# pwd
/usr/local/java/jdk/jdk1.8.0_131
```
编辑profile文件  
```shell
[root@localhost jdk1.8.0_131]# vim /etc/profile
```
在profile文件末尾添加如下内容：  
``` shell
JAVA_HOME=/usr/local/java/jdk/jdk1.8.0_131
JRE_HOME=/usr/local/java/jdk/jdk1.8.0_131/jre
CLASS_PATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JRE_HOME/lib
PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin
export JAVA_HOME JRE_HOME CLASS_PATH PATH
```
让修改生效:
```shell
[root@localhost jdk1.8.0_131]# source /etc/profile
```

### 验证  
``` shell
[root@localhost jdk1.8.0_131]# java -version
```

**注意:**  
如果查看到得JDK版本为OpenJDK不要惊慌，这是因为在安装CentOS的时候，自带了一个OpenJDK。如图  

![输入图片说明](https://static.oschina.net/uploads/img/201705/01140053_Sel6.png "在这里输入图片标题")

这个JDK并不是我们想要的，我们需要在/usr/bin目录重新设置java  javac 链接。

```shell
[root@localhost jdk1.8.0_131]# cd /usr/bin/
[root@localhost bin]# rm -rf java
[root@localhost bin]# rm -rf javac
[root@localhost bin]# ln -s /usr/local/java/jdk/jdk1.8.0_131/bin/java java
[root@localhost bin]# ln -s /usr/local/java/jdk/jdk1.8.0_131/bin/javac javac
```

设置之后重新运行命令 java -version ,如图表示成功  
![输入图片说明](https://static.oschina.net/uploads/img/201705/01140803_s7ga.png "在这里输入图片标题")


