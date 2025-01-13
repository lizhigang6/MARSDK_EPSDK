//
//  EPPlatform.h
//  EPSDK
//
//  Created by 火星人 on 2021/12/7.
//
#import <UIKit/UIKit.h>
#import "EPPayData.h"
#import <Foundation/Foundation.h>
#import "EPGameExtraData.h"

//#define [EPPlatform sharedInstance] [EPPlatform sharedInstance]


//ESDK相关回调接口， 游戏层在初始化的时候， 传入该delegate
@protocol EPPlatformDelegate<NSObject>

-(void) OnInitSuccess;
-(void) OnInitFailed:(NSString*)msg;
-(void) OnLoginSuccess:(NSDictionary*)result;
-(void) OnLoginFailed:(NSString*)msg;
-(void) OnLogoutSuccess;
-(void) OnLogoutFailed:(NSString*)msg;
-(void) OnPaySuccess:(NSDictionary*)msg;
-(void) OnPayFailed:(NSDictionary*)msg;
@end

typedef NS_ENUM(NSInteger, ESDKStateCode)
{
    ES_NONE = 1,
    ES_INITING,
    ES_INITED,
    ES_LOGINING,
    ES_LOGINED
};

@interface EPPlatform : NSObject



@property id<EPPlatformDelegate> delegate;

+(EPPlatform*) sharedInstance;

-(void)showHint:(NSString*)msg;
-(void)initWithGameAppId:(NSString*)appId subMasterId:(NSString*)masterId delegate:(id<EPPlatformDelegate>)delegate;

-(void)login:(UIViewController*)viewController;

-(void)logout;
//是否登录
-(BOOL)isLogin;
-(void)submitGameData:(EPGameExtraData*)data;

-(void)pay:(EPPayData*)data viewController:(UIViewController*)viewController;

-(void)loginForPay:(EPPayData*)data viewController:(UIViewController*)viewController;

- (void)startRealName:(BOOL) force block:(void(^)(BOOL isRealName ,int age))block;

-(void)queryRealNameInfo:(void(^)(BOOL isRealName ,int age))block;

- (void)applicationDidBecomeActive:(UIApplication *)application;

- (void)applicationWillResignActive:(UIApplication *)application;

- (void)resumptionPurchases:(NSString *)productID;

@end

