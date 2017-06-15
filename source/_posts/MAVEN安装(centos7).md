---
title: MAVEN安装(centos7)
date: 2017-06-16 06:56:32
categories: [maven]
tags: [maven]
description: Apache Maven是一个软件项目管理和综合工具。本地安装Maven可以为开发带来很多方便。
---
注意：安装前请确认一下电脑是否安装了JDK，JDK的安装可以参考[JDK安装](https://my.oschina.net/sssmile/blog/879742)一文。 
操作路径 /data/ 
###  下载 
```bash
[root@localhost data]# mkdir maven
[root@localhost data]# cd maven/
[root@localhost maven]# wget http://apache.fayea.com/maven/maven-3/3.5.0/binaries/apache-maven-3.5.0-bin.tar.gz
```

### 解压 
```bash
[root@localhost maven]# tar -zxvf apache-maven-3.5.0-bin.tar.gz 
```
### 环境变量配置 
```bash
[root@localhost maven]# vim /etc/profile
```
添加内容如下：
```
#set maven
export M2_HOME=/data/maven/apache-maven-3.5.0
export PATH=$PATH:$M2_HOME/bin
```
### 验证 
```
[root@localhost maven]# source /etc/profile  #使配置生效
[root@localhost maven]# mvn -v
Apache Maven 3.5.0 (ff8f5e7444045639af65f6095c62210b5713f426; 2017-04-04T03:39:06+08:00)
Maven home: /data/maven/apache-maven-3.5.0
Java version: 1.8.0_131, vendor: Oracle Corporation
Java home: /data/jdk/jdk1.8.0_131/jre
Default locale: zh_CN, platform encoding: UTF-8
OS name: "linux", version: "3.10.0-514.el7.x86_64", arch: "amd64", family: "unix"
```

### 修改仓库存位置 
maven 的仓库默认路径是${user.home}/.m2/repository。我们可以修改到指定路径下
```bash
[root@localhost maven]# vim apache-maven-3.5.0/conf/settings.xml 
```
修改到指定路径下：
```
 <localRepository>/data/maven/apache-maven-3.5.0/repo</localRepository>
```