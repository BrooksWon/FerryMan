//
//  FerryMan.h
//  FerryMan
//
//  Created by Brooks on 2018/9/6.
//

#import <Foundation/Foundation.h>
#import "FMRouterModuleProtocol.h"
#import "FMServiceManager.h"

NS_ASSUME_NONNULL_BEGIN

@interface FerryMan : NSObject

@end

@interface FerryMan(Router)

+ (void)registerRouterModule:(nonnull id<FMRouterModuleProtocol>)module;

+ (void)routerURL:(nonnull NSString *)urlString withParameter:(nullable NSDictionary *)parameter;

@end

@interface FerryMan(Service)

+ (void)registerService:(nonnull Protocol *)proto withImpl:(nonnull Class)implClass;

+ (nullable id)serviceForProtocol:(nonnull Protocol *)serviceProtocol;

@end

NS_ASSUME_NONNULL_END

