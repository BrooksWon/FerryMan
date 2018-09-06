//
//  FMServiceB2.m
//  FerryMan_Example
//
//  Created by joy_yu on 2018/4/11.
//  Copyright © 2018年 joy_yu. All rights reserved.
//

#import "FMServiceB2.h"

@implementation FMServiceB2

- (id)getServiceB2Data;
{
    NSLog(@"%@",NSStringFromSelector(_cmd));
    return NSStringFromClass([self class]);
}

@end
