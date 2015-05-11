/*******************************************************************************
 Copyright (C), 2013-2015, ZP
 File name: NSObject+ZPCoding.h
 Author: Joy (曾 平)
 E-mail: joykerl@yahoo.com
 Description:
 编码解码
 History:
 2015-05-11
 Copyright information:
 Copyright (c) 2015年 ZP. All rights reserved.
 ********************************************************************************/

#import "NSObject+ZPCoding.h"
#import "NSObject+ZPMember.h"

@implementation NSObject (ZPCoding)

/**
 *  编码（将对象写入文件中）
 */
- (void)encode:(NSCoder *)encoder
{
    [self enumerateIvarsWithBlock:^(ZPIvar *ivar, BOOL *stop) {
        if (ivar.isSrcClassFromFoundation) return;
        [encoder encodeObject:ivar.value forKey:ivar.name];
    }];
}

/**
 *  解码（从文件中解析对象）
 */
- (void)decode:(NSCoder *)decoder
{
    [self enumerateIvarsWithBlock:^(ZPIvar *ivar, BOOL *stop) {
        if (ivar.isSrcClassFromFoundation) return;
        ivar.value = [decoder decodeObjectForKey:ivar.name];
    }];
}
@end