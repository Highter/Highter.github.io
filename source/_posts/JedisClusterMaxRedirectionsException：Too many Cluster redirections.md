---
title: JedisClusterMaxRedirectionsException：Too many Cluster redirections
date: 2017-07-23 21:50:58
categories: [redis]
tags: [redis]
description: 最近使用java项目测试redis集群，遇到报错“JedisClusterMaxRedirectionsException：Too many Cluster redirections”。
---

在测试redis集群的时候遇到错误： 
**redis.clients.jedis.exceptions.JedisClusterMaxRedirectionsException: Too many Cluster redirections?**

**错误原因：** 
创建redis集群的时候使用的命令是：./redis-trib.rb create --replicas 1 127.0.0.1:7001 127.0.0.1:7002  127.0.0.1:7003 127.0.0.1:7004  127.0.0.1:7005  127.0.0.1:7006

但是由于Java客户端在集群之外所以是这样写的：
```java
    @Test
	public void redisTest88(){

		HashSet<HostAndPort> nodes = new HashSet<HostAndPort>();
		boolean add = nodes.add(new HostAndPort("192.168.11.88", 7000));
		nodes.add(new HostAndPort("192.168.11.88", 7001));
		nodes.add(new HostAndPort("192.168.11.88", 7002));
		nodes.add(new HostAndPort("192.168.11.88", 7003));
		nodes.add(new HostAndPort("192.168.11.88", 7004));
		nodes.add(new HostAndPort("192.168.11.88", 7005));
		nodes.add(new HostAndPort("192.168.11.88", 7006));
		JedisCluster cluster = new JedisCluster(nodes);
		System.out.println("cluster:"+cluster);
		String string = cluster.get("key1");
		System.out.println(string);
		try {
			if(cluster != null){
				cluster.close();
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

```
host地址不匹配，导致Too many Cluster redirections 

**解决方法：** 
1)将每个节点下aof、rdb、nodes.conf本地备份文件删除； 
2)启动所有redis节点； 
3)重新构建集群使用：./redis-trib.rb create --replicas 1 192.168.11.88:7001 192.168.11.88:7002  192.168.11.88:7003  192.168.11.88:7004  192.168.11.88:7005  192.168.11.88:7006 