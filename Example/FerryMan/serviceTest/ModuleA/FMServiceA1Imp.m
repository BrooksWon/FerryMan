//
//  FMServiceA1Imp.m
//  FerryMan
//
//  Created by BrooksWon on 09/06/2018.
//  Copyright (c) 2018 BrooksWon. All rights reserved.
//

#import "FMServiceA1Imp.h"
#import "FMServiceA1.h"
#import "FerryMan.h"

@implementation FMServiceA1Imp

+ (void)load
{
    @autoreleasepool {
        [FerryMan registerService:@protocol(FMServiceA1Protocol)  withImpl:self];
    }
}


- (id)getServiceA1Data
{
    FMServiceA1 *service = [[FMServiceA1 alloc] init];
    return service.getServiceA1Data;
}

@end
