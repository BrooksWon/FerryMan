//
//  FMServiceB1.m
//  FerryMan_Example
//
//  Created by joy_yu on 2018/4/11.
//  Copyright © 2018年 joy_yu. All rights reserved.
//

#import "FMServiceB1.h"
#import "FMServiceB2.h"

@implementation FMServiceB1

- (id)getServiceB1Data;
{
    NSLog(@"%@",NSStringFromSelector(_cmd));
    return NSStringFromClass([self class]);
}

//模块内不需区分详细,无组件概念，模块内的服务之间直接引用
- (void)getServiceB2Data
{
    FMServiceB2 *service = [[FMServiceB2 alloc] init];
    [service getServiceB2Data];
}

@end
