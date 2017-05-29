---
title: Eclipse中导入GitHub项目
date: 2017-05-04
categories: [tools]
tags: [eclipse,github]
description: Eclipse中导入GitHub项目方便开发修改。
---
注意：安装前请确认一下电脑是否安装了Git，Git的安装可以参考[Git安装](https://my.oschina.net/sssmile/blog/882019)一文。
### 选择工程 
Eclipse中选择File-》import-》Git-》Projects from Git，点击 Next
![输入图片说明](https://static.oschina.net/uploads/img/201705/04144056_ck4n.jpg "在这里输入图片标题") 
### 选择仓库源 
选择Clone URI，点击 Next 
![输入图片说明](https://static.oschina.net/uploads/img/201705/04144103_HqhJ.jpg "在这里输入图片标题") 
### 配置仓库源信息 
URI填写git的仓库URL，并在Authentication中填写GitHub的用户名和密码，打钩 Store in Secure Store记住密码，方便下次进来不需要再输入用户名和密码，这里的测试仓库源地址为 ：[https://github.com/Highter/SpringBoot-SourceCode.git](https://github.com/Highter/SpringBoot-SourceCode.git)，配置完之后点击 Next 
![输入图片说明](https://static.oschina.net/uploads/img/201705/04144108_ZKEp.jpg "在这里输入图片标题") 
### 选择分支 
由于项目只有一个master分支，就选择master即可，点击Next 
![输入图片说明](https://static.oschina.net/uploads/img/201705/04144119_DYjn.jpg "在这里输入图片标题") 
### 选择本地仓库位置 
在Directory点击Browse选择创建的本地仓库位置 
![输入图片说明](https://static.oschina.net/uploads/img/201705/04144129_RqHT.jpg "在这里输入图片标题") 
### 等到项目下载 
![输入图片说明](https://static.oschina.net/uploads/img/201705/04144135_vvoo.jpg "在这里输入图片标题") 
### 导出项目类型 
选择导出项目名称，这里选择Import as general project，导出成为一个普通工程，最后点击Next 
![输入图片说明](https://static.oschina.net/uploads/img/201705/04144141_LK62.jpg "在这里输入图片标题") 
### 配置项目名称 
配置完项目名称点击 Finish 即可 
![输入图片说明](https://static.oschina.net/uploads/img/201705/04144154_oIGE.jpg "在这里输入图片标题") 
