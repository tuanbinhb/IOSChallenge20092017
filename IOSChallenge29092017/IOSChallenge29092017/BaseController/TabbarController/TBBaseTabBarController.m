//
//  BaseTabBarController.m
//  IOSChallenge29092017
//
//  Created by Macbook  on 10/4/17.
//  Copyright © 2017 tuanbinh. All rights reserved.
//

#import "TBBaseTabBarController.h"

@interface TBBaseTabBarController ()

@end

@implementation TBBaseTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self initTabBar];
}

-(void)initTabBar{
    if(!_rootTab){
        _rootTab = [TBTabBarView newInstance];
        _rootTab.delegate = self;
        [_rootTab setFrame:CGRectMake(0, [[UIScreen mainScreen] bounds].size.height - _rootTab.frame.size.height, [[UIScreen mainScreen] bounds].size.width, _rootTab.frame.size.height)];
        _rootTab.backgroundColor = [UIColor blackColor];
        [self.view addSubview:_rootTab];
        [self.view bringSubviewToFront:_rootTab];
        [_rootTab setSelectedTaBar:(int)self.selectedIndex];
    }
}
-(void)setSelectTabBarWithIndex:(int)tabIndex{
    self.selectedIndex = tabIndex;
}

- (void)tabBar:(id)sender selectTabIndex:(int)tabIndex{
    [self setSelectTabBarWithIndex:tabIndex];
}
@end
