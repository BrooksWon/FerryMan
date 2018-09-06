//
//  FMRouterModule.m
//  FerryMan
//
//  Created by Brooks on 2018/9/6.
//

#import "FMRouterModule.h"

@implementation FMRouterModule

+(void)load
{
    @autoreleasepool{
        // [FerryMan registerRouterModule: [[self alloc] init]];
    }
}

-(BOOL)canRouteModule:(NSString *)urlString
{
    NSArray *pairs = [urlString componentsSeparatedByString:@"/"];
    NSString *moduleName = pairs.firstObject;
    if ([moduleName isEqualToString:@"xxx"])
    {
        return YES;
    }
    return NO;
}

- (nullable id)routerURL:(nonnull NSString *)urlString params:(NSDictionary *)params
{
    if (![self canRouteModule:urlString])
    {
        return nil;
    }
    if ([urlString isEqualToString:@""])
    {
        //push or present vc
    }
    else
    {
        //push or present vc
    }
    return nil;
}

@end
