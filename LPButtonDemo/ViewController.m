//
//  ViewController.m
//  LPButtonDemo
//
//  Created by brucewang on 2018/11/19.
//  Copyright © 2018 brucewang. All rights reserved.
//

#import "ViewController.h"
#import "LPButton.h"
#import "Masonry.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {

    [super viewDidLoad];

    [self creatUI];
    
}

#pragma mark - 创建 UI
- (void)creatUI {
    
    /*
     写在这里:
     选择 Top  或者 Bottom 的话，按钮最好是正方形，或者要有一定的高度，不然显示会很难看
     选择 Left 或者 Right  的话，按钮的高度可以小一点，和普通的按钮一样就好了
     */
    
    LPButton * topBtn = [[LPButton alloc] init];
    topBtn.style = LPButtonStyleTop;
//    topBtn.space = 5;
    topBtn.backgroundColor = [UIColor orangeColor];
//    topBtn.frame = CGRectMake(100, 100, 100, 100);
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
    
    LPButton * bottomBtn = [[LPButton alloc] init];
    bottomBtn.style = LPButtonStyleBottom;
    bottomBtn.backgroundColor = [UIColor orangeColor];
    bottomBtn.frame = CGRectMake(100, 240, 100, 100);
    [bottomBtn setTitle:@"我是文字" forState:UIControlStateNormal];
    [bottomBtn setImage:[UIImage imageNamed:@"tab_order_selected"] forState:UIControlStateNormal];
    bottomBtn.titleLabel.backgroundColor = [UIColor redColor];
    bottomBtn.imageView.backgroundColor  = [UIColor yellowColor];
    [self.view addSubview:bottomBtn];
    
    LPButton * leftBtn = [[LPButton alloc] init];
//    leftBtn.space = 5;
    leftBtn.style = LPButtonStyleLeft;
    leftBtn.backgroundColor = [UIColor orangeColor];
    leftBtn.frame = CGRectMake(240, 150, 120, 40);
    [leftBtn setTitle:@"我是文字" forState:UIControlStateNormal];
    [leftBtn setImage:[UIImage imageNamed:@"tab_order_selected"] forState:UIControlStateNormal];
    leftBtn.titleLabel.backgroundColor = [UIColor redColor];
    leftBtn.imageView.backgroundColor  = [UIColor yellowColor];
    [self.view addSubview:leftBtn];
    
    LPButton * rightBtn = [[LPButton alloc] init];
    rightBtn.style = LPButtonStyleRight;
    rightBtn.backgroundColor = [UIColor orangeColor];
    rightBtn.frame = CGRectMake(240, 240, 120, 40);
    [rightBtn setTitle:@"我是文字" forState:UIControlStateNormal];
    [rightBtn setImage:[UIImage imageNamed:@"tab_order_selected"] forState:UIControlStateNormal];
    rightBtn.titleLabel.backgroundColor = [UIColor redColor];
    rightBtn.imageView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:rightBtn];
    
}

@end
