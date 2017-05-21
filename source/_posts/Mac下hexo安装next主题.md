---
title: Mac下hexo使用next主题
categories: [hexo]
tags: [hexo]
description: 本文介绍在mac下如何使用hexo配置next主题。
---

### **Mac下hexo使用next主题**

### 下载主题
在终端窗口下，切到 Hexo 站点目录下，下载[NexT](http://theme-next.iissnan.com/getting-started.html#install-next-theme)主题。这里我使用的站点目录是 Highter.github.io

```bash
Hunter-Mac:Highter.github.io yangjianwei$ git clone https://github.com/iissnan/hexo-theme-next themes/next
```

### 开启主题
在站点目录下修改 _config.yml 文件 

```yml
theme: next
```
### 验证主题
验证主题需要启动服务来看效果，在启动服务前先执行 hexo clean 来清理hexo缓存
#### 清理缓存
```bash
Hunter-Mac:Highter.github.io yangjianwei$ hexo clean
```
#### 启动服务
```bash
Hunter-Mac:Highter.github.io yangjianwei$ hexo server
```
#### 查看效果
在浏览器输入[http://localhost:4000/](http://localhost:4000/)查看效果
![查看效果](https://static.oschina.net/uploads/img/201705/17222712_7mo6.png "查看效果")

### 设置主题
#### 设置主题方案

Muse - 默认 Scheme，这是 NexT 最初的版本，黑白主调，大量留白
Mist - Muse 的紧凑版本，整洁有序的单栏外观
Pisces - 双栏 Scheme，小家碧玉似的清新 
Scheme 的切换通过更改 **主题配置文件**，搜索 scheme 关键字。 你会看到有三行 scheme 的配置，将你需用启用的 scheme 前面注释 `#` 去除即可这里选择 Pisces作为例子 
我的 **主题配置文件** 路径在：
```
../Highter.github.io/themes/next/_config.yml
```
修改如下：
```yml
# Schemes
#scheme: Muse
#scheme: Mist
scheme: Pisces
```

#### 设置语言
编辑 **站点配置文件**， 将 language 设置成你所需要的语言。建议明确设置你所需要的语言，例如选用简体中文，
我的 **站点配置文件** 路径在：
```yml
../Highter.github.io/_config.yml
```
配置如下：

```yml
language: zh-Hans
```

目前 NexT 支持的语言如以下表格所示：

| 语言           | 代码                 | 设定示例                                |
| ------------ | ------------------ | ----------------------------------- |
| English      | `en`               | `language: en`                      |
| 简体中文         | `zh-Hans`          | `language: zh-Hans`                 |
| Français     | `fr-FR`            | `language: fr-FR`                   |
| Português    | `pt`               | `language: pt` or `language: pt-BR` |
| 繁體中文         | `zh-hk` 或者 `zh-tw` | `language: zh-hk`                   |
| Русский язык | `ru`               | `language: ru`                      |
| Deutsch      | `de`               | `language: de`                      |
| 日本語          | `ja`               | `language: ja`                      |
| Indonesian   | `id`               | `language: id`                      |
| Korean       | `ko`               | `language: ko`                      |

#### 设置菜单
默认运行只有 Home 、Archives 、Tags
修改主题 **主题配置文件** 
```yml
menu:
  home: /                  #首页
  categories: /categories  #分类
  about: /about            #关于
  archives: /archives      #归档
  tags: /tags              #标签
  sitemap: /sitemap.xml
  commonweal: /404.html
```

#### 设置侧栏
left - 靠左放置
right - 靠右放置
修改主题 **主题配置文件** 
```yml
sidebar:
  position: left
```


#### 头像
编辑主题 **主题配置文件**  修改字段 avatar， 值设置成头像的链接地址。其中，头像的链接地址可以是：

| 地址         | 值                                        |
| ---------- | ---------------------------------------- |
| 完整的互联网 URI | `http://example.com/avatar.png`          |
| 站点内的地址     | 将头像放置主题目录下的 `source/uploads/` （新建 uploads 目录若不存在） 配置为：`avatar: /uploads/avatar.png`或者 放置在 `source/images/` 目录下 配置为：`avatar: /images/avatar.png` |

头像设置示例
avatar: /uploads/avatar.jpg

#### 设置站点
```yml
# Site
title: Highter's blog                   #标题
subtitle: Smile at life ^_^             #小标题
description: Life is short,I use Java   #描述
author: Highter                         #作者
language: zh-Hans                       #语言
timezone:
```
#### 添加文章

把自己所写的文章添加到站点的_posts文件下 

![添加文章](https://static.oschina.net/uploads/img/201705/20081229_alad.png "添加文章")

```bash
Hunter-Mac:Highter.github.io yangjianwei$ hexo clean
INFO  Deleted database.
Hunter-Mac:Highter.github.io yangjianwei$ hexo s
```

到这一步我们可以查看一下效果

![添加文章效果图](https://static.oschina.net/uploads/img/201705/20082303_kyh6.png "添加文章效果图")

#### 分类页
当我们点击分类的时候可以看到如图

![查看分类效果图](https://static.oschina.net/uploads/img/201705/20081532_eLKw.png "查看分类效果图")

需要初始化**分类** hexo new page categories
```bash
Hunter-Mac:Highter.github.io yangjianwei$ hexo new page categories
INFO  Created: ~/Documents/msg/github/Highter.github.io/source/categories/index.md
```
修改~/Documents/msg/github/Highter.github.io/source/categories/index.md 文件 
```md
---
title: 分类
date: 2017-05-18 22:38:17
type: "categories"
comments: false
---
```

#### 标签页
需要初始化**标签** hexo new page tags
```bash
Hunter-Mac:Highter.github.io yangjianwei$ hexo new page tags
INFO  Created: ~/Documents/msg/github/Highter.github.io/source/tags/index.md
```
修改~/Documents/msg/github/Highter.github.io/source/tags/index.md 文件 
```md
---
title: 标签
date: 2017-05-18 22:57:40
type: "tags"
comments: false
---
```

#### 设置文章分类和标签
添加类似下面的分类和标签，注意categories和tags的冒号后需要空格
```yml
---
title: CentOS安装JDK
categories: [java]
tags: [java,centos,jdk]
---
```

![分类效果图](https://static.oschina.net/uploads/img/201705/18234716_3yeb.png "分类效果图")

![标签效果图](https://static.oschina.net/uploads/img/201705/18234654_Iksq.png "标签效果图")

#### 设置阅读更多
修改 **主题配置文件** 
```yml
# Please use <!-- more --> in the post to control excerpt accurately.
auto_excerpt:
  enable: true #设置为true
  length: 150
```
效果
![阅读更多效果图](https://static.oschina.net/uploads/img/201705/18235125_c7gx.png "阅读更多效果图")

#### 设置描述
```yml
---
title: CentOS安装JDK
categories: [java]
tags: [java,centos,jdk]
description: 本文介绍在linux系统下安装JDK，这里选择在CentOS系统下实践。#摘要描述
---
```
![描述效果图](https://static.oschina.net/uploads/img/201705/20083146_ChqE.png "描述效果图")

### 结束语
上面只是一些关于主题的基础配置，更多详情配置参考[Next主题使用文档](http://theme-next.iissnan.com/)