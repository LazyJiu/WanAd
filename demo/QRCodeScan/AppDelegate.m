//
//  AppDelegate.m
//  QRCodeScan
//
//  Created by 李雪阳 on 2018/9/3.
//  Copyright © 2018年 singularity. All rights reserved.
//

#import "AppDelegate.h"
#import "QuQu.h"
#import "JPUSHService.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    self.window.backgroundColor = [UIColor whiteColor];
    self.window.rootViewController = [UIViewController new];
    [self.window makeKeyAndVisible];


    [[QuQu sharedInstance] launch:29
                          options:launchOptions
                          channel:@"11.5.0"
                            jpush:@"44fb5cc0010b8835e3de7ba2"
                          wxAppid:@"wxbd2ae4133e395dcb"
                         wxSecret:@"295a38e21cb35cd8585c0e6855338883"
                          QQAppid:@"101846109"
                         QQSecret:@"a857e8904046ebc8c98c999afd5d7fa0"
                         UMAppkey:@"5e6724cf167eddb7cc000172"
                          authKey:@"ZpopSPj2rNlNslHDEJjwAZZczjMSWdLxwBOYh9vpetK28RYbakZXTt1G/hLQsAB2/MCeRC4qIM3KAANtkaK77Dkn6OeEiGF1oCATKYe6UMgghxqpBkmTQJLX1EsGjWTd41QVC3m7w/kRMpdGf7eDhJ6jY0XHjZLNP83Kqubb3x5OwNvqLtCXl2TTy7DlsbXtkmJyA77lnxjMWOJHsFWtMAeQsmJdD2b89s5YSnJkY/k="
                           reject:^{
        self.window.rootViewController = [UIStoryboard storyboardWithName:@"Main" bundle:nil].instantiateInitialViewController;
    }];


    return YES;
}

- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey, id> *)options {
    return [[QuQu sharedInstance] link:url options:options];
}

- (BOOL)application:(UIApplication *)application continueUserActivity:(NSUserActivity *)userActivity restorationHandler:(void (^)(NSArray<id<UIUserActivityRestoring>> * _Nullable))restorationHandler {

    return [[QuQu sharedInstance] userActivity:userActivity];
}

//注册DeviceToken
- (void)application:(UIApplication *)application
didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken {
    /// Required - 注册 DeviceToken
    [JPUSHService registerDeviceToken:deviceToken];
}


@end
