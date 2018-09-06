//
//  FMServiceManager.h
//  FerryMan
//
//  Created by Brooks on 2018/9/6.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol FMService <NSObject>
@end

@interface FMServiceManager : NSObject

+ (instancetype)sharedManager;

@end

@interface FMServiceManager(Service)
- (void)registerService:(Protocol *)proto withImpl:(Class)implClass;
- (__nullable id)serviceForProtocol:(Protocol *)serviceProtocol;

@end

NS_ASSUME_NONNULL_END
