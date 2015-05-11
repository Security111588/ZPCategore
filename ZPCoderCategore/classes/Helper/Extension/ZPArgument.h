/*******************************************************************************
 Copyright (C), 2013-2015, ZP
 File name: ZPArgument.h
 Author: Joy (曾 平)
 E-mail: joykerl@yahoo.com
 Description:
 封装方法参数
 History:
 2015-05-11
 Copyright information:
 Copyright (c) 2015年 ZP. All rights reserved.
 ********************************************************************************/

#import <Foundation/Foundation.h>
/**
 *  封装一个方法参数
 */
@interface ZPArgument : NSObject
/**
 *  参数索引
 */
@property (nonatomic, assign) int index;
/**
 *  参数类型
 */
@property (nonatomic, copy) NSString *type;
@end
