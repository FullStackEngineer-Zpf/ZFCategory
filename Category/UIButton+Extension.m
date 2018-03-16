//
//  UIButton+Extension.m
//  ShareMoney
//
//  Created by mac on 2017/7/1.
//  Copyright © 2017年 Exmart_zhang. All rights reserved.
//

#import "UIButton+Extension.h"
#import "Theme.h"
@implementation UIButton (Extension)
+ (UIButton *)creatCustomBtnTitle:(NSString *)btnTitle andBtnColor:(UIColor *)btnColor andBgColor:(UIColor *)btnBgColor andBtnFont:(CGFloat)btnFont{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:btnTitle forState:UIControlStateNormal];
    [btn setTitleColor:btnColor forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:btnFont];
    btn.backgroundColor = btnBgColor;
    return btn;

}


+(UIButton *)creatSystemBtnTitle:(NSString *)btnTitle{
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    [btn setTitle:btnTitle forState:UIControlStateNormal];
    [btn setTitleColor:btnTitleColor forState:UIControlStateNormal];
    btn.titleLabel.font = [UIFont systemFontOfSize:btnTitleFont];
    btn.backgroundColor = btnBackgroundColor;
    btn.layer.cornerRadius = btnCornerRadius;
    btn.layer.masksToBounds = YES;
    return btn;

}

-(void)setimageAlignment:(UIButtonImageAlignment)imageAlignment andSpace:(float)space{
    CGFloat titleW= self.titleLabel.intrinsicContentSize.width;
    CGFloat titleH = self.titleLabel.intrinsicContentSize.height;
    CGFloat imageW = self.imageView.frame.size.width;
    CGFloat imageH = self.imageView.frame.size.height;
    // 这种是居中
    //self.titleEdgeInsets = UIEdgeInsetsMake(0,-imageW, 0, 0);
    //self.imageEdgeInsets = UIEdgeInsetsMake(0, 0, 0, -titleW);
    
    switch (imageAlignment) {
        case ImageAlignmentTop:
            //文字距离上边框的距离增加imageView的高度，距离左边框减少imageView的宽度，距离下边框和右边框距离不变
            self.titleEdgeInsets = UIEdgeInsetsMake(imageH+space/2,-imageW, 0, 0);
            //图片距离右边框距离减少图片的宽度，其它不边
            self.imageEdgeInsets = UIEdgeInsetsMake(0, 0, titleH+space/2, -titleW);
            break;
        case ImageAlignmentLeft:
            self.titleEdgeInsets = UIEdgeInsetsMake(0,space/2, 0, 0);
            self.imageEdgeInsets = UIEdgeInsetsMake(0, 0,0,space/2);
            break;
        case ImageAlignmentBottom:
            self.titleEdgeInsets = UIEdgeInsetsMake(0,-imageW, imageH+space/2, 0);
            self.imageEdgeInsets = UIEdgeInsetsMake(titleH+space/2, 0, 0,-titleW);
            break;
        case ImageAlignmentRight:
            //文字左边减少图片的宽度，右边增加图片的宽度
            self.titleEdgeInsets = UIEdgeInsetsMake(0,-imageW-space/2, 0, imageW+space/2);
            self.imageEdgeInsets = UIEdgeInsetsMake(0, titleW+space/2, 0, -titleW-space/2);
            break;
        default:
            break;
    }
}
@end
