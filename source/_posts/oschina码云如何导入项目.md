---
title: oschina码云如何导入项目
date: 2017-04-21
categories: [git]
tags: [git,码云]
description: 码云导入项目。
---
简易的命令行入门教程: 
Git 全局设置:
```git
git config --global user.name "用户名"
git config --global user.email "邮箱"
```

创建 git 仓库:
```git
mkdir webtest
cd webtest
git init
touch README.md
git add README.md
git commit -m "注释"
git remote add origin https://git.oschina.net/higher/webtest.git
git push -u origin master
```

已有项目?
```git
cd existing_git_repo
git remote add origin https://git.oschina.net/higher/webtest.git
git push -u origin master
```
