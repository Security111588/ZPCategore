/*******************************************************************************
 Copyright (C), 2013-2015, ZP
 File name: ZPFoundation.h
 Author: Joy (曾 平)
 E-mail: joykerl@yahoo.com
 Description:
 类框架
 History:
 2015-05-11
 Copyright information:
 Copyright (c) 2015年 ZP. All rights reserved.
 ********************************************************************************/

#import "ZPFoundation.h"
#import "ZPConst.h"

@implementation ZPFoundation

+ (void)initialize
{
    _foundationClasses =    @[@"NSArray",@"NSAutoreleasePool",@"NSBundle",@"NSByteOrder",@"NSCalendar",@"NSCharacterSet",@"NSCoder",@"NSData",@"NSDate",@"NSDateFormatter",@"NSDecimal",@"NSDecimalNumber",@"NSDictionary",@"NSEnumerator",@"NSError",@"NSException",@"NSFileHandle",@"NSFileManager",@"NSFormatter",@"NSHashTable",@"NSHTTPCookie",@"NSHTTPCookieStorage",@"NSIndexPath",@"NSIndexSet",@"NSInvocation",@"NSJSONSerialization",@"NSKeyValueCoding",@"NSKeyValueObserving",@"NSKeyedArchiver",@"NSLocale",@"NSLock",@"NSMapTable",@"NSMethodSignature",@"NSNotification",@"NSNotificationQueue",@"NSNull",@"NSNumberFormatter",@"NSObject",@"NSOperation",@"NSOrderedSet",@"NSOrthography",@"NSPathUtilities",@"NSPointerArray",@"NSPointerFunctions",@"NSPort",@"NSProcessInfo",@"NSPropertyList",@"NSProxy",@"NSRange",@"NSRegularExpression",@"NSRunLoop",@"NSScanner",@"NSSet",@"NSSortDescriptor",@"NSStream",@"NSString",@"NSTextCheckingResult",@"NSThread",@"NSTimeZone",@"NSTimer",@"NSURL",@"NSURLAuthenticationChallenge",@"NSURLCache",@"NSURLConnection",@"NSURLCredential",@"NSURLCredentialStorage",@"NSURLError",@"NSURLProtectionSpace",@"NSURLProtocol",@"NSURLRequest",@"NSURLResponse",@"NSUserDefaults",@"NSValue",@"NSValueTransformer",@"NSXMLParser",@"NSZone"];
}

+ (BOOL)isClassFromFoundation:(Class)class
{
    ZPAssertParamNotNil(class);
    return [_foundationClasses containsObject:NSStringFromClass(class)];
}

@end
