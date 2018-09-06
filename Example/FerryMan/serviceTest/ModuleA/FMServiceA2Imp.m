//
//  FMServiceA2Imp.m
//  FerryMan
//
//  Created by BrooksWon on 09/06/2018.
//  Copyright (c) 2018 BrooksWon. All rights reserved.
//

#import "FMServiceA2Imp.h"
#import "FMServiceA2.h"
#import "FerryMan.h"

@implementation FMServiceA2Imp

+ (void)load
{
    @autoreleasepool {
        [FerryMan registerService:@protocol(FMServiceA2Protocol)  withImpl:self];
    }
}


- (id)getServiceA2Data
{
    FMServiceA2 *service = [[FMServiceA2 alloc] init];
    return service.getServiceA2Data;
}

@end
