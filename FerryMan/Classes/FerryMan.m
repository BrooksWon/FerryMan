//
//  FerryMan.m
//  FerryMan
//
//  Created by Brooks on 2018/9/6.
//

#import "FerryMan.h"
#import "FMRouter.h"

@implementation FerryMan

@end

@implementation FerryMan(Router)

+ (void)registerRouterModule:(id<FMRouterModuleProtocol>)module
{
    [[FMRouter router] registerRouterModule:module];
}

+ (void)routerURL:(nonnull NSString *)urlString withParameter:(nullable NSDictionary *)parameter
{
    [[FMRouter router] routerURL:urlString withParameter:parameter];
}

@end

@implementation FerryMan(Service)

+ (void)registerService:(Protocol *)proto withImpl:(Class)implClass
{
    [[FMServiceManager sharedManager] registerService:proto withImpl:implClass];
}

+ (id)serviceForProtocol:(Protocol *)serviceProtocol
{
    return [[FMServiceManager sharedManager] serviceForProtocol:serviceProtocol];
}

@end
