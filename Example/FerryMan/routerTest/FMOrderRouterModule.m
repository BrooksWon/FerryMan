//
//  FMViewController.m
//  FerryMan
//
//  Created by BrooksWon on 09/06/2018.
//  Copyright (c) 2018 BrooksWon. All rights reserved.
//

#import "FMOrderRouterModule.h"
#import "FMOrderListViewController.h"
#import "FMOrderDetailViewController.h"
#import "FerryMan.h"

@implementation FMOrderRouterModule

+(void)load
{
    @autoreleasepool{
         [FerryMan registerRouterModule: [[self alloc] init]];
    }
}

-(BOOL)canRouteModule:(NSString *)urlString
{
    NSArray *pairs = [urlString componentsSeparatedByString:@"/"];
    NSString *moduleName = pairs.firstObject;
    if ([moduleName isEqualToString:@"Order"])
    {
        return YES;
    }
    return NO;
}

- (nullable id)routerURL:(NSString *)urlString params:(NSDictionary *)params
{
    NSURL *url = [NSURL URLWithString:urlString];
    NSLog(@"router parameter:%@",params);
    if (![self canRouteModule:urlString])
    {
        return nil;
    }
    if ([url.path isEqualToString:@"Order/orderList"])
    {
        FMOrderListViewController *orderListVc = [[FMOrderListViewController alloc] init];
        orderListVc.finishBlock = params[@"finishBlock"];
        [(UINavigationController *)[UIApplication sharedApplication].keyWindow.rootViewController pushViewController:orderListVc animated:YES];
    }
    else if ([url.path isEqualToString:@"Order/orderDetail"])
    {
        FMOrderDetailViewController *orderDetailVc = [[FMOrderDetailViewController alloc] init];
         [(UINavigationController *)[UIApplication sharedApplication].keyWindow.rootViewController pushViewController:orderDetailVc animated:YES];
    }
    return nil;
}



@end
