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

#import "ZPType.h"
#import "ZPExtension.h"
#import "ZPFoundation.h"
#import "ZPConst.h"

@implementation ZPType

- (instancetype)initWithCode:(NSString *)code
{
    if (self = [super init]) {
        self.code = code;
    }
    return self;
}

/** 类型标识符 */
- (void)setCode:(NSString *)code
{
    _code = code;
    
    ZPAssertParamNotNil(code);
    
    if (code.length == 0 || [code isEqualToString:ZPTypeSEL] ||
        [code isEqualToString:ZPTypeIvar] ||
        [code isEqualToString:ZPTypeMethod]) {
        _KVCDisabled = YES;
    } else if ([code hasPrefix:@"@"] && code.length > 3) {
        // 去掉@"和"，截取中间的类型名称
        _code = [code substringFromIndex:2];
        _code = [_code substringToIndex:_code.length - 1];
        _typeClass = NSClassFromString(_code);
        
        _fromFoundation = [ZPFoundation isClassFromFoundation:_typeClass];
    }
}

ZPLogAllIvrs
@end
