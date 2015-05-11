/*******************************************************************************
 Copyright (C), 2013-2015, ZP
 File name: ZPNumber.h
 Author: Joy (曾 平)
 E-mail: joykerl@yahoo.com
 Description:
 Number
 History:
 2015-05-11
 Copyright information:
 Copyright (c) 2015年 ZP. All rights reserved.
 ********************************************************************************/

#import <Foundation/Foundation.h>
#import <objc/message.h>
#import "ZPType.h"
#import "ZPArgument.h"

@interface ZPNumber : NSObject
{
    __weak id _srcObject;
    NSString * _name;
}
/**
 *  成员来源于哪个类（可能是父类）
 */
@property (nonatomic, assign) Class srcClass;
/**
 *  成员来源是否是Foundation框架
 */
@property (nonatomic, readonly, getter = isSrcClassFromFoundation) BOOL srcClassFromFoundation;
/**
 *  成员来源于哪个对象
 */
@property (nonatomic, weak, readonly) id srcObject;
/**
 *  成员名
 */
@property (nonatomic, copy, readonly) NSString *name;

/**
 *  初始化
 *
 *  @param srcObject 来源于哪个对象
 *
 *  @return 初始化好的对象
 */
- (instancetype)initWithSrcObject:(id)srcObject;

@end
