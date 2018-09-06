//
//  FMServiceManager.m
//  FerryMan
//
//  Created by Brooks on 2018/9/6.
//

#import "FMServiceManager.h"

static NSMutableDictionary <NSString *, Class <FMService> > *serviceClasssNameMap = nil;

@implementation FMServiceManager

+ (instancetype)sharedManager
{
    static FMServiceManager *manager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[self alloc] init];
    });
    return manager;
}

#pragma mark - service

- (void)registerService:(Protocol *)proto withImpl:(Class)implClass
{
    NSParameterAssert(proto != nil);
    NSParameterAssert(implClass != nil);
    if (![implClass conformsToProtocol:proto])
    {
        @throw [NSException exceptionWithName:NSInternalInconsistencyException reason:[NSString stringWithFormat:@"%@ 服务不符合 %@ 协议", NSStringFromClass(implClass), NSStringFromProtocol(proto)] userInfo:nil];
    }
    
    if ([serviceClasssNameMap objectForKey:NSStringFromProtocol(proto)])
    {
        @throw [NSException exceptionWithName:NSInternalInconsistencyException reason:[NSString stringWithFormat:@"%@ 协议已经注册", NSStringFromProtocol(proto)] userInfo:nil];
    }
    
    @synchronized(serviceClasssNameMap)
    {
        if (serviceClasssNameMap == nil)
        {
            serviceClasssNameMap = [[NSMutableDictionary alloc] initWithCapacity:1];
        }
        
        NSString *protoName = NSStringFromProtocol(proto);
        if ([serviceClasssNameMap objectForKey:protoName] == nil)
        {
            [serviceClasssNameMap setObject:implClass forKey:protoName];
        }
    }
}

- (id)serviceForProtocol:(Protocol *)serviceProtocol
{
    return [self findServiceByName:NSStringFromProtocol(serviceProtocol)];
}

- (id)findServiceByName:(NSString *)name
{
    Class cls = [serviceClasssNameMap objectForKey:name];
    if (cls)
    {
        return [[cls alloc] init];
    }
    return nil;
}

@end
