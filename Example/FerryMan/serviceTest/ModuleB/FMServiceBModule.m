//
//  FMServiceBModule.m
//  FerryMan_Example
//
//  Created by joy_yu on 2018/4/10.
//  Copyright © 2018年 joy_yu. All rights reserved.
//

#import "FMServiceBModule.h"
#import "FMServiceB1.h"
#import "FMServiceB2.h"
#import "FerryMan.h"

@implementation FMServiceBModule

+ (void)load
{
    @autoreleasepool {
        [FerryMan registerService:@protocol(FMModuleBProtocol)  withImpl:self];
    }
}

- (id)getServiceB1Data;
{
    FMServiceB1 *service =  [[FMServiceB1 alloc] init];
    return service.getServiceB1Data;
}

- (id)getServiceB2Data;
{
    FMServiceB2 *service =  [[FMServiceB2 alloc] init];
    return service.getServiceB2Data;
}

@end
