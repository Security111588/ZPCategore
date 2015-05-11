/*******************************************************************************
 Copyright (C), 2013-2015, ZP
 File name: AppDelegate.h
 Author: Joy (曾 平)
 E-mail: joykerl@yahoo.com
 Description:
 系统默认启动文件
 History:
 2015-05-11
 Copyright information:
 Copyright (c) 2015年 ZP. All rights reserved.
 ********************************************************************************/

#import "AppDelegate.h"
#import "UIWindow+ZPAddition.h"


@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
//    // 0.注册设置应用程序图标提醒数字的权限
//    UIUserNotificationType type = UIUserNotificationTypeBadge | UIUserNotificationTypeAlert | UIUserNotificationTypeSound;
//    
//    UIUserNotificationSettings *settings = [UIUserNotificationSettings settingsForTypes:type categories:nil];
//    
//    [[UIApplication sharedApplication] registerUserNotificationSettings:settings];
//    
    
    _window = [[UIWindow alloc] initWithFrame:APPLICATIONFRAME];
    [_window makeKeyAndVisible];
//    ZPAccount *account = [ZPAccount accountUnarchiverFromSandbox];
//    if (account != nil) {
        // 判断显示欢迎页面还是新特性
        [_window chooseRootViewController];
//  
//    } else {
//        
        UIStoryboard *sb = [UIStoryboard storyboardWithName:@"MainTabBarController" bundle:nil];
        UIViewController *vc = sb.instantiateInitialViewController;
        self.window.rootViewController = vc;
//    }
    
//    UIWindow *window = [UIApplication sharedApplication].keyWindow;
//
//    window.rootViewController = [[ZPMainTabBarController alloc] init];
    
//    // 日志框架全局定义
//    // Standard lumberjack initialization
//    [DDLog addLogger:[DDTTYLogger sharedInstance]];
//    // And we also enable colors
//    [[DDTTYLogger sharedInstance] setColorsEnabled:YES];

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {

    [application beginBackgroundTaskWithExpirationHandler:nil];
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (void)applicationDidReceiveMemoryWarning:(UIApplication *)application
{
//    // 注意: 只要使用SDWebImage就必须做这件事情
//    // 1.停止所有下载
//    [[SDWebImageManager sharedManager] cancelAll];
//    
//    // 2.清空内存缓存
//    [[SDImageCache sharedImageCache] clearMemory];
}



@end
