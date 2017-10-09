//
//  BaseNavigationController.h
//  IOSChallenge29092017
//
//  Created by Macbook  on 10/4/17.
//  Copyright © 2017 tuanbinh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TBNavigationBarView.h"
@interface TBBaseNavigationController : UINavigationController<TBNavigationbarViewDelegate>
{
    TBNavigationBarView *navigationBar;
}

- (TBNavigationBarView *) getNavigationBar;

@end
