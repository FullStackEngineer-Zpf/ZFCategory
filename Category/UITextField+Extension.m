//
//  UITextField+Extension.m
//  ShareMoney
//
//  Created by mac on 2017/7/27.
//  Copyright © 2017年 Exmart_zhang. All rights reserved.
//

#import "UITextField+Extension.h"
#import "Theme.h"
@implementation UITextField (Extension)
+(UITextField *)CreatTextFieldPlaceholder:(NSString *)placeholder{
    UITextField *textField  = [[UITextField alloc]init];
    textField.placeholder = placeholder;
//    textField.secureTextEntry = YES;
    textField.layer.cornerRadius = ViewCornerRadius;
    textField.layer.masksToBounds = YES;
    textField.layer.borderColor = bordLayerColor.CGColor;
    textField.layer.borderWidth = bordLayerWidth;
    textField.font = [UIFont systemFontOfSize:15];
    UILabel * psdView = [[UILabel alloc] initWithFrame:CGRectMake(30,0,15,26)];
    psdView.backgroundColor = [UIColor clearColor];
    textField.leftView = psdView;
    textField.leftViewMode = UITextFieldViewModeAlways;
   textField.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
    textField.textColor = UIColorFromRGBA(0x999999, 1.0);
    return textField;

}
@end
