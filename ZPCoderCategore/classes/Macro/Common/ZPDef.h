/*******************************************************************************
 Copyright (C), 2013-2015, ZP
 File name: ZPDef.h
 Author: Joy (曾 平)
 E-mail: joykerl@yahoo.com
 Description:
 自定义宏
 History:
 2015-05-11
 Copyright information:
 Copyright (c) 2015年 ZP. All rights reserved.
 ********************************************************************************/
//

#ifndef ZPAddition_ZPDef_h
#define ZPAddition_ZPDef_h

#define OFFSET_IOS7_OR_LATER (IOS7_OR_LATER?20:0)
#define APPLICATIONFRAME (IOS7_OR_LATER?[[UIScreen mainScreen] bounds]: [[UIScreen mainScreen] applicationFrame])

#define IOS7_OR_LATER   ( [[[UIDevice currentDevice] systemVersion] compare:@"7.0"] != NSOrderedAscending )
#define IOS8_OR_LATER   ( [[[UIDevice currentDevice] systemVersion] compare:@"8.0"] != NSOrderedAscending )
#define IOS6_OR_PRIOR   ( [[[UIDevice currentDevice] systemVersion] compare:@"6.9"] != NSOrderedDescending )
#define IOS6_OR_LATER   ( [[[UIDevice currentDevice] systemVersion] compare:@"6.0"] != NSOrderedAscending )
#define IOS6   ( [[[UIDevice currentDevice] systemVersion] rangeOfString:@"6."].length > 0 )


//判断是否为iphone5
#define iPhone5 ([UIScreen instancesRespondToSelector:@selector(currentMode)] ? CGSizeEqualToSize(CGSizeMake(640, 1136), [[UIScreen mainScreen] currentMode].size) : NO)

// RGB转换成UIColor
#define ZPColor(r, g, b) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:1.0]
#define ZPColorRGBA(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]

// 随机色
#define ZPRandomColor ZPColor(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256))
//十六进制转换成UIColor
#define ZPHex2Rgb(hexValue) [UIColor colorWithRed:((hexValue & 0xFF0000) >> 16)/255.0 green:((hexValue & 0xFF00) >> 8)/255.0 blue:((hexValue & 0xFF))/255.0 alpha:1.0]

#define ZPAngle2Rotation(angle)    (((angle) / 180.0) * M_PI)


#endif


