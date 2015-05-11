/*******************************************************************************
 Copyright (C), 2013-2015, ZP
 File name: Singleton
 Author: Joy (曾 平)
 E-mail: joykerl@yahoo.com
 Description:
 单例
 History:
 2015-05-11
 Copyright information:
 Copyright (c) 2015年 ZP. All rights reserved.
 ********************************************************************************/

#ifndef SLModelProject_Singleton_h
#define SLModelProject_Singleton_h

#define singletonInterface(className)   + (instancetype)shared##className;

#if __has_feature(objc_arc)
/**
 *  ARC Version
 */
#define singletonImplementation(className)  \
static id instance; \
+ (instancetype)allocWithZone:(struct _NSZone *)zone {  \
    static dispatch_once_t onceToken;   \
    dispatch_once(&onceToken, ^{    \
        if (instance == nil) {  \
            instance = [super allocWithZone:zone];  \
        }   \
    }); \
    return instance;    \
}   \
+ (instancetype)shared##className { \
    static dispatch_once_t onceToken;   \
    dispatch_once(&onceToken, ^{    \
        instance = [[self alloc] init]; \
    }); \
    return instance;    \
}   \
- (id)copyWithZone:(NSZone *)zone { \
    return instance;    \
}
#else
/**
 *  MRC Version
 */
#define singletonImplementation(className)  \
static id instance; \
+ (instancetype)allocWithZone:(struct _NSZone *)zone {  \
    static dispatch_once_t onceToken;   \
    dispatch_once(&onceToken, ^{    \
        if (instance == nil) {  \
            instance = [super allocWithZone:zone];  \
        }   \
    }); \
    return instance;    \
}   \
+ (instancetype)shared##className { \
    static dispatch_once_t onceToken;   \
    dispatch_once(&onceToken, ^{    \
        instance = [[self alloc] init]; \
    }); \
    return instance;    \
}   \
- (id)copyWithZone:(NSZone *)zone { \
    return instance;    \
}   \
- (oneway void)release {}   \
- (instancetype) retain {return instance;}  \
- (instancetype) autorelease {return instance;} \
- (NSUInteger) retainCount {return ULONG_MAX;}
#endif
#endif
