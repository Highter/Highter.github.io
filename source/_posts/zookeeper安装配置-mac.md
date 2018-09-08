---
title: 'zookeeper安装配置[mac]'
date: 2018-08-24 12:04:53
categories: [zookeeper]
tags: [zookeeper]
description: 本文介绍zookeeper的安装和配置
---
## 安装
zookeeper支持brew安装。
```bash
Hunter-Mac:Highter.github.io yangjianwei$ brew info zookeeper
==> Downloading https://homebrew.bintray.com/bottles/zookeeper-3.4.12.high_sierr
######################################################################## 100.0%
==> Pouring zookeeper--3.4.12.high_sierra.bottle.tar.gz
==> Caveats
To have launchd start zookeeper now and restart at login:
  brew services start zookeeper
Or, if you don't want/need a background service you can just run:
  zkServer start
==> Summary
🍺  /usr/local/Cellar/zookeeper/3.4.12: 242 files, 32.9MB
```
安装后，在/usr/local/Cellar/zookeeper/目录下，已经有了缺省的配置文档。
```bash
Hunter-Mac:Highter.github.io yangjianwei$ ls /usr/local/Cellar/zookeeper/3.4.12/
INSTALL_RECEIPT.json		README.md			include
LICENSE.txt			bin				lib
NOTICE.txt			homebrew.mxcl.zookeeper.plist	libexec
```



## 启动服务


```bash
Hunter-Mac:Highter.github.io yangjianwei$ zkServer
ZooKeeper JMX enabled by default
Using config: /usr/local/etc/zookeeper/zoo.cfg
Usage: ./zkServer.sh {start|start-foreground|stop|restart|status|upgrade|print-cmd}

Hunter-Mac:Highter.github.io yangjianwei$ zkServer start
ZooKeeper JMX enabled by default
Using config: /usr/local/etc/zookeeper/zoo.cfg
Starting zookeeper ... STARTED
Hunter-Mac:Highter.github.io yangjianwei$ zkServer status
ZooKeeper JMX enabled by default
Using config: /usr/local/etc/zookeeper/zoo.cfg
Mode: standalone
```

## zkCli工具使用


查看zookeeper运行及状态。安装后，可以看到zookeeper提供了zkCli等工具进行.

```bash
Hunter-Mac:Highter.github.io yangjianwei$ zkCli
Connecting to localhost:2181
Welcome to ZooKeeper!
JLine support is enabled

WATCHER::

WatchedEvent state:SyncConnected type:None path:null
[zk: localhost:2181(CONNECTED) 0] ls
[zk: localhost:2181(CONNECTED) 1] ls /
[zookeeper]
[zk: localhost:2181(CONNECTED) 2] ls /zookeeper
[quota]
[zk: localhost:2181(CONNECTED) 3] ls /zookeeper/quota
[]
[zk: localhost:2181(CONNECTED) 4] quit
Quitting...
```