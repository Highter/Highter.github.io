---
title: centos7搭建nexus maven私服
date: 2017-07-25 22:46:34
categories: [maven]
tags: [maven]
description: 对于很多企业来说，很多时候为了代码安全，他们需要在特定的局域网内开发，这时候就需要搭建自己的maven仓库。当然拥有自己的maven仓库好处还有很多，比如减少内网下载jar速度、集中式管理jar包等。
---

### 前提准备
#### jdk安装
参考[CentOS安装JDK](https://my.oschina.net/sssmile/blog/890040)
#### maven安装
参考[MAVEN安装（centos7）](https://my.oschina.net/sssmile/blog/917216)
### 下载
下载地址：https://www.sonatype.com/download-oss-sonatype 
这里我使用 wget 命令下载，操作路径 /data,如下
```bash
[root@localhost data]# wget http://download.sonatype.com/nexus/3/latest-unix.tar.gz
```
### 安装配置
#### 解压
```bash
[root@localhost data]# cp latest-unix.tar.gz /usr/local/
[root@localhost data]# cd /usr/local/
[root@localhost local]# tar -zxvf latest-unix.tar.gz 
```
#### 配置环境变量
```bash
[root@localhost local]# vim /etc/profile
```
添加内容如下
```
#set nexus
export NEXUS_HOME=/usr/local/nexus-3.4.0-02
export PATH=$PATH:$NEXUS_HOME/bin
```
最后使配置文件生效
```bash
[root@localhost local]# vim /etc/profile
```
#### 启动
前台启动：./bin/nexus console  
以后台进程启动：./bin/nexus start  
查看输出的日志：tail -f logs/wrapper.log 
```bash
[root@localhost local]# cd nexus-3.4.0-02/
[root@localhost nexus-3.4.0-02]# ./bin/nexus start
```
提示：
```
WARNING: ************************************************************
WARNING: Detected execution as "root" user.  This is NOT recommended!
WARNING: ************************************************************
Starting nexus
```
修改nexus安装目录bin/nexus.rc文件
```bash
[root@localhost nexus-3.4.0-02]# vim /usr/local/nexus-3.4.0-02/bin/nexus.rc 
#添加内容：run_as_user="root"
```
#### 开启端口
开启端口：
```bash
[root@localhost nexus-3.4.0-02]# firewall-cmd --zone=public --add-port=8081/tcp --permanent
```
重启防火墙：
```bash
[root@localhost nexus-3.4.0-02]# firewall-cmd --reload
```
#### 访问私服
nexus3.X的默认端口是:8081 
nexus3.X的默认账号是:admin 
nexus3.X的默认密码是:admin123 
nexus3.X搭建的maven私服的本地访问地址是:http://私服的ip:8081** 
例如我的就是:http://192.168.11.88:8081/
### 优化
#### 设置开机自启动
```bash
[root@localhost nexus-3.4.0-02]# ln -s /usr/local/nexus-3.4.0-02/bin/nexus /etc/init.d/nexus3
[root@localhost nexus-3.4.0-02]# chkconfig --add nexus3
[root@localhost nexus-3.4.0-02]# chkconfig nexus3 on
```
#### 修改运行nexus3所使用的用户
```bash
[root@localhost nexus-3.4.0-02]# vim /usr/local/nexus-3.4.0-02/bin/nexus.rc 
# 修改内容：run_as_user="root"
```
#### 修改启动时jdk版本
```bash
[root@localhost nexus-3.4.0-02]# vim /usr/local/nexus-3.4.0-02/bin/nexus
#修改内容：INSTALL4J_JAVA_HOME_OVERRIDE=/usr/local/java/jdk1.8.0_121
```
#### 修改默认端口
```bash
[root@localhost nexus-3.4.0-02]# vim /usr/local/nexus-3.4.0-02/etc/nexus-default.properties 
#修改内容：application-port=8282
```
#### 修改nexus3数据以及相关日志的存储位置
```bash
[root@localhost etc]# vim /usr/local/nexus-3.4.0-02/bin/nexus.vmoptions 
```
这里采用默认即可
```xml
-XX:LogFile=../sonatype-work/nexus3/log/jvm.log
-Dkaraf.data=../sonatype-work/nexus3     
-Djava.io.tmpdir=../sonatype-work/nexus3/tmp  
```
#### 启动命令 
现在我们可以启动nexus3使用如下命令：
```bash
[root@localhost nexus3]# /etc/init.d/nexus3 start
```
更多详情，请关注我的博客https://highter.github.io 