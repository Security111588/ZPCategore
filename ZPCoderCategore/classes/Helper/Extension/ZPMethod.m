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

#import "ZPMethod.h"
#import "ZPConst.h"

@implementation ZPMethod

/**
 *  初始化
 *
 *  @param method    方法
 *  @param srcObject 哪个对象的方法
 *
 *  @return 初始化好的对象
 */
- (instancetype)initWithMethod:(Method)method srcObject:(id)srcObject
{
    if (self = [super initWithSrcObject:srcObject]) {
        self.method = method;
    }
    
    return self;
}

/**
 *  设置方法
 */
- (void)setMethod:(Method)method
{
    _method = method;
    
    ZPAssertParamNotNil(method);
    
    // 1.方法选择器
    _selector = method_getName(method);
    _name = NSStringFromSelector(self.selector);
    
    // 2.参数
    int step = 2;   // 跳过前面的两个参数
    int argsCount = method_getNumberOfArguments(method);
    NSMutableArray *args = [NSMutableArray arrayWithCapacity:argsCount];
    for (int i = step; i < argsCount; i++) {
        ZPArgument *arg = [[ZPArgument alloc] init];
        arg.index = i - step;
        char *argCode = method_copyArgumentType(method, i);
        arg.type = [NSString stringWithUTF8String:argCode];
        free(argCode);
        [args addObject:arg];
    }
    _arguments = args;
    
    // 3.返回值类型
    char *returnCode = method_copyReturnType(method);
    _returnType = [NSString stringWithUTF8String:returnCode];
    free(returnCode);
}
@end
