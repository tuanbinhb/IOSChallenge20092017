//
//  BaseTabBarController.h
//  IOSChallenge29092017
//
//  Created by Macbook  on 10/4/17.
//  Copyright © 2017 tuanbinh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TBTabBarView.h"
@interface TBBaseTabBarController : UITabBarController<TBTabBarDelegate>

@property (nonatomic, weak) TBTabBarView *rootTab;

-(void)initTabBar;
-(void)setSelectTabBarWithIndex:(int)tabIndex;

@end
