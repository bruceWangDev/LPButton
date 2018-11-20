# LPButton 
一款使用 frame 来设置图片和文字的按钮，适配约束和各种复杂布局。
包含设置按钮中图片和文字的间距，以及按钮整体内间距的功能。

[![Build Status](https://travis-ci.org/bruceWangDev/LPButton.svg?branch=master)](https://travis-ci.org/bruceWangDev/LPButton)
[![CocoaPods](https://img.shields.io/cocoapods/v/LPButton.svg)](http://cocoadocs.org/docsets/LPButton)
[![CocoaPods](https://img.shields.io/cocoapods/l/LPButton.svg)](https://github.com/bruceWangDev/LPButton/blob/master/LICENSE)
[![CocoaPods](https://img.shields.io/cocoapods/p/LPButton.svg)](http://cocoadocs.org/docsets/LPButton)
![CocoaPods](https://img.shields.io/cocoapods/dt/LPButton.svg)
[![GitHub stars](https://img.shields.io/github/stars/bruceWangDev/LPButton.svg?style=social&label=Star)](https://github.com/bruceWangDev/LPButton)


## 示例图:

![LPButton](https://github.com/bruceWangDev/LPButton/blob/master/LPButton.png)

## 前言

因为网络上的自定义图片和文字的按钮大部分是使用 UIEdgeInsets，但是在实际的应用中，结果总是不甚如人意，所以作者用 frame 实现了一个LPButton。

## 代码

- 方法一: [Cocoapods](https://cocoapods.org/) 导入 `pod 'LPButton'`

- 方法二: 导入`LPButton`文件夹到你的项目目录中(文件夹在LPButtonDemo/LPButton)

```
 LPButton * topBtn = [[LPButton alloc] init];
    topBtn.style = LPButtonStyleTop; // 设置按钮的样式
    topBtn.space = 5; // 图片和文字的间距
    topBtn.backgroundColor = [UIColor orangeColor];
    topBtn.frame = CGRectMake(100, 100, 100, 100);
    [topBtn setTitle:@"我是文字" forState:UIControlStateNormal];
    [topBtn setImage:[UIImage imageNamed:@"tab_order_selected"] forState:UIControlStateNormal];
    topBtn.titleLabel.backgroundColor = [UIColor redColor];
    topBtn.imageView.backgroundColor  = [UIColor yellowColor];
    [self.view addSubview:topBtn];
    
    // 约束不影响 LPButton 的使用
    [topBtn mas_makeConstraints:^(MASConstraintMaker *make) {
       
        make.top.mas_equalTo(self.view).offset(100);
        make.left.mas_equalTo(self.view).offset(100);
        make.width.mas_equalTo(100);
        make.height.mas_equalTo(100);
        
    }];
```

此处需要说明: 

1.图片和文字的间距 space 不设置的话默认为 0

2.按钮的内边距 delta 不设置的话默认为 8 

## Release
### Version 1.0.0 


## 联系 Support

* 发现问题请 Issues 我，谢谢:-)
* Email: brucewangdev@126.com
* Blog: https://brucewangdev.github.io/

## 授权 License

本项目采用 [MIT license](http://opensource.org/licenses/MIT) 开源，你可以利用采用该协议的代码做任何事情，只需要继续继承 MIT 协议即可。


