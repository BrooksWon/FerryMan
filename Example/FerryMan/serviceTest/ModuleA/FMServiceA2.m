//
//  FMServiceA2.m
//  FerryMan
//
//  Created by BrooksWon on 09/06/2018.
//  Copyright (c) 2018 BrooksWon. All rights reserved.
//

#import "FMServiceA2.h"

@implementation FMServiceA2

- (id)getServiceA2Data;
{
    NSLog(@"%@",NSStringFromSelector(_cmd));
    return NSStringFromClass([self class]);
}

@end
