//
//  MMAd.h
//  miaomiao
//
//  Created by shibin on 2019/8/25.
//  Copyright © 2019年 JiuJiu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface QuQu : NSObject
+ (instancetype)sharedInstance;
/*
 以下参数请咨询对接人员
 version： 当前版本号 比如 29
 launchOptions：applegate中的launchOptions
 channel：渠道版本号 比如 11.3.0
 jpush： 极光推送key
 wxAppid：微信appid
 wxSecret： 微信秘钥
 QQAppid： QQ Appid
 QQSecret： QQ秘钥
 UMAppkey： 友盟的key
 authKey: 阿里云短信key
 */
- (void)launch:(NSInteger)version options:(NSDictionary *)launchOptions channel:(NSString *)channel jpush:(NSString *)jpush wxAppid:(NSString *)wxAppid wxSecret:(NSString *)wxSecret QQAppid:(NSString *)QQAppid QQSecret:(NSString *)QQSecret UMAppkey:(NSString *)UMAppkey authKey:(NSString *)authKey reject:(void (^)(void))reject;

- (BOOL)link:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey, id> *)options;

- (BOOL)userActivity:(NSUserActivity *)userActivity;
@end


