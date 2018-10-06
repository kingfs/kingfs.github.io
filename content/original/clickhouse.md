---
title: "试用Clickhouse"
date: 2018-10-06T15:14:17+08:00
draft: false
catagories: ["clickhouse", "database"]
tags: ["clickhouse", "database"]
---

# 说明
[Clickhouse]由俄罗斯yandex公司开发。专为在线数据分析而设计。Yandex是俄罗斯搜索引擎公司。官方提供的文档表名，[ClickHouse] 日处理记录数“十亿级”。

# Clickhouse Docker镜像
    # 服务器
    docker pull yandex/clickhouse-server
    # 客户端
    docker pull yandex/clickhouse-client
    # web客户端
    docker pull spoonest/clickhouse-tabix-web-client

# 服务启动
    # 启动服务器
    docker run -d --name some-clickhouse-server --ulimit nofile=262144:262144 yandex/clickhouse-server
    # 带自定义配置启动
    docker run -d --name some-clickhouse-server --ulimit nofile=262144:262144 -v /path/to/your/config.xml:/etc/clickhouse-server/config.xml yandex/clickhouse-server
    
    docker run -d --name clickhouse-server --ulimit nofile=262144:262144 -v /home/kingfs/opensource/clickhouse/users.xml:/etc/clickhouse-server/users.xml -v /home/kingfs/opensource/clickhouse/config.xml:/etc/clickhouse-server/config.xml -p 8123:8123 -p 9000:9000 -p 9009:9009 yandex/clickhouse-server

    #启动客户端
    docker run -it --rm --link some-clickhouse-server:clickhouse-server yandex/clickhouse-client --host clickhouse-server

    # 启动web客户端
    docker run -d -p 8080:80 -e USER='myuser' -e PASSWORD='mypass' spoonest/clickhouse-tabix-web-client

# Clickhouse server配置


# 数据库增删改查
    show database
    create database dbname

# 参考连接
1. [Clickhouse] github
2. [Clickhouse简介](http://www.linkedkeeper.com/detail/blog.action?bid=1117 "Clickhouse简介")
3. [Clickhouse golang开发接口](https://github.com/kshvakov/clickhouse "Clickhouse golang开发接口")

[Clickhouse]: https://github.com/yandex/ClickHouse "Clickhouse Github"