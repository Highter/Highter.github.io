---
title: Mac电脑生成SSH key和Github通信
categories: [git]
tags: [ssh,git,github]
description: ssh通信可以避免每次代码提交都输入密码的麻烦。
---

### 检查ssh 
```shell
Hunter-Mac:Highter.github.io yangjianwei$ ls -al ~/.ssh
total 16
drwx------   3 yangjianwei  staff   102 Dec 13 15:20 .
drwxr-xr-x+ 60 yangjianwei  staff  2040 May 14 14:58 ..
```
注意：如果已经存在ssh key，则可以看到 id_rsa 和 id_rsa.pub ，可跳过第二步。 

### 生成ssh
```shell
ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
```
![生成ssh](https://static.oschina.net/uploads/img/201705/14222123_EPEp.png "生成ssh")

邮箱填写自己的邮箱，中间一直按回车即可。

### 查看本地ssh

查看ssh的key值

```shell
Hunter-Mac:.ssh yangjianwei$ cat ~/.ssh/id_rsa.pub
```
![查看ssh的key值](https://static.oschina.net/uploads/img/201705/14222554_GvKv.png "查看ssh的key值")

### github配置ssh 

在github上找到ssh配置页面，Profile->SSH and GPG keys->New SSH key，填写ssh的title和key值 
![github配置ssh](https://static.oschina.net/uploads/img/201705/14222919_0SDk.png "github配置ssh")