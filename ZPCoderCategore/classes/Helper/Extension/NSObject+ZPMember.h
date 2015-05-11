/*******************************************************************************
 Copyright (C), 2013-2015, ZP
 File name: NSObject+ZPMember.h
 Author: Joy (曾 平)
 E-mail: joykerl@yahoo.com
 Description:
 遍历
 History:
 2015-05-11
 Copyright information:
 Copyright (c) 2015年 ZP. All rights reserved.
 ********************************************************************************/

#import <Foundation/Foundation.h>
#import "ZPIvar.h"
#import "ZPMethod.h"

/**
 *  遍历所有类的block（父类）
 */
typedef void (^ZPClassesBlock)(Class c, BOOL *stop);

@interface NSObject (ZPMember)
/**
 *  遍历所有的成员变量
 */
- (void)enumerateIvarsWithBlock:(ZPIvarsBlock)block;

/**
 *  遍历所有的方法
 */
- (void)enumerateMethodsWithBlock:(ZPMethodsBlock)block;

/**
 *  遍历所有的类
 */
- (void)enumerateClassesWithBlock:(ZPClassesBlock)block;
@end
