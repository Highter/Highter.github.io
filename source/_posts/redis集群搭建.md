---
title: redis集群搭建
date: 2017-06-01 15:50:01
categories: [redis]
tags: [redis]
description: 本文是在centos7系统上安装redis3.2.9集群。
---
### centos7搭建redis集群
### 安装集群环境
```shell
[root@localhost data]# yum install gcc g++  
[root@localhost data]# yum install ruby 
```

### 下载 
使用 wget命令下载，我本地路径是/data
下载地址为 http://download.redis.io/releases/redis-3.2.9.tar.gz  
``` shell
[root@localhost data]# wget http://download.redis.io/releases/redis-3.2.9.tar.gz
```
![输入图片说明](https://static.oschina.net/uploads/img/201705/27143910_Ls2f.png "在这里输入图片标题")

### 安装redis
#### 解压 
``` shell
[root@localhost data]# tar -zxvf redis-3.2.9.tar.gz
```
#### 安装
```shell
[root@localhost data]# mv  redis-3.2.9 redis
[root@localhost data]# cd  redis
[root@localhost redis]# make install
```
### 集群配置
#### 创建redis-cluster
```bash
[root@localhost redis]#cd /data
[root@localhost data]# mkdir redis-cluster
```
#### 创建节点目录
```bash
[root@localhost data]# cd redis-cluster
[root@localhost redis-cluster]# mkdir 7000
[root@localhost redis-cluster]# mkdir 7001
[root@localhost redis-cluster]# mkdir 7002
```
#### 修改配置文件redis.conf
从解压的原文件中复制 redis.conf并做修改
```bash
[root@localhost redis-cluster]# cp /data/redis/redis.conf /data/redis-cluster/
[root@localhost redis-cluster]# vi redis.conf 
```
修改配置文件redis.conf中的下面选项
```conf
port 7000
daemonize yes
cluster-enabled yes
cluster-config-file nodes.conf 
cluster-node-timeout 5000
appendonly yes
```
修改完redis.conf配置文件中的这些配置项之后把这个配置文件分别拷贝到7000/7001/7002目录下面
```bash
[root@localhost redis-cluster]# cp redis.conf 7000
[root@localhost redis-cluster]# cp redis.conf 7001
[root@localhost redis-cluster]# cp redis.conf 7002
```
 **注意：拷贝完成之后要修改7000/7001/7002目录下面redis.conf文件中的port参数，分别改为对应的文件夹的名称**

#### 启动redis实例
为了方便，这里使用脚本
```bash
[root@localhost redis-cluster]# vim startall.sh
[root@localhost redis-cluster]# chmod +x startall.sh 
```
startall内容如下：
```conf
cd 7000  
redis-server  redis.conf  
cd  ..  
cd 7001  
redis-server  redis.conf  
cd  ..  
cd 7002 
redis-server  redis.conf 
```
启动
```bash
[root@localhost redis-cluster]# ./startall.sh
```
#### 查看redis实例运行
```bash
[root@localhost redis-cluster]# ps axu|grep redis
root      8654  0.0  0.0 141016  7576 ?        Ssl  13:40   0:00 redis-server 0.0.0.0:7000 [cluster]
root      8658  0.0  0.0 141016  7576 ?        Ssl  13:40   0:00 redis-server 0.0.0.0:7001 [cluster]
root      8662  0.0  0.0 141016  7572 ?        Ssl  13:40   0:00 redis-server 0.0.0.0:7002 [cluster]
root      8709  0.0  0.0 112664   968 pts/0    S+   13:44   0:00 grep --color=auto redis
```
#### 创建集群
```bash
[root@localhost redis-cluster]# cp -r /data/redis/src/redis-trib.rb .
[root@localhost redis-cluster]# ./redis-trib.rb create 127.0.0.1:7000 127.0.0.1:7001 127.0.0.1:7002
```
如果你使用  ./redis-trib.rb create --replicas 1 127.0.0.1:7000 ...
报如下错误，去掉  --replicas 1 ，或者建多几个节点，至少6个！ 
![输入图片说明](https://static.oschina.net/uploads/img/201705/31135254_CFJB.png "在这里输入图片标题")

### 集群测试
```bash
[root@localhost redis-cluster]# redis-cli -c -p 7000
```
使用quit退出集群
测试，打开两个终端A和B 
A终端：连上7000端口，设置test的值
```bash
redis-cli -h 127.0.0.1 -c -p 7000
127.0.0.1:7000> set test 123
-> Redirected to slot [6918] located at 127.0.0.1:7001
OK
127.0.0.1:7001> get test 
"123"
```
B终端：连上7002端口，查看test的值
```bash
[root@localhost bank_gz]# redis-cli -h 127.0.0.1 -c -p 7002
127.0.0.1:7002> get test
-> Redirected to slot [6918] located at 127.0.0.1:7001
"123"
127.0.0.1:7001> 
```
成功在7002上查看到7000上设置test的值。