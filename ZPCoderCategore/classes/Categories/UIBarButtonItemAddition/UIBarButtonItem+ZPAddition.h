/*******************************************************************************
 Copyright (C), 2013-2015, ZP
 File name: UIBarButtonItem+ZPAddition.h
 Author: Joy (曾 平)
 E-mail: joykerl@yahoo.com
 Description:
 分类扩展
 History:
 2015-05-11
 Copyright information:
 Copyright (c) 2015年 ZP. All rights reserved.
 ********************************************************************************/

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (ZPAddition)

/**
 *  创建自定义barButtonItem
 *
 *  @param bgImageName 背景图片名字
 *  @param target    点击事件的监听者
 *  @param action    点击事件的监听方法
 *
 *  @return item
 */
- (UIBarButtonItem *)initWithNorImage:(NSString *)norimage higImage:(NSString *)higImage title:(NSString *)title target:(id)target action:(SEL)action;

+ (instancetype)itemWithNorImage:(NSString *)norimage higImage:(NSString *)higImage title:(NSString *)title target:(id)target action:(SEL)action;

@end
