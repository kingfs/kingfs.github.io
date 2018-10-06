---
title: "试用Sourcegraph"
date: 2018-10-06T15:07:57+08:00
draft: false
catagories: ["git", "scm", "software"]
tags: ["git", "scm", "software"]
---

# 说明
[Sourcegraph] 是一款能够根据语义来把Web上的开源代码编入索引的代码搜索浏览工具。你可以从代码仓库和安装包甚至是函数里搜索代码，同时也可以直接点击被完全创建了链接的代码来阅读文档、跳转到变量定义或者马上找到可用的Demo。总而言之，你可以在你的web浏览器上完成这一切，而不需要配置任何编辑器。由[Sourcegraph]出品的这款Chrome插件，可以非常方便的浏览和搜索Github上的代码，持跨repository搜索、跳转到定义、查找引用等功能，宛若一个功能强大的IDE。核心功能如跳转到定义(Go-to-definition)——浏览文件或查看pull请求时，将鼠标悬停在代码上可以查看文档提示，单击即可跳转到定义、查找引用或全文搜索。

# Docker运行
    docker run --publish 7080:7080 --rm --volume ~/.sourcegraph/config:/etc/sourcegraph --volume ~/.sourcegraph/data:/var/opt/sourcegraph --volume /var/run/docker.sock:/var/run/docker.sock sourcegraph/server:2.11.2

# 参考连接
1. [Sourcegraph Github](https://github.com/sourcegraph "Sourcegraph Github")
2. [Sourcegraph入门](https://about.sourcegraph.com/docs/ "Sourcegraph入门")

[Sourcegraph]: https://sourcegraph.com/start "Sourcegraph官网"