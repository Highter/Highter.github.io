---
title: Mac下安装Hexo
date: 2017-05-26
categories: [hexo]
tags: [hexo]
description: 本文介绍Hexo的安装过程，是Hexo的入门教程。
---
### 安装流程指导
安装流程：homebrew---->nodejs---->hexo	

注意：hexo是基于nodejs的，而安装nodejs这里使用homebrew方式

### 安装homebrew

```shell
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
### 安装nodejs

 ```shell
 brew install node
 ```


### 安装hexo

```shell
sudo npm install -g hexo 
```

### 初始化

#### 初始化文件夹  
创建存放博客的文件夹，这里我创建的文件夹名字为 Highter.github.io(为了之后和github配合使用)
```shell
Hunter-Mac:github yangjianwei$ mkdir Highter.github.io
Hunter-Mac:github yangjianwei$ hexo init Highter.github.io/
```
#### 安装npm  
切换到所建立文件夹路径下，安装npm
```shell
Hunter-Mac:github yangjianwei$ cd Highter.github.io/
Hunter-Mac:Highter.github.io yangjianwei$ npm install
```

### 启动hexo服务器  
```shell
Hunter-Mac:Highter.github.io yangjianwei$ hexo server
```
如图表示启动成功  
![输入图片说明](https://static.oschina.net/uploads/img/201705/14161838_pVBs.png "在这里输入图片标题")

### 查看效果  
在浏览器输入[http://localhost:4000](http://localhost:4000) 查看效果  

![输入图片说明](https://static.oschina.net/uploads/img/201705/14162204_DCdx.png "在这里输入图片标题")