---
title: 'gradle安装[mac]'
date: 2021-06-23 16:16:44
categories: [java]
tags: [java,gradle]
description: Gradle是一个优秀的构建工具,也是一个开发框架,基于Groovy语言。一直以来项目都在使用maven，今天特地走进gradle的大门，本文章记录一下gradle的安装过程，是后续使用的基础。
---

### 前提
jdk版本要1.8以上，先检查一下

```shell
$ java -version
java version "1.8.0_91"
```

### 安装

#### 包管理器安装

##### SDKMAN！安装

```shell
$ sdk install gradle 7.1
```

##### Homebrew 安装

```shell
$ brew install gradle
```

#### 手动安装

1、下载
地址： https://gradle.org/releases/
可以在页面上选择所需版本下载。

2、解压

```shell
$ unzip -d /Users/yangjianwei/Documents/software/gradle gradle-7.1-bin.zip
$ ls /Users/yangjianwei/Documents/software/gradle/gradle-7.1
LICENSE	NOTICE	README	bin	init.d	lib
```
3、配置环境变量
```shell
$ vim /Users/yangjianwei/.bash_profile
```
添加内容：
```shell
export GRADLE_HOME=/Users/yangjianwei/Documents/software/gradle/gradle-7.1
export PATH=.:$PATH:$M2_HOME/bin:$JAVA_HOME/bin:$GRADLE_HOME/bin
```
```shell
$ source /Users/yangjianwei/.bash_profile
```

4、验证

```shell
$ gradle -v

Welcome to Gradle 7.1!

Here are the highlights of this release:
 - Faster incremental Java compilation
 - Easier source set configuration in the Kotlin DSL

For more details see https://docs.gradle.org/7.1/release-notes.html


------------------------------------------------------------
Gradle 7.1
------------------------------------------------------------
```



