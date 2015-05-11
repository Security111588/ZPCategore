/*******************************************************************************
 Copyright (C), 2013-2015, ZP
 File name: ZPExtension.h
 Author: Joy (曾 平)
 E-mail: joykerl@yahoo.com
 Description:
 扩展
 History:
 2015-05-11
 Copyright information:
 Copyright (c) 2015年 ZP. All rights reserved.
 ********************************************************************************/

#ifndef ZPAddition_ZPExtension_h
#define ZPAddition_ZPExtension_h

#import "ZPTypeEncoding.h"
#import "NSObject+ZPCoding.h"
#import "NSObject+ZPMember.h"
#import "NSObject+ZPKeyValue.h"

#define ZPLogAllIvrs    \
- (NSString *)description   \
{   \
    return [self keyValues].description; \
}   \

#endif
