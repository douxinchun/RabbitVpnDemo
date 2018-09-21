# RabbitVpnDemo
a demo project for testing iOS network extension with NEkit
- 一个使用NEKit的iOS App Demo

在https://github.com/yichengchen/RabbitVpnDemo 的基础上做出如下修改:

1. NEKit 直接引入了源码,便于跟踪学习

2. 在Xcode10 Swift4.2 上编译通过
3. 准备增加Server UI 配置界面


编译方法 
```
carthage update --no-use-binaries --platform ios
```

建立连接前的配置,

VpnManager.swift 中的 VpnManager 下的setRulerConfig,依次配置自己的SOCK5 Server的信息:

```swift
conf["ss_address"] = "xx.xx.xx.xx" as AnyObject?
conf["ss_port"] = 10086 as AnyObject?
conf["ss_method"] = "AES256CFB" as AnyObject? // 大写 没有横杠 看Extension中的枚举类设定 否则引发fatal error
conf["ss_password"] = "your_password" as AnyObject?
```



遇到点击connect后没有反应（extension 运行崩溃）可以在Xcode - Devices 中拉取并检查设备崩溃日志来定位问题。


# License
MIT License

Copyright (c) 2017 RabbitVpnDemo

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

