/*******************************************************************************
 Copyright (C), 2013-2015, ZP
 File name: CALayer+ZPAddition.h
 Author: Joy (曾 平)
 E-mail: joykerl@yahoo.com
 Description:
 CALayer分类
 History:
 2015-05-11
 Copyright information:
 Copyright (c) 2015年 ZP. All rights reserved.
 ********************************************************************************/

#import <QuartzCore/QuartzCore.h>

@interface CALayer (ZPAddition)

/**
 *  暂停动画
 */
- (void)pauseAnimation;

/**
 *  恢复到默认状态
 */
- (void)recoverToDefaultState;

/**
 *  设置动画执行过程
 *
 *  @param timeProgress 时间间隔
 */
- (void)setTimeProgress:(CFTimeInterval)timeProgress;

/**
 *  从某个动画过程继续执行动画
 *
 *  @param timeProgress 动画执行的起点
 */
- (void)continueAnimationWithTimeProgress:(CFTimeInterval)timeProgress;

/**
 *  从某个动画过程翻转动画
 *
 *  @param timeProgress 动画翻转的起点
 *  @param duration    执行的时间间隔
 */
- (void)continueReverseAnimationWithTimeProgress:(CFTimeInterval)timeProgress animationDuration:(CFTimeInterval)duration;

@end
