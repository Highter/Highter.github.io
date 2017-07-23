---
title: RabbitMQ安装
date: 2017-07-23 21:41:30
categories: [rabbitmq]
tags: [rabbitmq]
description: 记录在centos7上安装RabbitMQ的步骤以及常用的命令使用。
---
 MQ 全称为 Message Queue, 消息队列（MQ）是一种应用程序对应用程序的通信方法。 
应用程序通过读写出入队列的消息（针对应用程序的数据）来通信，而无需专用连接来链接它们。 
RabbitMQ 是一个在 AMQP 基础上完整的，可复用的企业消息系统。他遵循 Mozilla Public License 开源协议。 
本文操作路劲在/data目录下。
###  安装 Erlang
```bash
[root@localhost data]# sudo yum install erlang  
```
###  安装RabbitMQ Server
下载地址：[https://www.rabbitmq.com/download.html](https://www.rabbitmq.com/download.html)  
```bash
[root@localhost data]# rpm --import https://www.rabbitmq.com/rabbitmq-release-signing-key.asc
[root@localhost data]# yum install rabbitmq-server-3.6.10-1.el7.noarch.rpm
```
### 启动服务 
**设置开机启动** 
chkconfig rabbitmq-server on 
**启动** 
service rabbitmq-server start 
**停止** 
service rabbitmq-server stop 
### 安装 web 管理页面 
```bash
[root@localhost data]# rabbitmq-plugins enable rabbitmq_management
```
安装完成后就可以使用[http://ip:15672](http://ip:15672)进行访问了。 
web 页面需要用户，所以下边就需要对用户进行配置

**设置开机启动:**chkconfig rabbitmq-server on


### 用户管理 
**用户列表** 
rabbitmqctl  list_users 
**新增用户** 
rabbitmqctl  add_user  Username  Password 
**删除用户** 
rabbitmqctl  delete_user  Username 
**修改密码** 
rabbitmqctl  change_password  Username  Newpassword 
**注意：**用户添加完成后还不能登录 web 页面，还需要给用户添加角色

### 用户角色 
**超级管理员(administrator)** 
可登陆管理控制台(启用management plugin的情况下)，可查看所有的信息，并且可以对用户，策略(policy)进行操作。 
**监控者(monitoring)** 
可登陆管理控制台(启用management plugin的情况下)，同时可以查看rabbitmq节点的相关信息(进程数，内存使用情况，磁盘使用情况等) 
**策略制定者(policymaker)** 
可登陆管理控制台(启用management plugin的情况下), 同时可以对policy进行管理。但无法查看节点的相关信息。 
**普通管理者(management)** 
仅可登陆管理控制台(启用management plugin的情况下)，无法看到节点信息，也无法对策略进行管理。 
**其他** 
无法登陆管理控制台，通常就是普通的生产者和消费者。 了解了这些后，就可以根据需要给不同的用户设置不同的角色，以便按需管理。

赋予用户角色:rabbitmqctl  set_user_tags  User  Tag 
一个用户可以有多个角色，多个 tag 使用空格分开即可。 
赋予角色之后登陆效果如图：
![输入图片说明](https://static.oschina.net/uploads/img/201706/29152316_qDv6.png "在这里输入图片标题") 

更多详情，请关注我的博客https://highter.github.io/ 