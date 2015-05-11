/*******************************************************************************
 Copyright (C), 2013-2015, ZP
 File name: NSArray+ZPAddition.h
 Author: Joy (曾 平)
 E-mail: joykerl@yahoo.com
 Description:
 分类扩展
 History:
 2015-05-11
 Copyright information:
 Copyright (c) 2015年 ZP. All rights reserved.
 ********************************************************************************/

#import "NSArray+ZPAddition.h"

@implementation NSArray (ZPAddition)

- (NSString *)descriptionWithLocale:(id)locale
{
    NSMutableString *strM = [NSMutableString stringWithString:@"(\n"];
    
    [self enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        [strM appendFormat:@"\t%@, \n", obj];
    }];
    
    [strM appendString:@")"];
    
    return strM;
}

@end
