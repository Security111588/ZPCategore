/*******************************************************************************
 Copyright (C), 2013-2015, ZP
 File name: ZPMethod.h
 Author: Joy (曾 平)
 E-mail: joykerl@yahoo.com
 Description:
 Method
 History:
 2015-05-11
 Copyright information:
 Copyright (c) 2015年 ZP. All rights reserved.
 ********************************************************************************/

#import "ZPNumber.h"
/**
 *  封装一个方法
 */
@interface ZPMethod : ZPNumber
/**
 *  方法
 */
@property (nonatomic, assign) Method method;
/**
 *  方法名
 */
@property (nonatomic, assign, readonly) SEL selector;
/**
 *  所有的参数（都是ZPArgument对象）
 */
@property (nonatomic, strong,readonly) NSArray *arguments;
/**
 *  返回值类型
 */
@property (nonatomic, copy, readonly) NSString *returnType;

/**
 *  初始化
 *
 *  @param method    方法
 *  @param srcObject 哪个对象方法
 *
 *  @return 初始化好的对象
 */
- (instancetype)initWithMethod:(Method)method srcObject:(id)srcObject;

@end

/**
 *  遍历方法用的block
 *
 *  @param method 方法的封装对象
 *  @param stop   YES代表停止遍历，NO代表继续遍历
 */
typedef void (^ZPMethodsBlock) (ZPMethod *method, BOOL *stop);
