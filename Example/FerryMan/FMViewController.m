//
//  FMViewController.m
//  FerryMan
//
//  Created by BrooksWon on 09/06/2018.
//  Copyright (c) 2018 BrooksWon. All rights reserved.
//

#import "FMViewController.h"
#import "FerryMan.h"
#import "FMModuleAProtocol.h"
#import "FMModuleBProtocol.h"

@interface FMViewController ()

@end

@implementation FMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)routeAction:(id)sender
{
    
//      [FerryMan routerURL: @"Order/orderList" withParameter:@{@"orderID":@(12)}];
//        [FerryMan routerURL: @"Order/orderDetail" withParameter:@{@"orderTitle":@"shop"}];
        [FerryMan routerURL:[NSString stringWithFormat: @"Order/orderList?pageID=12&docName=%@",@"pp"] withParameter:@{@"orderID":@(12)}];
    
//    void(^finishBlock)() = ^void(){
//        NSLog(@"pop back and finishBlock to viewController");
//    };
//    [FerryMan routerURL: @"Order/orderList" withParameter:@{
//                                                              @"orderID":@(12),
//                                                              @"finishBlock":(finishBlock)
//                                                              }
//     ];
}

- (IBAction)serviceAction:(id)sender
{
    id <FMModuleAProtocol> service1 = [FerryMan serviceForProtocol:@protocol(FMModuleAProtocol)];
    [service1 getServiceA1Data];
    
    id <FMServiceA2Protocol> service2 = [FerryMan serviceForProtocol:@protocol(FMServiceA2Protocol)];
    [service2 getServiceA2Data];
    
    id <FMModuleBProtocol> service3 =  [FerryMan serviceForProtocol:@protocol(FMModuleBProtocol)];
    [service3 getServiceB1Data];
}


@end
