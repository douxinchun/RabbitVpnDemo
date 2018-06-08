# RabbitVpnDemo
a demo project for testing iOS network extension with NEkit
- 一个使用NEKit的iOS App Demo

Blog [初探iOS Network Extension](http://www.jianshu.com/p/5ed93a8a1449)


编译方法 
```
carthage update --no-use-binaries --platform ios
```

PS 如果遇到连接失败等问题，建议切分支到BasicTest（单纯建立vpn连接不引入nekit）验证是否能建立连接。
同时本工程需要99刀的开发者账号

遇到点击connect后没有反应（extension 运行崩溃）可以在Xcode - Devices 中拉取并检查设备崩溃日志来定位问题。

如果您受本文启发写了app甚至上架了Appstore，PLZ TELL ME.


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

