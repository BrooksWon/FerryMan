//
//  FMServiceAModule.m
//  FerryMan
//
//  Created by BrooksWon on 09/06/2018.
//  Copyright (c) 2018 BrooksWon. All rights reserved.
//

#import "FMServiceAModule.h"
#import "FMModuleAProtocol.h"
#import "FerryMan.h"

@implementation FMServiceAModule

+ (void)load
{
    @autoreleasepool {
         [FerryMan registerService:@protocol(FMModuleAProtocol) withImpl:self];
    }
}

- (id)getServiceA1Data;
{
    id <FMServiceA1Protocol> service =  [FerryMan serviceForProtocol:@protocol(FMServiceA1Protocol)];
    return service.getServiceA1Data;
}

- (id)getServiceA2Data;
{
    id <FMServiceA2Protocol> service =  [FerryMan serviceForProtocol:@protocol(FMServiceA2Protocol)];
    return service.getServiceA2Data;
}

@end
