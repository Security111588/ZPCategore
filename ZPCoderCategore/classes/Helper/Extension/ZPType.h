/*******************************************************************************
 Copyright (C), 2013-2015, ZP
 File name: ZPType.h
 Author: Joy (曾 平)
 E-mail: joykerl@yahoo.com
 Description:
 类型
 History:
 2015-05-11
 Copyright information:
 Copyright (c) 2015年 ZP. All rights reserved.
 ********************************************************************************/

#import <Foundation/Foundation.h>

@interface ZPType : NSObject
/**
 *  类型标识符
 */
@property (nonatomic, copy) NSString *code;
/**
 *  对象类型（如果是基本数据类型，此值为nil）
 */
@property (nonatomic, assign, readonly) Class typeClass;
/**
 *  类型是否来自于Foundation框架，比如NSString、NSArray
 */
@property (nonatomic, readonly, getter = isFromFoundation) BOOL fromFoundation;
/**
 *  类型是否支持KVC
 */
@property (nonatomic, readonly, getter=isKVCDisabled) BOOL KVCDisabled;

/**
 *  初始化一个类型对象
 *
 *  @param code 类型标识符
 */
- (instancetype)initWithCode:(NSString *)code;

@end
