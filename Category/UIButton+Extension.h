//
//  UIButton+Extension.h
//  ShareMoney
//
//  Created by mac on 2017/7/1.
//  Copyright © 2017年 Exmart_zhang. All rights reserved.
//

#import <UIKit/UIKit.h>
//按钮中图片的位置
typedef NS_ENUM(NSInteger,UIButtonImageAlignment) {
    ImageAlignmentTop=0,
    ImageAlignmentLeft,
    ImageAlignmentBottom,
    ImageAlignmentRight,
};
@interface UIButton (Extension)
+ (UIButton *)creatCustomBtnTitle:(NSString *)btnTitle andBtnColor:(UIColor *)btnColor andBgColor:(UIColor *)btnBgColor andBtnFont:(CGFloat)btnFont;


+ (UIButton *)creatSystemBtnTitle:(NSString *)btnTitle;

-(void)setimageAlignment:(UIButtonImageAlignment)imageAlignment andSpace:(float)space;//space 间距
@end
