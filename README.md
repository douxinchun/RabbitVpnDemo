# RabbitVpnDemo
a demo project for testing iOS network extension with NEkit
- 一个使用NEKit的iOS App Demo

Blog [初探iOS Network Extensio](http://www.jianshu.com/p/5ed93a8a1449)


编译方法 
```
carthage update --no-use-binaries --platform ios
```

如果遇到
```
/Volumes/DOC/Codes/rabbitSwift2.3/Carthage/Checkouts/NEKit/src/Crypto/HMAC.swift:2:8: error: could not build Objective-C module 'CommonCrypto'
```
请根据log修改module.map中 sdk版本为相应Xcode模拟器版本。例如

```
  header "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS10.3.sdk/usr/include/CommonCrypto//CommonCrypto.h"
  header "/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS10.3.sdk/usr/include/CommonCrypto//CommonRandom.h"
```

如果您受本文启发写了app甚至上架了Appstore，告诉我一声好吗？

# 赞助
- 支付宝

  ![](http://ww4.sinaimg.cn/large/006tNc79gy1ffd90knw0bj304q04kwet.jpg)
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
