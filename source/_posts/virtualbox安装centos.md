---
title: VirtualBox安装centos7
categories: [centos]
tags: [centos,linux]
description: 本文介绍了VirtualBox安装centos7的过程，该课程实践是在mac下进行的，在win系统下也是同样步骤，希望对你有帮助。
---
## 下载 
下载地址： https://www.centos.org/download/ 
我这里选择的是DVD ISO版本。 
![centos下载地址](https://static.oschina.net/uploads/img/201704/30104532_g7vd.png "centos下载地址") 

## 创建虚拟系统 
### 新建 
![虚拟机-新建](https://static.oschina.net/uploads/img/201704/30110433_rLYC.png "虚拟机-新建") 

### 虚拟电脑名称和系统类型 
填写名称，这里填写 CentOS7,类型选择 Linux，版本选择 Other Linux(64-bit) 
![虚拟机-虚拟电脑名称和系统类型](https://static.oschina.net/uploads/img/201704/30153827_O9oc.png "虚拟机-虚拟电脑名称和系统类型") 

### 内存大小 
设置内存大小，我电脑内存是8G的，所以这里我赋予它2G，大家可以根据自己电脑配置情况设置 
![虚拟机-内存大小](https://static.oschina.net/uploads/img/201704/30111206_fNwR.png "虚拟机-内存大小")

### 虚拟硬盘 
选择 现在创建虚拟硬盘 
![虚拟机-虚拟硬盘](https://static.oschina.net/uploads/img/201704/30111240_J5dK.png "虚拟机-虚拟硬盘") 

### 虚拟硬盘文件类型 
文件类型选择VDI(VirtualBox 磁盘映像) 
![虚拟机-虚拟硬盘文件类型](https://static.oschina.net/uploads/img/201704/30111312_MDIU.png "虚拟机-虚拟硬盘文件类型") 

### 动态分配 
建议选择动态分配，不会占用太多物理空间，根据情况动态分配   
![虚拟机-动态分配](https://static.oschina.net/uploads/img/201704/30111508_gYmd.png "虚拟机-动态分配") 

### 文件位置和大小 
选择保存位置和设置极限大小 
![虚拟机-文件位置和大小](https://static.oschina.net/uploads/img/201704/30153926_yVNz.png "虚拟机-文件位置和大小") 

## 设置虚拟系统 
![虚拟机设置](https://static.oschina.net/uploads/img/201704/30154054_rBvK.png "虚拟机设置") 
### 系统 
选择让 光驱 启动优先 

![设置-系统](https://static.oschina.net/uploads/img/201704/30154322_iLmN.png "设置-系统") 

### 存储 
选择 光驱 位置 
![设置-存储](https://static.oschina.net/uploads/img/201704/30154127_3SNy.png "设置-存储") 

### 网络 
设置网络，连接方式选择 网络地址转换(NAT) 
![设置-网络](https://static.oschina.net/uploads/img/201704/30154409_ZsMM.png "设置-网络") 

## 安装

### 安装首页 
选择 Install CentOS Linux 7,回车 
![安装首页](https://static.oschina.net/uploads/img/201704/30163126_4uFC.png "安装首页") 

### 选择语言 
 ![选择语言](https://static.oschina.net/uploads/img/201704/30163517_r8YZ.png "选择语言") 

### 安装主界面 
进入安装主界面之后要设置 软件选择 和 安装位置 
![安装主界面](https://static.oschina.net/uploads/img/201704/30163916_eSDY.png "安装主界面") 

#### 软件选择 
选择所需要的附加选项，点击 完成 
![输入图片说明](https://static.oschina.net/uploads/img/201704/30164112_PtqM.png "在这里输入图片标题") 

#### 安装位置 
选择 本地标准磁盘，点击 完成
![安装-安装位置](https://static.oschina.net/uploads/img/201704/30164335_a0GO.png "安装-安装位置") 

#### 开始安装 
设置完 软件选择 和 安装位置 之后点击 开始安装 
![开始安装](https://static.oschina.net/uploads/img/201704/30164554_Xqfx.png "开始安装") 

### 用户设置 
设置 ROOT密码 和 创建用户 
![用户设置](https://static.oschina.net/uploads/img/201704/30164909_bA5y.png "用户设置") 

#### ROOT密码
![ROOT密码](https://static.oschina.net/uploads/img/201704/30165216_0oMW.png "ROOT密码") 

#### 创建用户
![创建用户](https://static.oschina.net/uploads/img/201704/30165249_yNYb.png "创建用户") 

### 等待安装 
设置完 ROOT密码 和 创建用户  之后等待安装
![安装-等待安装](https://static.oschina.net/uploads/img/201704/30170825_lSRh.png "安装-等待安装") 

### 安装完成 
安装完成之后点击 重启 即可 
![输入图片说明](https://static.oschina.net/uploads/img/201704/30165550_JHUT.png "在这里输入图片标题") 

## 启动 
### 启动前配置 
启动的时候提示需要同意协议书和设置网络，如果你在步骤 4.3 上已经设置了，这里就不需要再设置 
![启动前配置](https://static.oschina.net/uploads/img/201704/30170941_cCcH.png "启动前配置") 

#### 同意协议书 
勾选 同意 复选框，点击 完成 即可 
![同意协议书](https://static.oschina.net/uploads/img/201704/30171031_Gprz.png "同意协议书") 

#### 设置网络 
点击右边开关，显示 开启 之后点击完成即可 
![设置网络](https://static.oschina.net/uploads/img/201704/30171037_a2rE.png "设置网络")  

### 输入用户密码 
输入步骤  4.4.2 设置的密码 
![输入用户密码](https://static.oschina.net/uploads/img/201704/30171109_o0Re.png "输入用户密码") 

### 系统主界面 
登录之后可以看到系统的主界面，如图 
![系统主界面](https://static.oschina.net/uploads/img/201704/30171124_0lTn.png "系统主界面") 