//
//  EP_AppStorePay.h
//  EPSDK
//
//  Created by 火星人 on 2021/12/16.
//

#import <Foundation/Foundation.h>
#import <StoreKit/StoreKit.h>
#import "EPPayData.h"
#import <UIKit/UIKit.h>
NS_ASSUME_NONNULL_BEGIN


typedef void(^purchasedNonConsumableBlock)(NSArray *purchasedNonConsumableArray);

@interface EP_AppStorePay : NSObject <SKProductsRequestDelegate, SKPaymentTransactionObserver>
@property (nonatomic,strong) purchasedNonConsumableBlock  purchasedNonConsumableArray;

+(EP_AppStorePay*) sharedInstance;

-(void)initPay;

-(void)checkUnFinishedOrders;

-(void)pay:(EPPayData*)payData orderID:(NSString*)orderID viewController:(UIViewController*)viewController;

@end

NS_ASSUME_NONNULL_END
