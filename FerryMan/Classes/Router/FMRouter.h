//
//  FMRouter.h
//  FerryMan
//
//  Created by Brooks on 2018/9/6.
//

#import <Foundation/Foundation.h>
#import "FMRouterModuleProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface FMRouter : NSObject


/**
 创建 router 单例

 @return 返回单例
 */
+ (nonnull instancetype)router;


/**
 注册路由模块

 @param module 即将注册的路由模块
 */
- (void)registerRouterModule:(nonnull id<FMRouterModuleProtocol>) module;


- (BOOL)routerURL:(nonnull NSString *)url withParameter:(nullable NSDictionary *)parameter;

@end

NS_ASSUME_NONNULL_END
