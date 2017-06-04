---
title: centos防火墙命令
categories: [linux]
tags: [linux,命令]
description: 记录一些防火墙相关的命令。
---

### 查看防火墙状态
```bash
systemctl status firewalld
```

### 开启防火墙
```bash
systemctl start firewalld
```

### 关闭防火墙
```bash
systemctl stop firewalld
```

### 开启防火墙端口
```bash
firewall-cmd --permanent --zone=public --add-port=21/tcp  
firewall-cmd --permanent --zone=public --add-port=21/udp  
firewall-cmd --reload#重启iptables
```