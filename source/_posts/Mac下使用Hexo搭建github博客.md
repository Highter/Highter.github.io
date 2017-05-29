---
title: Mac下使用Hexo搭建github博客
date: 2017-05-26
categories: [hexo]
tags: [hexo,github]
description: 拥有自己特色主题的博客无疑是一件很酷的事情，而且还是免费的！这里我将给大家分享一下hexo+github的简单使用。
---
### Mac下使用Hexo搭建github博客	

注意：本文实践是在mac系统下进行，hexo安装参考[Mac下安装Hexo](https://my.oschina.net/sssmile/blog/899245)一文。  

### 复制github仓库地址  
在自己的github账号下复制 *.github.io仓库的地址，如果没有，需要新建一个 
![输入图片说明](https://static.oschina.net/uploads/img/201705/14165405_2h3p.png "在这里输入图片标题")

### 关联github

终端里cd到存放博客的文件夹下，这里我的文件夹名字为 Highter.github.io，编辑_config.yml，滑到最底部，将deploy里的内容改为如下：  
```
deploy:
    type: git
    repository: https://github.com/Highter/Highter.github.io.git  // 这个地方填写自己的仓库地址
    branch: master
```

### 部署到github  
发布到github  
```shell
Hunter-Mac:Highter.github.io yangjianwei$ hexo deploy
```
根据提示输入用户名和密码，回车即可 
![输入图片说明](https://static.oschina.net/uploads/img/201705/14172503_aHTK.png "在这里输入图片标题") 

**注意**：

运行 hexo deploy部署到github ，若提示“ERROR Deployer not found: git"，如下 ![输入图片说明](https://static.oschina.net/uploads/img/201705/14171941_G9Wc.png "在这里输入图片标题") 

则安装hexo-deployer-git,如图表示安装成功 

```shell
Hunter-Mac:Highter.github.io yangjianwei$ npm install hexo-deployer-git --save
```
![输入图片说明](https://static.oschina.net/uploads/img/201705/14172238_3BdG.png "在这里输入图片标题")

### 查看效果

在浏览器输入[https://yangjianwei.github.io/](https://yangjianwei.github.io/) 查看效果(细心的朋友可能发现了访问链接和步骤2配置的仓库地址不一样。个人有几个github账号，为了方便大家看到效果，我把测试的东西推送到yangjianwei这个账号上了) 
![输入图片说明](https://static.oschina.net/uploads/img/201705/14173002_B9Xl.png "在这里输入图片标题")