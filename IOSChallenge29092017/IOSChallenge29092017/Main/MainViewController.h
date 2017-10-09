//
//  MainViewController.h
//  IOSChallenge29092017
//
//  Created by Macbook  on 10/4/17.
//  Copyright © 2017 tuanbinh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TBBaseNavigationController.h"
#import "TBTabBarView.h"
#import "TBBaseTabBarController.h"

@interface MainViewController : UINavigationController

+ (MainViewController *) shareInstance;
+ (TBBaseNavigationController *) getRootNaviController;
- (TBTabBarView *) getTabbarView;
- (TBBaseTabBarController *) getRootTabbarController;

@end
