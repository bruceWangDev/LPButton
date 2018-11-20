//
//  LPButton.m
//  LPButtonDemo
//
//  Created by brucewang on 2018/11/19.
//  Copyright © 2018 brucewang. All rights reserved.
//

#import "LPButton.h"

@interface LPButton ()

@end

@implementation LPButton

- (instancetype)initWithFrame:(CGRect)frame {
    
    self = [super initWithFrame:frame];
    
    if (self) {
        
        // 默认 文字和图片的间距是 0
        _space = 0.0f;
        // 默认的内边距为 8
        _delta = 8.0f;

        [self.titleLabel setTextAlignment:NSTextAlignmentCenter];

    }
    
    return self;
    
}

#pragma mark - set
- (void)setStyle:(LPButtonStyle)style {
    
    _style = style;

}

- (void)setSpace:(CGFloat)space {
    
    _space = space;
    
}

- (void)setDelta:(CGFloat)delta {
    
    _delta = delta;
    
}

#pragma mark -  重写 imageFrame and labelFrame
- (CGRect)imageRectForContentRect:(CGRect)contentRect {
    
    CGFloat imageX;
    CGFloat imageY;

    CGFloat imageW;
    CGFloat imageH;

    switch (_style) {
        case LPButtonStyleTop:{
         
            /*
             图片在上 文字在下
             首先 设置 image 的 h 为 (整个按钮高度 - 两个内边距之后) 的 0.65
             其次 设置 image 的 w 等于 image 的高度
             再者 设置 image 的 x 为 (整个按钮的宽度 - image 的宽度) / 2
             最后 设置 image 的 y 为 一个内边距
             image 是一个正方形
             
             同理 设置 titleLabelFrame 的时候:
             首先 设置 label 的 x 为 一个内边距
             其次 设置 label 的 y 为 (整个按钮高度 - 两个内边距之后) 的 0.65 + 一个内边距 + space
             再者 设置 label 的 w 为 整个按钮高度 - 两个内边距
             最后 设置 label 的 h 为 整个按钮的高度 - label 的 y - 一个内边距的值
             */
            imageH = (CGRectGetHeight(contentRect) - _delta * 2) * 0.65;
            imageW = imageH;
            
            imageX = (CGRectGetWidth(contentRect) - imageW) / 2;
            imageY = _delta;
            
        }break;
         
        case LPButtonStyleLeft:{
            
            /*
             图片在左，文字在右
             首先 设置 image 的 x 是 一个内边距
             其次 设置 image 的 y 是 一个内边距
             再者 设置 image 的 h 是 整个按钮高度 - 两个内边距
             最后 设置 image 的 w 等于 image 的高度
             image 是个正方形
             
             同理 设置 titleLableFrame 的时候:
             首先 设置 label 的 x 为 一个内边距 + (整个按钮的高度 - 两个内边距) + space
             其次 设置 label 的 y 是 一个内边距
             再者 设置 label 的 w 是 整个按钮宽度 - label 的起始位置 x - 一个内边距
             最后 设置 label 的 h 是 整个按钮高度 - 两个内边距
             */
            imageX = _delta;
            imageY = _delta;
            
            imageH = CGRectGetHeight(contentRect) - _delta * 2;
            imageW = imageH;
            
        }break;
            
        case LPButtonStyleRight:{
            
            /*
             图片在右，文字在左
             首先 设置 image 的 h 是 整个按钮高度 - 两个内边距
             其次 设置 image 的 w 等于 image 的高度
             再者 设置 image 的 x 是 整个按钮的宽度 - image 的宽度 - 一个内边距
             最后 设置 image 的 y 是 一个内边距
             image 是个正方形
             
             同理 设置 titleLableFrame 的时候:
             首先 设置 label 的 x 是 一个内边距
             其次 设置 label 的 y 是 一个内边距
             再者 设置 label 的 w 是 整个按钮宽度 - image 的宽度 - 两个内边距 - space
             最后 设置 label 的 h 是 整个按钮高度 - 两个内边距
             */
            imageH = CGRectGetHeight(contentRect) - _delta * 2;
            imageW = imageH;
            
            imageX = CGRectGetWidth(contentRect) - imageW - _delta;
            imageY = _delta;
            
        }break;
            
        case LPButtonStyleBottom:{
            
            /*
             图片在下 文字在上
             首先 设置 image 的 h 为 (整个按钮高度 - 两个内边距之后) 的 0.65
             其次 设置 image 的 w 等于 image 的高度
             再者 设置 image 的 x 为 (整个按钮的宽度 - image 的宽度) / 2
             最后 设置 image 的 y 为 (整个按钮高度 - 两个内边距之后) - image 的 h + 一个内边距 + space
             image 是一个正方形
             
             同理 设置 titleLabelFrame 的时候:
             首先 设置 label 的 x 为 一个内边距
             其次 设置 label 的 y 为 一个内边距
             再者 设置 label 的 w 为 整个按钮高度 - 两个内边距
             最后 设置 label 的 h 为 整个按钮的高度 - image 的 h - 两个内边距的值 - spcae
             */
            imageH = (CGRectGetHeight(contentRect) - _delta * 2) * 0.65;
            imageW = imageH;
            
            imageX = (CGRectGetWidth(contentRect) - imageW) / 2;
            imageY = (CGRectGetHeight(contentRect) - _delta * 2) - imageH + _delta  + _space;
            
        }break;
            
        default:
            break;
    }

    return CGRectMake(imageX, imageY, imageW, imageH);
}

- (CGRect)titleRectForContentRect:(CGRect)contentRect {
    
    CGFloat titleX;
    CGFloat titleY;
    
    CGFloat titleW;
    CGFloat titleH;
    
    switch (_style) {
        case LPButtonStyleTop:{
            
            titleX = _delta;
            titleY = (CGRectGetHeight(contentRect) - _delta * 2) * 0.65 + _delta + _space;
            
            titleW = CGRectGetWidth(contentRect) - _delta * 2;
            titleH = CGRectGetHeight(contentRect) - titleY - _delta;
            
        }break;
            
        case LPButtonStyleLeft:{
            
            titleX = _delta + (CGRectGetHeight(contentRect) - _delta * 2) + _space;
            titleY = _delta;
            
            titleW = CGRectGetWidth(contentRect) - titleX - _delta;
            titleH = CGRectGetHeight(contentRect) - _delta * 2;
            
        }break;
            
        case LPButtonStyleRight:{
            
            titleX = _delta;
            titleY = _delta;
            
            titleW = CGRectGetWidth(contentRect) - (CGRectGetHeight(contentRect) - _delta * 2) - _delta * 2 - _space;
            titleH = CGRectGetHeight(contentRect) - _delta * 2;
            
        }break;
            
        case LPButtonStyleBottom:{
            
            titleX = _delta;
            titleY = _delta;
            
            titleW = CGRectGetWidth(contentRect) - _delta * 2;
            titleH = CGRectGetHeight(contentRect) - (CGRectGetHeight(contentRect) - _delta * 2) * 0.65 - _delta * 2 - _space;
            
        }break;
            
        default:
            break;
    }

    return CGRectMake(titleX, titleY, titleW, titleH);
}

@end
