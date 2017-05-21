---
title: github+hexo多终端同步
date: 2017-05-21
categories: [hexo]
tags: [hexo]
description: 或许你会有这样的需求：在A电脑使用hexo写博客，也想使用B电脑用hexo写博客，这时候我要如何保证A电脑的hexo站点和B电脑的hexo站点信息同步呢？本文将用最简单的思路来解决这个问题。
---
### 思路
操作思路很简单，就是把站点的东西全部存放在github项目中的hexo分支中，A、B电脑只要维护项目的hexo分支就行。

### 初始化hexo分支(A电脑)
```git
git init  //初始化本地仓库
git add . //添加所有的文件(hexo所有的文件)
git commit -m "blog source hexo"
git branch hexo  //新建hexo分支
git checkout hexo  //切换到hexo分支上
git remote add origin git@github.com:yourname/yourname.github.io.git  //将本地与Github项目对接
git push origin hexo  //push到Github项目的hexo分支上
```

### 使用hexo分支(B电脑)
```git
git clone -b hexo git@github.com:yourname/yourname.github.io.git  //将Github中hexo分支clone到本地
cd  yourname.github.io  //切换到刚刚clone的文件夹内
npm install    //安装必要的所需组件，不用再init
hexo new post "test"   //新建一个.md文件，并编辑完成自己的博客内容
git add source  //添加文字
git commit -m "测试"
git push origin hexo  //更新分支
hexo d -g   //同步博客到Github中的master
```
### 维护hexo分支(A、B电脑)
```git
git pull origin hexo  //先pull完成本地与远端的融合
hexo new post " new blog name"
git add source
git commit -m "XX"
git push origin hexo
hexo d -g
```


