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

#import "ZPNumber.h"
#import "ZPExtension.h"
#import "ZPFoundation.h"
#import "ZPConst.h"

@implementation ZPNumber

/**
 *  初始化
 *
 *  @param srcObject 来源于哪个对象
 *
 *  @return 初始化好的对象
 */
- (instancetype)initWithSrcObject:(id)srcObject
{
    if (self = [super init]) {
        _srcObject = srcObject;
    }
    
    return self;
}

- (void)setSrcClass:(Class)srcClass
{
    _srcClass = srcClass;
    ZPAssertParamNotNil(srcClass);
    _srcClassFromFoundation = [ZPFoundation isClassFromFoundation:srcClass];
}

ZPLogAllIvrs
@end
