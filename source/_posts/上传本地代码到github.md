---
title: 上传本地代码到github
date: 2017-05-03
categories: [git]
tags: [git,github]
description: Github是个好东西，用来托管代码最合适不过。
---
### 安装Git 
Git安装可以参考[Git安装](https://my.oschina.net/sssmile/blog/882019)一文 
### 创建GitHub仓库 
#### 创建仓库 
在GitHub上点击 New repository，在创建仓库页面上想写完信息之后，点击 Create repository 即可 
![输入图片说明](https://static.oschina.net/uploads/img/201705/03145052_8OHL.png "在这里输入图片标题") 
#### 复制仓库地址 
点击Clone or download 之后，在弹出的小界面上可以直接复制该仓库的地址 
![输入图片说明](https://static.oschina.net/uploads/img/201705/03145404_5vOg.png "在这里输入图片标题") 
### 初始化本地仓库 
#### 克隆远程仓库到本地 
``` git
git clone https://github.com/Highter/SpringBoot-SourceCode.git
```
clone后面的地址就是步骤2.2复制的项目地址 
![输入图片说明](https://static.oschina.net/uploads/img/201705/03153743_JgiD.png "在这里输入图片标题") 
可以看到远程的仓库已经克隆到本地了
#### 添加文件到本地待提交区 
把文件复制到SpringBoot-SourceCode文件下，cd到SpringBoot-SourceCode文件夹下，执行如下命令 
``` git
git add .
```
如果只是想添加某个特定的文件，只需把.换成特定的文件名即可，如git add text.txt
#### 提交到仓库 
``` git
git commit -m "注释语句"
```
### 提交本地仓库到GitHub
```git 
git push
```
![输入图片说明](https://static.oschina.net/uploads/img/201705/03155358_EGrR.png "在这里输入图片标题") 
如果是首次推送代码，会弹出如图对话框，输入github的账号和密码点击 Login 即可 
![输入图片说明](https://static.oschina.net/uploads/img/201705/03150218_Umyy.png "在这里输入图片标题") 
### 查看结果 
刷新github上仓库的页面，查看结果 
![输入图片说明](https://static.oschina.net/uploads/img/201705/03155614_sQ0D.png "在这里输入图片标题")