---
title: 'redis安装[mac]'
date: 2018-09-09 10:47:15
categories: [redis]
tags: [redis]
description: 记录在mac上安装redis的步骤以及常用的命令使用。
---

### redis简介
redis是一个key-value存储系统。和Memcached类似，它支持存储的value类型相对更多，包括string(字符串)、list(链表)、set(集合)和zset(有序集合)。这些数据类型都支持push/pop、add/remove及取交集并集和差集及更丰富的操作，而且这些操作都是原子性的。在此基础上，redis支持各种不同方式的排序。与memcached一样，为了保证效率，数据都是缓存在内存中。区别的是redis会周期性的把更新的数据写入磁盘或者把修改操作写入追加的记录文件，并且在此基础上实现了master-slave(主从)同步。
Redis 是一个高性能的key-value数据库。 redis的出现，很大程度补偿了memcached这类key/value存储的不足，在部 分场合可以对关系数据库起到很好的补充作用。它提供了Python，Ruby，Erlang，PHP客户端，使用很方便。

### 下载

打开官网：<https://redis.io/>

Download---Stable—Download4.0.11，下载最新稳定版，这里是4.0.11

### 安装

下载完成后，打开命令行工具，执行解压命令

```bash
$ tar -zxvf redis4.0.11.tar.gz #解压
$ cd redis4.0.11 #进入目录
$ sudo make test #测试编译
$ sudo make install #安装redis
```
若执行'sudo make test'报错如下
```
[exception]: Executing test client: couldn't execute "src/redis-benchmark": no such file or director
```
则先执行以下命令
```bash
$ sudo make distclean
$ sudo make
```

启动Redis
```
redis-server
```

### 配置

在redis目录下建立bin，etc，db三个目录

```
sudo mkdir bin
sudo mkdir etc
sudo mkdir db
```
把/src目录下的mkreleasehdr.sh，redis-benchmark， redis-check-rdb， redis-cli， redis-server拷贝到bin目录
```
cp src/mkreleasehdr.sh src/redis-benchmark src/redis-check-rdb src/redis-cli src/redis-server ../bin/
```
拷贝 redis.conf 到 etc下

```
cp redis.conf etc/
```

修改redis.conf

```
#修改为守护模式
daemonize yes
#设置进程锁文件
pidfile /Users/yangjianwei/Documents/software/Redis/redis-4.0.11/redis.pid
#端口
port 6379
#客户端超时时间
timeout 300
#日志级别
loglevel debug
#日志文件位置
logfile /Users/yangjianwei/Documents/software/Redis/redis-4.0.11/logs/log-redis.log
#设置数据库的数量，默认数据库为0，可以使用SELECT <dbid>命令在连接上指定数据库id
databases 16
##指定在多长时间内，有多少次更新操作，就将数据同步到数据文件，可以多个条件配合
#save <seconds> <changes>
#Redis默认配置文件中提供了三个条件：
save 900 1
save 300 10
save 60 10000
#指定存储至本地数据库时是否压缩数据，默认为yes，Redis采用LZF压缩，如果为了节省CPU时间，
#可以关闭该#选项，但会导致数据库文件变的巨大
rdbcompression yes
#指定本地数据库文件名
dbfilename dump.rdb
#指定本地数据库路径
dir /Users/yangjianwei/Documents/software/Redis/redis-4.0.11/db/
#指定是否在每次更新操作后进行日志记录，Redis在默认情况下是异步的把数据写入磁盘，如果不开启，可能
#会在断电时导致一段时间内的数据丢失。因为 redis本身同步数据文件是按上面save条件来同步的，所以有
#的数据会在一段时间内只存在于内存中
appendonly no
#指定更新日志条件，共有3个可选值：
#no：表示等操作系统进行数据缓存同步到磁盘（快）
#always：表示每次更新操作后手动调用fsync()将数据写到磁盘（慢，安全）
#everysec：表示每秒同步一次（折衷，默认值）
appendfsync everysec
```

启动服务
```
redis-server /Users/yangjianwei/Documents/software/Redis/redis-4.0.11/etc/redis.conf
```
查看版本
```
redis-cli -v 
```


查看日志
```
tail -f /Users/yangjianwei/Documents/software/Redis/redis-4.0.11/logs/log-redis.log
```

打开redis客户端操作
```
redis-cli #客户端连接
```
