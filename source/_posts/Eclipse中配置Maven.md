---
title: Eclipse中配置Maven
date: 2017-04-20
categories: [tools]
tags: [eclipse,github]
description: 在eclipse中集成maven环境，为maven工程开发带来方便。
---
注意：安装前请确认一下电脑是否安装了Maven，Maven的安装可以参考[Maven安装](https://my.oschina.net/sssmile/blog/879815)一文。
### 说明 
安装前需先确认使用的Eclipse是否已经集成了Maven插件，如果已经集成，可以跳过步骤2。 
查看：Windowns-preference里面有没有maven选项，如图表示已经集成，可以跳过步骤2。 
![输入图片说明](https://static.oschina.net/uploads/img/201704/20094843_YlbX.png "在这里输入图片标题")

### 安装Maven插件 
#### 填写Maven地址 
选择help菜单下面的install new software菜单项，点击Add。 
Name填写maven，Location填写maven在线安装地址，地址 http://download.eclipse.org/technology/m2e/releases。 
填写完点击OK 
![输入图片说明](https://static.oschina.net/uploads/img/201704/20100340_6FPS.png "在这里输入图片标题")

#### 选择插件 
![输入图片说明](https://static.oschina.net/uploads/img/201704/20101154_qUis.png "在这里输入图片标题") 
之后可以根据提示来进行安装。安装完成后需要重新启动Eclipse。  
安装完成重启之后我们可以看到菜单window->Preferences点击进入后会多出一栏Maven的菜单栏。

### Maven插件配置 
####  添加Maven安装目录 
Windowns-preference-maven-installations，在出现的右边窗口中选择add按钮添加我们自己的Maven安装目录。
点击Finish即可 
 ![输入图片说明](https://static.oschina.net/uploads/img/201704/20101535_qqiO.png "在这里输入图片标题") 

#### 选择目录 
勾选刚刚添加进来的maven目录 
![输入图片说明](https://static.oschina.net/uploads/img/201704/20101734_gLoy.png "在这里输入图片标题")

#### 设置setting.xm文件 
点击User settings，Global Settings是全局的setting，所有用户可以访问，User Settings只有本用户才可以访问的。
这里我选择Global Settings，添加setting.xml(位置在本机安装目录下面的conf文件下，当然用户也可以把setting.xml文件放在其它位置)，添加setting.xml文件之后eclipse会读setting.xml配置文件里面的仓库的存储位置，自动显示到Local Repository上，然后点击 OK，这样就完成了 eclipse上 maven 插件配置，就可以在eclipse中使用maven了。 
![输入图片说明](https://static.oschina.net/uploads/img/201704/20102444_mnbw.png "在这里输入图片标题")