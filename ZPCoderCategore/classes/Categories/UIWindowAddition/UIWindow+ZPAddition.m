/*******************************************************************************
 Copyright (C), 2013-2015, ZP
 File name: UIWindow+ZPAddition.h
 Author: Joy (曾 平)
 E-mail: joykerl@yahoo.com
 Description:
 分类扩展
 History:
 2015-05-11
 Copyright information:
 Copyright (c) 2015年 ZP. All rights reserved.
 ********************************************************************************/

#import "UIWindow+ZPAddition.h"

@implementation UIWindow (ZPAddition)

- (void)chooseRootViewController
{
    // 日志框架全局定义
//    // Standard lumberjack initialization
//    [DDLog addLogger:[DDTTYLogger sharedInstance]];
//    // And we also enable colors
//    [[DDTTYLogger sharedInstance] setColorsEnabled:YES];

    // 判断是否显示新特性
    NSString *currentVersion = [NSBundle mainBundle].infoDictionary[@"CFBundleShortVersionString"];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    NSString *localVersion = [defaults objectForKey:@"CFBundleShortVersionString"];
    
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    if ([currentVersion compare:localVersion] == NSOrderedDescending) {
//        ZPNewFeatureViewController *newFeatureVC = [[ZPNewFeatureViewController alloc] init];
//        window.rootViewController = newFeatureVC;
        
        [defaults setObject:currentVersion forKey:@"CFBundleShortVersionString"];
        [defaults synchronize];
    } else {
        UIStoryboard *sb = [UIStoryboard storyboardWithName:@"MainTabBarController" bundle:nil];
        UIViewController *welComeVc = sb.instantiateInitialViewController;
        window.rootViewController = welComeVc;
    }
}

@end
