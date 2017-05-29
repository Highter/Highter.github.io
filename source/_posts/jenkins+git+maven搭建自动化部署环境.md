---
title: jenkins+git+maven搭建自动化部署环境
date: 2017-04-26
categories: [jenkins]
tags: [jenkins,自动化部署]
description: 自动化部署可以节约传统打包带来的痛苦，这一篇是jenkins自动化部署的入门，希望能对你有所启示。
---
## 安装Git 
Git安装可以参考[Git安装](https://my.oschina.net/sssmile/blog/882019)一文 

## 安装Maven 
Maven的安装可以参考[Maven安装](https://my.oschina.net/sssmile/blog/883247)一文 

## 安装Jenkins
jenkins的安装可以参考 
3.1 [Jenkins安装](https://my.oschina.net/sssmile/blog/881949) 
3.2 [Jenkins安装(war包形式)](https://my.oschina.net/sssmile/blog/887817) 
注：为了方便，本次实验采用war包形式安装

## jenkins配置 
### 插件管理 
经过步骤3的初始化插件安装，这时候jenkins已经具备了大部分了插件，个别插件才需要另外安装。 
已经点击 管理插件，进入插件管理界面。 
要安装两个插件： 
Maven Integration plugin 用来构建maven的项目,一个是对容器依赖的插件；
Deploy to container Plugin 自动发布到相关容器上去 
![输入图片说明](https://static.oschina.net/uploads/img/201704/26180944_tYBq.png "在这里输入图片标题") 
![输入图片说明](https://static.oschina.net/uploads/img/201704/27101407_ZEOC.png "在这里输入图片标题") 
#### 安装Maven Integration plugin 
如果已经安装，可直接跳过该步骤 。 
在系统管理／可选插件 里面，我们直接用全局搜索 Maven Integration plugin,打钩，点直接安装就行 
![输入图片说明](https://static.oschina.net/uploads/img/201704/26185848_euCc.png "在这里输入图片标题")

#### 安装Deploy to container Plugin 
如果已经安装，可直接跳过该步骤 。 
在系统管理／可选插件 里面，我们直接用全局搜索 Deploy to container Plugin,打钩，点直接安装就行 
![输入图片说明](https://static.oschina.net/uploads/img/201704/27152709_Azzq.png "在这里输入图片标题")

如果在使用过程中发现少了其它插件，安装步骤同4.1.1和4.1.2相似

### 设置全局工具 
进入全局工具配置页面，Global Tool Configuration 
![输入图片说明](https://static.oschina.net/uploads/img/201704/26184809_vXDz.png "在这里输入图片标题") 
#### Maven配置文件 
![输入图片说明](https://static.oschina.net/uploads/img/201704/27100028_6sR9.png "在这里输入图片标题") 

 #### JDK配置 
![输入图片说明](https://static.oschina.net/uploads/img/201704/27100113_D8Jp.png "在这里输入图片标题") 
注：不要勾选自动安装，否则不能填写JAVA_HOME等信息，下面的maven、git等配置同样

 #### Git配置 
![输入图片说明](https://static.oschina.net/uploads/img/201704/27100151_J13h.png "在这里输入图片标题") 
说明：git选择的Path是git安装目录的cmd下的git.exe，在构建时执行git命令会调用这个程序

 #### Maven配置 
![输入图片说明](https://static.oschina.net/uploads/img/201704/27100238_AmMN.png "在这里输入图片标题")

## 项目配置
### 新建任务 
创建一个新的任务->构建一个maven项目，输入项目名，这里以JenkinsDemo为例子，点击OK
![输入图片说明](https://static.oschina.net/uploads/img/201704/27091055_bVyc.png "在这里输入图片标题") 
![输入图片说明](https://static.oschina.net/uploads/img/201704/27110708_m7dq.png "在这里输入图片标题")

### 配置项目名和描述 
![输入图片说明](https://static.oschina.net/uploads/img/201704/27100339_QuNQ.png "在这里输入图片标题")

### 源码管理配置 
源码管理这里我以Git为例子，Repository URL填写项目的地址，可以使https地址，也可以是SHH地址。 
注意，如果使用https地址，步骤需要点击Add->填写网站的用户名和密码，要使用SHH地址，在这之前我们必须在本机上生成了ssh密钥，并且在平台上设定过公钥才可以使用。 
这里我使用的是码云平台上的项目，参考文章 [本地电脑和 Git @ OSC 之间SHH连接教程](http://git.oschina.net/oschina/git-osc/wikis/帮助#ssh-keys) 
这是我用来测试项目的SHH地址：[git@git.oschina.net:higher/webtest.git](git@git.oschina.net:higher/webtest.git) 
如有需要的朋友可以自行下载，https地址为: [https://git.oschina.net/higher/webtest.git](https://git.oschina.net/higher/webtest.git) 
**a.SHH方式  ** 
![输入图片说明](https://static.oschina.net/uploads/img/201704/27100422_NIk2.png "在这里输入图片标题") 
如果出现如下的错误，请检查公钥配置
![输入图片说明](https://static.oschina.net/uploads/img/201704/27150923_D2Yb.png "在这里输入图片标题") 
**b.https方式   ** 
 ![输入图片说明](https://static.oschina.net/uploads/img/201704/27151727_2McR.png "在这里输入图片标题") 

### Build构建配置  
Build构建配置的Root POM填写:pom.xml；
Gloals and options填写:clean package 
![输入图片说明](https://static.oschina.net/uploads/img/201704/27092028_wAsC.png "在这里输入图片标题") 

### 构建后操作配置 
构建后操作选择Deploy war/ear to a container(如果没有这个，请检查是否安装了插件Deploy to container Plugin)，点击Add Container选择构建之后发布war包的位置，我本地用的tomcat7,所以选择它，填写内容对应如下,填写完点击 保存 即可。 
WAR/EAR files:**target\webTest.war ** 
Tomcat 下 Manager user name:**admin** 
Manager password:**admin  ** 
Tomcat URL:**http://localhost:8080** 
![输入图片说明](https://static.oschina.net/uploads/img/201704/27092436_iNIF.png "在这里输入图片标题") 
**注意：**  jenkins构建成功之后会在 ".jenkins\workspace\任务名称\target" 路径下 产生war包，比如我本地位置为C:\Users\bank_gz\\.jenkins\workspace\JenkinsDemo\target\webTest.war，如图 
![输入图片说明](https://static.oschina.net/uploads/img/201704/27143758_02ZH.png "在这里输入图片标题") 
填写的发布的Tomcat URL必须配置用户名和密码，配置的用户名和密码对应上面填写的Manager user name和Manager password,tomcat相关的配置参考[tomcat配置详解](https://my.oschina.net/sssmile/blog/888239)，不然在构建的时候会报403的错误，如图
![输入图片说明](https://static.oschina.net/uploads/img/201704/27143425_4uEw.png "在这里输入图片标题") 

通过上面的步骤， 当构建时候会从git服务器拉去代码，再通过maven的**clean package**命令编译打包，成功时候就会在**C:\Users\bank_gz\\.jenkins\workspace\JenkinsDemo\target**路径下产生**webTest.war**，同时发布到**http://localhost:8080**服务器下，当然**Tomcat URL**也可以填写其它url，比如**http://localhost:8081**。只要确定服务启动起来而且配置了用户名和密码就ok，这时候war包就会被加载到tomcat的webapps路径下被自动解压发布。

## 项目构建 
### 立即构建 
在新建的任务JenkinsDemo下,点击 立即构建，在构建历史上可以看到构建的历史，点击进去构建历史 
![输入图片说明](https://static.oschina.net/uploads/img/201704/27092549_XWMj.png "在这里输入图片标题") 
### 查看构建日志 
在构建历史上点击 Console Output查看构建日志 
![输入图片说明](https://static.oschina.net/uploads/img/201704/27092617_uRJB.png "在这里输入图片标题") 
在构建历史上看到日志输出最后是Finished:SUCCESS即表示构建步骤成功  
![输入图片说明](https://static.oschina.net/uploads/img/201704/27092644_YnlS.png "在这里输入图片标题") 
### 查看项目构建情况 
回到首页可也可以看到构建情况，如下图表示成功
![输入图片说明](https://static.oschina.net/uploads/img/201704/27092716_OZJP.png "在这里输入图片标题") 

## 测试成果 
在浏览器上输入[http://127.0.0.1:8080/webTest/](http://127.0.0.1:8080/webTest/)可以查到刚刚用来测试构建项目的首页
![输入图片说明](https://static.oschina.net/uploads/img/201704/27092801_gpqv.png "在这里输入图片标题")
