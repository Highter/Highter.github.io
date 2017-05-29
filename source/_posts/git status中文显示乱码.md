---
title: git status中文显示乱码
date: 2017-05-29
categories: [git]
tags: [git]
description: 对于使用git的用户来说，git status命令并不陌生，对于使用git status中文乱码的问题，显然会影响我们的使用效率。
---
** git status显示类似如下乱码**
```git
Jenkins\345\256\211\350\243\205(war\345\214\205\345\275\242\345\274\217).md
```
** 解决方法**
```git
git config core.quotepath false
```
