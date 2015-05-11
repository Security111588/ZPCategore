/*******************************************************************************
 Copyright (C), 2013-2015, ZP
 File name: NSDictionary+ZPAddition.h
 Author: Joy (曾 平)
 E-mail: joykerl@yahoo.com
 Description:
 分类扩展
 History:
 2015-05-11
 Copyright information:
 Copyright (c) 2015年 ZP. All rights reserved.
 ********************************************************************************/

#import "NSDictionary+ZPAddition.h"

@implementation NSDictionary (ZPAddition)

- (NSString *)descriptionWithLocale:(id)locale
{
    // 在iOS中，如果数据包含在数组或者字典中，直接打印看不到结果，所以需要重写此方法，修正此BUG
    NSMutableString *strM = [NSMutableString stringWithString:@"{\n"];
    
    [self enumerateKeysAndObjectsUsingBlock:^(id key, id obj, BOOL *stop) {
        [strM appendFormat:@"\t%@ = %@", key, obj];
    }];
    
    [strM appendString:@"}"];
    return strM;
}

@end
