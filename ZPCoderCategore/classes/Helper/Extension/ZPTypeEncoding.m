/*******************************************************************************
 Copyright (C), 2013-2015, ZP
 File name: ZPTypeEncoding.h
 Author: Joy (曾 平)
 E-mail: joykerl@yahoo.com
 Description:
 数据类型
 History:
 2015-05-11
 Copyright information:
 Copyright (c) 2015年 ZP. All rights reserved.
 ********************************************************************************/

#import <UIKit/UIKit.h>

/**
 *  成员变量类型（属性类型）
 */
NSString *const ZPTypeInt = @"i";
NSString *const ZPTypeFloat = @"f";
NSString *const ZPTypeDouble = @"d";
NSString *const ZPTypeLong = @"q";
NSString *const ZPTypeLongLong = @"q";
NSString *const ZPTypeChar = @"c";
NSString *const ZPTypeBOOL = @"c";
NSString *const ZPTypePointer = @"*";

NSString *const ZPTypeIvar = @"^{objc_ivar=}";
NSString *const ZPTypeMethod = @"^{objc_method=}";
NSString *const ZPTypeBlock = @"@?";
NSString *const ZPTypeClass = @"#";
NSString *const ZPTypeSEL = @":";
NSString *const ZPTypeId = @"@";

/**
 *  返回值类型(如果是unsigned，就是大写)
 */
NSString *const ZPReturnTypeVoid = @"v";
NSString *const ZPReturnTypeObject = @"@";
