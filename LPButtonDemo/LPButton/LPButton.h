//
//  LPButton.h
//  LPButtonDemo
//
//  Created by brucewang on 2018/11/19.
//  Copyright © 2018 brucewang. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef NS_ENUM(NSInteger, LPButtonStyle){
    LPButtonStyleTop,       // 图片在上，文字在下
    LPButtonStyleLeft,      // 图片在左，文字在右
    LPButtonStyleRight,     // 图片在右，文字在左
    LPButtonStyleBottom,    // 图片在下，文字在上
};

@interface LPButton : UIButton

/**
 LPButton的样式(Top、Left、Right、Bottom)
 */
@property (nonatomic, assign) LPButtonStyle style;

/**
 图片和文字的间距
 */
@property (nonatomic, assign) CGFloat space;

/**
 整个LPButton(包含ImageV and titleV)的内边距
 */
@property (nonatomic, assign) CGFloat delta;

@end

NS_ASSUME_NONNULL_END
