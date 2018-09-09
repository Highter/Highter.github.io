---
title: mac常用命令
date: 2018-09-09 10:58:24
categories: [mac]
tags: [mac]
description: 记录在mac上常用的命令。
---

### 快捷键

- 光标左移：`Ctrl` + `B`
- 光标右移：`Ctrl` + `F`
- 光标至行首：`Ctrl` + `A`
- 光标至行尾：`Ctrl` + `E`
- 删除至行尾：`Ctrl` + `K`
- 清屏：`Ctrl` + `L`
- 搜索历史命令：`Ctrl` + `R`
- 选中即复制，单击滚轮粘贴

### 命令

#### $ man

```
$ man mkdir
```

作用：查阅某个命令的手册页，`q` 退出
英文：Manual pages

#### $ sudo

作用：通过安全的方式使用特殊的权限运行程序（通常为系统的超级用户）
英文：substitute user do 或 superuser do

#### $ cd

作用：用于改变工作目录
英文：change directory

#### $ mkdir

作用：新建目录
英文：make directories

#### $ pwd

作用：输出当前工作目录的绝对路径
英文：print working directory

#### $ ls

作用：列出文件
英文：list segment

#### $ curl

作用：利用 URL 语法在命令行下工作的文件传输工具
英文：**[kɝl]** 或 **[kə:l]**
使用：

```
$ curl www.foo.com  #查看网站源码
$ curl -o [文件名] www.sina.com  #下载
```

#### $ cat
参数：`-n` 对所有行显示行号
使用：
```
#显示文件全部内容
$ cat foo.txt

#创建文件并进入编辑模式
$ cat > filename
#对文件追加内容
$ cat >> filename

#合并文件内容
$ cat foo.txt bar.txt > foobar.txt
```

#### more

功能：类似 `cat`，以一页一页的显示方便使用者逐页阅读
使用：下一页按 `Space`，上一页按 `b`，退出 `q`，vi 编辑器模式按 `v`，

#### $ less

功能：类似 `more`，
使用：退出 `Q`

#### $ which

作用：在环境变量 `$PATH` 设置的目录里查找符合条件的文件
使用：

```
$ which bash  #输出 /bin/bash 
```

#### $ file

作用：辨识该文件的类型
参数：`-b` 不显示文件名称
使用：

```
$ file foo.txt
#输出 foo.txt: UTF-8 Unicode text
```

#### who

作用：显示系统中有哪些使用者

#### $ cp

作用：复制文件或目录
参数：`-r` 若源文件是一个目录文件，此时将复制该目录下所有的子目录和文件
使用：

```
$ cp –r foo/ newfoo
#将当前目录"foo/"下的所有文件复制到新目录"newfoo"下
#注意：用户使用该指令复制目录时，必须使用参数"-r"
```

#### $ mv

作用：为文件或目录改名、或将文件或目录移入其它位置
使用：

```
$ mv foo bar  #将文件foo更名为bar
$ mv foo/ bar  #将foo目录放入bar目录中
#如果bar目录不存在，则该命令将foo改名为bar
```

#### $ rm

作用：删除一个文件或者目录，且无法恢复
参数：`-r` 删除目录时必需参数；`-i` 删除前逐一询问确认
使用：

```
$ rm  foo.txt  #删除一般文件  
$ rm  -r  foofolder  #删除目录
$ rm  -r  *  #删除当前目录下的所有文件及目录
```

#### $ open

作用：使用 Finder 打开文件目录或程序
使用：

```
$ open /Applications/Safari.app/  #打开应用
$ open .  #打开当前目录。
```

#### $ history

作用：显示指定数目的历史命令
使用：

```
$ history  #列出所有历史命令
$ history 10 #列出最近的10条历史命令
```

#### $ touch

作用：修改文件或者目录的时间属性，若文件不存在，新建文件
使用：

```
$ ls -l testfile  #使用ls命令查看文件的属性  
$ touch testfile  #修改文件时间属性为当前系统时间  
$ ls -l testfile  #查看文件的时间属性 
```

#### $ lsof
```
$ lsof -i:9000 #使用lsof查看端口占用情况
```