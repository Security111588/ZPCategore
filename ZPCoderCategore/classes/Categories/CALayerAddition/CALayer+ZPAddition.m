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

#import "CALayer+ZPAddition.h"

@implementation CALayer (SLAddition)

- (void)pauseAnimation
{
    self.speed = 0;
    self.timeOffset = 0;
}

- (void)recoverToDefaultState
{
    self.speed = 1;
    self.timeOffset = 0;
    self.beginTime = 0;
}

- (void)setTimeProgress:(CFTimeInterval)timeProgress
{
    self.timeOffset = timeProgress;
}

- (void)continueAnimationWithTimeProgress:(CFTimeInterval)timeProgress
{
    self.beginTime = [self convertTime:CACurrentMediaTime() fromLayer:nil] - timeProgress;
}

- (void)continueReverseAnimationWithTimeProgress:(CFTimeInterval)timeProgress animationDuration:(CFTimeInterval)duration
{
    [self recoverToDefaultState];
    
    self.beginTime = [self convertTime:CACurrentMediaTime() fromLayer:nil] - (duration);
    self.timeOffset = duration;
    self.speed = -1;
}

@end
