/*******************************************************************************
 Copyright (C), 2013-2015, ZP
 File name: ZPFoundation.h
 Author: Joy (曾 平)
 E-mail: joykerl@yahoo.com
 Description:
 类框架
 History:
 2015-05-11
 Copyright information:
 Copyright (c) 2015年 ZP. All rights reserved.
 ********************************************************************************/

#import <Foundation/Foundation.h>

static NSArray *_foundationClasses;

@interface ZPFoundation : NSObject
+ (BOOL)isClassFromFoundation:(Class)class;
@end
