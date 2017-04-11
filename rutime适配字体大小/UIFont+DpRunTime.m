//
//  UIFont+DpRunTime.m
//  rutime适配字体大小
//
//  Created by dp on 17/4/11.
//  Copyright © 2017年 dp. All rights reserved.
//

#import "UIFont+DpRunTime.h"
#import <objc/runtime.h>
//适配iOS10字体变大的缘故
#define IOS_VERSION_10_OR_LATER (([[[UIDevice currentDevice]systemVersion]floatValue]>=10.0)? (YES):(NO))
//这里是已UI(6为基准的)
#define AdapationLabelFont(n) (IOS_VERSION_10_OR_LATER?((n-1)*([[UIScreen mainScreen]bounds].size.width/375.0f)):(n*([[UIScreen mainScreen]bounds].size.width/375.0f)))
@implementation UIFont (DpRunTime)
+(void)load{
    //获取替换后的类方法
    Method newMethod = class_getClassMethod([self class], @selector(adjustFont:));
    //获取替换前的类方法
    Method method = class_getClassMethod([self class], @selector(systemFontOfSize:));
    //然后交换类方法
    method_exchangeImplementations(newMethod, method);
    
    
    
    //获取替换后的类方法(boldSystemFontOfSize)
    Method newBoldMethod=class_getClassMethod([self class], @selector(adjustBoldFont:));
    //获取替换前的类方法(boldSystemFontOfSize)
    Method boldMethod=class_getClassMethod([self class], @selector(boldSystemFontOfSize:));
    //交换方法
    method_exchangeImplementations(newBoldMethod, boldMethod);
    
}


+(UIFont *)adjustFont:(CGFloat)fontSize{
    UIFont *newFont=nil;
    newFont = [UIFont adjustFont:AdapationLabelFont(fontSize)];
    return newFont;
}
+(UIFont *)adjustBoldFont:(CGFloat)fontSize{
    UIFont *newFont=nil;
    newFont = [UIFont adjustBoldFont:AdapationLabelFont(fontSize)];
    return newFont;
}
@end
