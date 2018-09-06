//
//  FMServiceA1.m
//  FerryMan
//
//  Created by BrooksWon on 09/06/2018.
//  Copyright (c) 2018 BrooksWon. All rights reserved.
//

#import "FMServiceA1.h"
#import "FMModuleAProtocol.h"
#import "FerryMan.h"


@implementation FMServiceA1

- (id)getServiceA1Data
{
    NSLog(@"%@",NSStringFromSelector(_cmd));
    return NSStringFromClass([self class]);
}

//模块内分组件间的解耦
- (void)getServiceA2Data
{
   id<FMServiceA2Protocol> service = [FerryMan serviceForProtocol:@protocol(FMServiceA2Protocol)];
   [service getServiceA2Data];
}


@end
