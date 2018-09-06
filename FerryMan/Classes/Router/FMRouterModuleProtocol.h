//
//  FMRouterModuleProtocol.h
//  FerryMan
//
//  Created by Brooks on 2018/9/6.
//

#import <Foundation/Foundation.h>

@protocol FMRouterModuleProtocol <NSObject>

@optional


-(BOOL)canRouteModule:(nonnull NSString *)URL;

@required


- (nullable id)routerURL:(nonnull NSString *)URL params:(nullable NSDictionary *)params;

@end
