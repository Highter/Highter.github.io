---
title: 第三方Maven仓库地址使用
date: 2017-04-21
categories: [maven]
tags: [maven]
description: maven官方提供的仓库在国内下载速度惨不忍睹，我们通常需要自建仓库或者借助第三方仓库来加速开发进度。
---

 **第三方Maven仓库地址使用  ** 
国内maven仓库下载东西好慢，好多企业都会自建maven仓库，对于我们这些个人开发者就悲催了，还能好好玩耍吗？
还好国内还是有比较好用的maven仓库，比如：阿里云的。
地址：http://maven.aliyun.com/nexus/ 
在maven的settings.xml，文件位置在maven的安装路径下，比如我本地的路径D:\Java\MAVEN\apache-maven-3.5.0\conf 
文件里配置mirrors的子节点，添加如下mirror 
```xml
    <mirror>
        <id>nexus-aliyun</id>
        <mirrorOf>*</mirrorOf>
        <name>Nexus aliyun</name>
        <url>http://maven.aliyun.com/nexus/content/groups/public</url>
    </mirror> 
```