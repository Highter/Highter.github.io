---
title: sql批量插入-存在id相同则更新数据
date: 2017-05-04
categories: [mysql]
tags: [mysql,sql,数据库]
description: sql写得好可以省很多事情，让我们从sql抓起吧！
---
### 建表语句 
``` sql
SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `a` int(11) NOT NULL,
  `b` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`a`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

```

### 插入测试数据 
```sql
INSERT INTO  USER VALUES (1,'a'),(2,'b'),(3,'c');
```
查看结果：  
```sql
SELECT * from USER ;
```
![输入图片说明](https://static.oschina.net/uploads/img/201705/04200821_2T1X.png "在这里输入图片标题")  

### 插入存在id的测试数据 
```sql
INSERT INTO  USER VALUES (1,'a'),(2,'b'),(3,'c'),(4,'d') ON DUPLICATE KEY UPDATE b='test';
```
查看结果：  
```sql
SELECT * from USER ;
```
![输入图片说明](https://static.oschina.net/uploads/img/201705/04200928_uXIk.png "在这里输入图片标题")  

到此，我们已经可以成功看到测试结果，我们已经做到了 在sql批量插入时候，存在id相同则更新数据。