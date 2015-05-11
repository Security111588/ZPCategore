/*******************************************************************************
 Copyright (C), 2013-2015, ZP
 File name: ZPPopMenu.h
 Author: Joy (曾 平)
 E-mail: joykerl@yahoo.com
 Description:
 弹出菜单
 History:
 2015-05-11
 Copyright information:
 Copyright (c) 2015年 ZP. All rights reserved.
 ********************************************************************************/

#import <Foundation/Foundation.h>

@interface ZPPopMenu : NSObject

/**
 *  弹出一个菜单
 *
 *  @param view    菜单的箭头指向谁
 *  @param content 菜单里面的内容
 *  @param dismiss 菜单销毁的时候想做的事情
 */
//+ (void)popMenu:(UIView *)view content:(UIView *)content dismiss:(void(^)())dismiss;

/**
 *  弹出一个菜单
 *
 *  @param view    参照系
 *  @param rect    菜单的箭头指向的矩形框
 *  @param content 菜单里面的内容
 *  @param dismiss 菜单销毁的时候想做的事情
 */
+ (void)popFromRect:(CGRect)rect inView:(UIView *)view content:(UIView *)content dismiss:(void (^)())dismiss;

/**
 *  弹出一个菜单
 *
 *  @param view    菜单的箭头指向谁
 *  @param contentVc 菜单里面的内容
 *  @param dismiss 菜单销毁的时候想做的事情
 */
+ (void)popFromView:(UIView *)view contentVc:(UIViewController *)contentVc dismiss:(void (^)())dismiss;

/**
 *  弹出一个菜单
 *
 *  @param view    参照系
 *  @param rect    菜单的箭头指向的矩形框
 *  @param contentVc 菜单里面的内容
 *  @param dismiss 菜单销毁的时候想做的事情
 */
+ (void)popFromRect:(CGRect)rect inView:(UIView *)view contentVc:(UIViewController *)contentVc dismiss:(void (^)())dismiss;

@end
