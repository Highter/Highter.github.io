---
title: centos7安装consul
date: 2017-07-23 21:34:10
categories: [consul]
tags: [consul]
description: 在centos7上安装consul。
---
### 下载 
下载地址为  [https://www.consul.io/downloads.html ](https://www.consul.io/downloads.html  ) 
选择符合自己电脑的版本下载，我的是linux-64位，下载之后移动到 /data路径下
### 安装
#### 解压
```bash
[root@localhost data]# unzip consul_0.8.5_linux_amd64.zip
[root@localhost data]# mv consul /usr/local/bin/
```
解压后只有唯一的一个consul文件，将其放到$PATH便可运行。
#### 验证安装
```bash
[root@localhost data]# consul
```
如下图表示成功 
![输入图片说明](https://static.oschina.net/uploads/img/201706/28180556_hXhS.png "在这里输入图片标题")
### 启动
```bash
[root@localhost data]# consul agent -dev
```
在浏览器中输入 [http://127.0.0.1:8500](http://127.0.0.1:8500)  访问。 
如果想要指定ip访问，运行
```bash
[root@localhost data]# consul agent -dev -client 192.168.11.88
```
在浏览器中输入 [http://192.168.11.88:8500](http://192.168.11.88:8500)  访问 

![输入图片说明](https://static.oschina.net/uploads/img/201706/28182045_56Ja.png "在这里输入图片标题")

### 停止 
ctrl+c 

更多详情，请关注我的博客[https://highter.github.io/](https://highter.github.io/) 
