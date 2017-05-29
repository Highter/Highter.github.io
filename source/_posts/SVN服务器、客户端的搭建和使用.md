---
title: SVN服务器、客户端的搭建和使用
date: 2017-04-17
categories: [svn]
tags: [svn,VisualSVN server]
description: 本文介绍svn服务的搭建以及svn客户端的使用。这里以VisualSVN server 服务端和 TortoiseSVN客户端的搭配使用作为例子。
---
### 下载 
下载地址： http://subversion.apache.org/packages.html 
这里推荐VisualSVN server 服务端和 TortoiseSVN客户端搭配使用。
选择适合自己电脑型号的版本，我这里下载的是win系统的32位版本。
![输入图片说明](https://static.oschina.net/uploads/img/201704/17142408_qLTs.png " VisualSVN server 服务端和 TortoiseSVN客户端下载截图")

VisualSVN server 服务端 
![输入图片说明](https://static.oschina.net/uploads/img/201704/17142521_mOtV.png "VisualSVN server 服务端下载截图")

TortoiseSVN客户端 
![输入图片说明](https://static.oschina.net/uploads/img/201704/17142711_98gK.png "TortoiseSVN客户端下载截图")

### 安装
#### VisualSVN server 服务端安装

##### 欢迎界面
点击Next 
![点击Next](https://static.oschina.net/uploads/img/201704/17144310_ZgzU.png "VisualSVN server 服务端安装1")

##### 协议书界面 
接受协议书，如图打钩，点击Next 
![接收协议书，打钩 ](https://static.oschina.net/uploads/img/201704/17144355_lruU.png "VisualSVN server 服务端安装2")

##### 选择组件 
默认，点击Next 
![默认，点击Next](https://static.oschina.net/uploads/img/201704/17144429_eDTF.png "VisualSVN server 服务端安装3")

##### 选择版本 
选择标准版本，点击Standard Edition，进行svn服务器配置 
![点击Standard Edition，进行svn服务器配置](https://static.oschina.net/uploads/img/201704/17144549_snW0.png "VisualSVN server 服务端安装4")

##### 配置  
选择好安装路径、仓库位置、服务端口以及备份地址 
![选择好安装路径、仓库位置、服务端口以及备份地址](https://static.oschina.net/uploads/img/201704/17144643_lu4t.png "VisualSVN server 服务端安装5")

##### 安装 
点击Install，开始安装 
![开始安装，点击Install](https://static.oschina.net/uploads/img/201704/17144809_KvrT.png "VisualSVN server 服务端安装6")

##### 等待安装 
![等待安装](https://static.oschina.net/uploads/img/201704/17144840_bYrA.png "VisualSVN server 服务端安装7")

##### 安装结束 
点击Finish，到此VisualSVN server已经安装完毕 
![安装结束，点击Finish](https://static.oschina.net/uploads/img/201704/17144924_iP78.png "VisualSVN server 服务端安装8") 

#### TortoiseSVN客户端安装 
##### 欢迎界面 
点击Next 
![点击Next](https://static.oschina.net/uploads/img/201704/17152543_ofJp.png "TortoiseSVN客户端安装1")

##### 协议书界面 
点击Next 
![点击Next](https://static.oschina.net/uploads/img/201704/17153552_K4R6.png "TortoiseSVN客户端安装2")

##### 选择安装路径 
选择好安装路径之后，点击Next 
![选择安装路径，点击Next](https://static.oschina.net/uploads/img/201704/17153825_IM2p.png "TortoiseSVN客户端安装3")

##### 安装 
点击Install，开始安装 
![点击Install，开始安装](https://static.oschina.net/uploads/img/201704/17153848_AAsG.png "TortoiseSVN客户端安装4")

##### 等待安装 
![等待安装](https://static.oschina.net/uploads/img/201704/17153902_s8AI.png "TortoiseSVN客户端安装5") 

##### 安装结束 
点击Finish，到此TortoiseSVN客户端已经安装完毕 
![安装结束，点击Finish](https://static.oschina.net/uploads/img/201704/17155425_UcIL.png "TortoiseSVN客户端安装6") 

### svn服务器配置 
#### VisualSVN Server 主界面 
打开 VisualSVN Server.msc 应用 
![打开 VisualSVN Server.msc 应用](https://static.oschina.net/uploads/img/201704/17163319_2UTz.png "打开 VisualSVN Server.msc 应用") 

#### 配置仓库 
##### 选中仓库 
选择Respositories,右击，选择 Create New Respository    
![输入图片说明](https://static.oschina.net/uploads/img/201704/17163534_Cfb4.png "在这里输入图片标题")

##### 选择仓库类型 
选择创建FSFS格式的仓库 
![输入图片说明](https://static.oschina.net/uploads/img/201704/17163642_JqLb.png "在这里输入图片标题")

##### 输入仓库名称 
![输入图片说明](https://static.oschina.net/uploads/img/201704/17163717_1IKt.png "在这里输入图片标题")

##### 选择仓库结构 
这里使用推荐 
![输入图片说明](https://static.oschina.net/uploads/img/201704/17163758_LKai.png "在这里输入图片标题")

##### 设置仓库权限 
这里选择用户认证，需用使用配置的特定用户才有权限访问，点击Custom...添加用户  
![输入图片说明](https://static.oschina.net/uploads/img/201704/17163852_2VCj.png "在这里输入图片标题")

##### 添加用户 
点击Add... 
![输入图片说明](https://static.oschina.net/uploads/img/201704/17163923_8YAf.png "在这里输入图片标题")

点击Create user... 
![输入图片说明](https://static.oschina.net/uploads/img/201704/17163947_CPjT.png "在这里输入图片标题")

输入配置的用户名和密码，配置完返回到配置页面 
![输入图片说明](https://static.oschina.net/uploads/img/201704/17164110_mrl5.png "在这里输入图片标题")

##### 选择用户权限 
这里赋予的权限是可读/可写，点击确定 
![输入图片说明](https://static.oschina.net/uploads/img/201704/17164145_M4RQ.png "在这里输入图片标题")

##### 配置完成
到这里仓库配置完成，点击Finish即可 
![输入图片说明](https://static.oschina.net/uploads/img/201704/17164226_PJPZ.png "在这里输入图片标题")

#### 查看仓库信息  
可以看到创建的仓库，点击Users也可以看到配置的用户信息，也可以在Users下面进行用户信息配置，这里就不做演示了 
![输入图片说明](https://static.oschina.net/uploads/img/201704/17165553_fWgt.png "在这里输入图片标题")

### svn客户端使用 
#### 选择仓库 
选中仓库之后右击，选择Copy URL to Clipboard,复制仓库地址 
![输入图片说明](https://static.oschina.net/uploads/img/201704/17165809_ByrW.png "在这里输入图片标题")

#### Checkout仓库 
##### 选择位置
选择好位置，在电脑的空白处单击右键，选择SVN Checkout... 
![输入图片说明](https://static.oschina.net/uploads/img/201704/17170321_qiQD.png "在这里输入图片标题")

##### 选择Checkout位置 
复制刚刚copy的url，选择Checkout位置 
![输入图片说明](https://static.oschina.net/uploads/img/201704/17170133_FtCR.png "在这里输入图片标题")

##### 用户验证 
这是非必须步骤，只有首次Checkout才需要填写用户名和密码，用户名和密码是上面所配置的     
![输入图片说明](https://static.oschina.net/uploads/img/201704/17170354_IiEp.png "在这里输入图片标题")

##### 点击OK 
![输入图片说明](https://static.oschina.net/uploads/img/201704/17170409_DPYK.png "在这里输入图片标题") 

#### 文件上传 
##### 新建新增文件 
在Checkout的路径下添加新增文件，这里以test.txt为例子 
![输入图片说明](https://static.oschina.net/uploads/img/201704/17170617_3GES.png "在这里输入图片标题")

##### 准备提交文件 
空白处右击，选择SVN Commit... 
![输入图片说明](https://static.oschina.net/uploads/img/201704/17170647_V6Ct.png "在这里输入图片标题")

##### 提交文件 
选择要提交的文件并填写注释，点击OK 
![输入图片说明](https://static.oschina.net/uploads/img/201704/17170727_pkKK.png "在这里输入图片标题")

##### 提交成功 
提交文件成功，点击OK 
![输入图片说明](https://static.oschina.net/uploads/img/201704/17170743_42fe.png "在这里输入图片标题")

### 查看仓库文件 
重新刷新客户端上的test仓库，即可看到刚刚提交的文件 
![输入图片说明](https://static.oschina.net/uploads/img/201704/17172912_U7dU.png "在这里输入图片标题") 