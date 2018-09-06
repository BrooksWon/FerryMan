//
//  FMViewController.m
//  FerryMan
//
//  Created by BrooksWon on 09/06/2018.
//  Copyright (c) 2018 BrooksWon. All rights reserved.
//

#import "FMOrderListViewController.h"

@interface FMOrderListViewController ()

@end

@implementation FMOrderListViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)doneAction:(id)sender
{
    self.finishBlock? self.finishBlock() : nil;
    [self.navigationController popViewControllerAnimated:YES];
}

@end
