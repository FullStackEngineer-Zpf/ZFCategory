//
//  UILabel+Extension.m
//  ShareMoney
//
//  Created by mac on 2017/7/8.
//  Copyright © 2017年 Exmart_zhang. All rights reserved.
//

#import "UILabel+Extension.h"

@implementation UILabel (Extension)
+ (UILabel *)creatLabelWithColor:(UIColor *)labelColor andlabelFont:(CGFloat)labelFont{
    UILabel *label = [[UILabel alloc]init];
    label.textColor = labelColor;
    label.font = [UIFont systemFontOfSize:labelFont];
    return label;
}

@end
