---
title: "使用hugo重建个人博客系统"
date: 2018-09-22T23:42:35+08:00
draft: false
catagories: ["hugo"]
tags: ["blog", "hugo"]
---

相关软件版本
===
|软件|版本|说明|
|---|---|---|
|[MacOS] |high sierra 10.13.6|操作系统|
|[Visual studio code]| 1.27.2|文本编辑器(强烈推荐)|
|[Hugo]|v0.49-DEV|静态网站生成器|
|[Golang]|1.11|hugo源码编译器|
|[Git]|2.8.4 (Apple Git-73)|博客文档版本管理工具|

4个小时的经验
===
1. [hugo]语法版本更新，导致以前到代码不能用了
2. 之前都是简单配置[hugo]，这次准备下决心好好整一下博客，对[hugo]的功能也需要进一步了解
3. 由于[hugo] v0.49要用[golang] 1.11版的go modules功能，因此顺手升级[golang]
4. 长时间不用[markdown]，明显手生了很多，还是得多写多练了
5. 顺便了解了一下[toml]语法
6. 重新选择主题，先运行起来自己的博客，摸清楚[hugo]主题的编写规则后，重新制作主题
7. 目前主题是基于[hugo-coder](https://github.com/luizdepra/hugo-coder)主题进行修改，后续可能会进行大的调整，还是非常感谢作者编写的主题。

[MacOS]: https://www.apple.com/cn/ "苹果官网"
[Visual studio code]: https://code.visualstudio.com/ "牛逼的编辑器"
[Git]: https://git-scm.com/ "牛逼的版本控制软件"
[hugo]: https://github.com/gohugoio/hugo "hugo link"
[golang]: https://github.com/golang/go "go link"
[markdown]: https://www.appinn.com/markdown "markdown中文教程"
[toml]: https://github.com/toml-lang/toml/blob/master/versions/en/toml-v0.4.0.md "toml语法"