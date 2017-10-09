//
//  BaseNavigationController.m
//  IOSChallenge29092017
//
//  Created by Macbook  on 10/4/17.
//  Copyright © 2017 tuanbinh. All rights reserved.
//

#import "TBBaseNavigationController.h"

@interface TBBaseNavigationController ()

@end

@implementation TBBaseNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    navigationBar = [TBNavigationBarView newView];
    navigationBar.delegate = self;
    [self.view addSubview:navigationBar];
}

- (TBNavigationBarView *)getNavigationBar{
    return navigationBar;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) backPress:(id)sender{
    [self popViewControllerAnimated:TRUE];
}
@end
