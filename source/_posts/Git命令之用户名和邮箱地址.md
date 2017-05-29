---
title: Git命令之用户名和邮箱地址
date: 2017-04-20
categories: [git]
tags: [git,命令]
description: 每个Git使用者都需要有个账号标示，这个标示就是用户名和邮箱了。
---
注意：本地使用Git的话需确保已经安装了Git，安装教程参考[Git安装](https://my.oschina.net/sssmile/blog/882019)一文。
### 说明 
用户名和邮箱地址是本地Git客户端的一个变量，不随git库而改变。 
每次commit都会用用户名和邮箱纪录。 

### 修改 
git config --global user.name "username"  修改/配置用户名 
git config --global user.email "email"  修改/配置邮箱 
global是非必须的，当带上global说明配置的信息为全局

### 查看 
git config user.name   查看用户名 
git config user.email   查看邮箱