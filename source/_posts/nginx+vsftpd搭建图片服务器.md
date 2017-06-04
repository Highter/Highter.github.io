---
title: nginx+vsftpd搭建图片服务器
date: 2017-06-04 09:58:15
categories: [vsftpd]
tags: [vsftpd,nginx]
description: 本文介绍nginx+vsftpd图片服务器的搭建，实验环境是在centos7下。
---

为了方便大家看到效果，我统一在/data目录下开始操作。

### 安装 nginx
#### nginx环境安装
**安装gcc** 
安装nginx需要先将官网下载的源码进行编译，编译依赖gcc环境，如果没有gcc环境，需要安装gcc：
```bash
[root@localhost data]# yum install gcc-c++
```
**安装PCRE** 
PCRE(Perl Compatible Regular Expressions)是一个Perl库，包括 perl 兼容的正则表达式库。nginx的http模块使用pcre来解析正则表达式，所以需要在linux上安装pcre库。
```bash
[root@localhost data]# yum install -y pcre pcre-devel
```
注：pcre-devel是使用pcre开发的一个二次开发库。nginx也需要此库。 
**安装zlib** 
zlib库提供了很多种压缩和解压缩的方式，nginx使用zlib对http包的内容进行gzip，所以需要在linux上安装zlib库。
```bash
[root@localhost data]# yum install -y zlib zlib-devel
```
**安装openssl** 
OpenSSL 是一个强大的安全套接字层密码库，囊括主要的密码算法、常用的密钥和证书封装管理功能及SSL协议，并提供丰富的应用程序供测试或其它目的使用。
nginx不仅支持http协议，还支持https（即在ssl协议上传输http），所以需要在linux安装openssl库。
```bash
[root@localhost data]# yum install -y openssl openssl-devel
```
#### nginx安装
**下载** 
```bash
[root@localhost data]# wget http://nginx.org/download/nginx-1.12.0.tar.gz
```
**解压**
```bash
[root@localhost data]# tar -zxvf nginx-1.12.0.tar.gz
```
**配置 configure**
```bash
[root@localhost data]# cd nginx-1.12.0/
[root@localhost nginx-1.12.0]# ./configure
```
![配置 configure](https://static.oschina.net/uploads/img/201706/03170643_5o0f.png "配置 configure")
注意：默认安装在/usr/local/nginx 
**编译安装** 
```bash
[root@localhost nginx-1.12.0]# make
[root@localhost nginx-1.12.0]# make install
```
**查看安装目录**
```bash
[root@localhost nginx-1.12.0]# whereis nginx
nginx: /usr/local/nginx
```
#### ngnix常用命令
**启动nginx** 
```bash
[root@localhost nginx-1.12.0]# cd /usr/local/nginx/sbin/
[root@localhost sbin]# ./nginx
```
注意：执行./nginx启动nginx，这里可以-c指定加载的nginx配置文件，如下：
./nginx -c /usr/local/nginx/conf/nginx.conf 
如果不指定-c，nginx在启动时默认加载conf/nginx.conf文件，此文件的地址也可以在编译安装nginx时指定./configure的参数（--conf-path= 指向配置文件（nginx.conf）） 

**停止nginx** 
方式1，快速停止：

```bash
[root@localhost sbin]# ./nginx -s stop
```
此方式相当于先查出nginx进程id再使用kill命令强制杀掉进程。 

方式2，完整停止(建议使用)： 

```bash
[root@localhost sbin]# ./nginx -s quit
```
此方式停止步骤是待nginx进程处理任务完毕进行停止。 

**重启nginx**  

方式1，先停止再启动（建议使用）: 
对nginx进行重启相当于先停止nginx再启动nginx，即先执行停止命令再执行启动命令。
如下： 

```bash
[root@localhost sbin]# ./nginx -s quit
[root@localhost sbin]# ./nginx
```
方式2，重新加载配置文件： 
当nginx的配置文件nginx.conf修改后，要想让配置生效需要重启nginx，使用-s reload不用先停止nginx再启动nginx即可将配置信息在nginx中生效，如下：
```bash
[root@localhost sbin]# ./nginx -s reload
```
**测试** 
浏览器输入服务器地址即可 
![输入图片说明](https://static.oschina.net/uploads/img/201706/03172422_v7D0.png "在这里输入图片标题")

### 安装vsftpd组件
#### 安装vsftpd组件 
```bash
[root@localhost sbin]# yum -y install vsftpd
```
安装完后，有/etc/vsftpd/vsftpd.conf 文件，是vsftp的配置文件。

```conf
查看vsftpd状态: systemctl status vsftpd.service
启动vsftpd: systemctl start vsftpd.service
停止vsftpd: systemctl stop vsftpd.service
重启vsftpd: systemctl restart vsftpd.service
```

#### 添加一个ftp用户
此用户就是用来登录ftp服务器用的。 
```bash
[root@localhost sbin]# useradd ftpuser
```
给ftp用户添加密码 
```bash
[root@localhost sbin]# passwd ftpuser
```
输入两次密码后修改密码。 
#### 防火墙开启21端口
```bash
[root@localhost sbin]# firewall-cmd --permanent --zone=public --add-port=21/tcp
[root@localhost sbin]# firewall-cmd --permanent --zone=public --add-port=21/udp
[root@localhost sbin]# firewall-cmd --reload#重启iptables
```
#### 修改selinux 
外网是可以访问上去了，可是发现没法返回目录（使用ftp的主动模式，被动模式还是无法访问），也上传不了，因为selinux作怪了。 
执行以下命令查看状态： 
```bash
[root@localhost sbin]# getsebool -a|grep ftp
ftpd_anon_write --> off
ftpd_connect_all_unreserved --> off
ftpd_connect_db --> off
ftpd_full_access --> off
ftpd_use_cifs --> off
ftpd_use_fusefs --> off
ftpd_use_nfs --> off
ftpd_use_passive_mode --> off
httpd_can_connect_ftp --> off
httpd_enable_ftp_server --> off
tftp_anon_write --> off
tftp_home_dir --> off
```
执行上面命令，返回的结果看到 
```bash
ftpd_full_access --> off
tftp_home_dir --> off
```
代表没有开启外网的访问。 
```bash
[root@localhost sbin]# setsebool -P ftpd_full_access on
[root@localhost sbin]# setsebool -P tftp_home_dir on
```
这样应该没问题了（如果，还是不行，看看是不是用了ftp客户端工具用了passive模式访问了，如提示Entering Passive mode，就代表是passive模式，默认是不行的，因为ftp passive模式被iptables挡住了，下面会讲怎么开启，如果懒得开的话，就看看你客户端ftp是否有port模式的选项，或者把passive模式的选项去掉。如果客户端还是不行，看看客户端上的主机的电脑是否开了防火墙，关吧）
FileZilla的主动、被动模式修改：
菜单：编辑→设置
![输入图片说明](https://static.oschina.net/uploads/img/201706/04093438_EAro.png "在这里输入图片标题")

####  开启被动模式

默认是开启的，但是要指定一个端口范围，打开vsftpd.conf文件，在后面加上

```
pasv_min_port=30000
pasv_max_port=30999
```

表示端口范围为30000~30999，这个可以随意改。改完重启一下vsftpd

同时在防火墙中开启30000和30999端口。

```
[root@localhost sbin]# firewall-cmd --permanent --zone=public --add-port=30000/tcp
[root@localhost sbin]# firewall-cmd --permanent --zone=public --add-port=30000/udp
[root@localhost sbin]# firewall-cmd --permanent --zone=public --add-port=30999/tcp
[root@localhost sbin]# firewall-cmd --permanent --zone=public --add-port=30999/udp
[root@localhost sbin]# firewall-cmd --reload#重启iptables
```



#### 修改vsftpd.conf文件 

vsftpd.conf在路径/etc/vsftpd下
```bash
[root@localhost vsftpd]# vi /etc/vsftpd/vsftpd.conf
```
原文
```conf
anonymous_enable=YES
```
修改为
```conf
anonymous_enable=NO 
```

### 配置图片服务器

进入配置文件目录

```
[root@localhost vsftpd]# cd /usr/local/nginx/conf/
[root@localhost vsftpd]# vi nginx.config
```

方法一、在配置文件server{}中location /{} 修改配置：

```
 #默认请求
location / {
   root  /home/ftpuser/images;#定义服务器的默认网站根目录位置
   index index.html index.php index.htm;#定义首页索引文件的名称
}
```

其中：/home/ftpuser/images;为创建FTP服务账户ftpuser的根目录下的images目录

方法二、在http{}内配置新服务

```
server {
        listen       8080;
        server_name  localhost;

        #charset utf-8;

        #access_log  logs/host.access.log  main;

        #默认请求
        location / {
            root  /home/ftpuser/images;#定义服务器的默认网站根目录位置
            index index.html index.php index.htm;#定义首页索引文件的名称
           }
        }
```

注意：

1、nginx.conf配置文件最上面一行被注释掉的。 

如果没有修改最上面一行,访问的时候回报 403！

修改成上面我们创建的ftp用户ftpuser后，重新加载nginx配置文件就可以正常访问了。

```
user ftpuser
```

2、如果ping不通服务器，尝试关闭防火墙或者在防火墙中开启80端口

在防火墙中开启80端口

```
[root@localhost sbin]# firewall-cmd --permanent --zone=public --add-port=21/tcp
[root@localhost sbin]# firewall-cmd --permanent --zone=public --add-port=21/udp
[root@localhost sbin]# firewall-cmd --reload#重启iptables
```

关闭防火墙

```
[root@localhost sbin]# systemctl stop firewalld
```

### 验证

在/home/ftpuser/下新建文件夹images，下面放一张图片1.jpg
测试访问：[http://192.168.0.50/1.jpg](http://192.168.0.50/1.jpg)

![输入图片说明](https://static.oschina.net/uploads/img/201706/04151721_Wufd.png "在这里输入图片标题")