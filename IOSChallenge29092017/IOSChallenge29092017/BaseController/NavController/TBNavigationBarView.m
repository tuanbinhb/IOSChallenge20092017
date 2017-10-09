//
//  TBNavigationBarView.m
//  IOSChallenge29092017
//
//  Created by Macbook  on 10/6/17.
//  Copyright © 2017 tuanbinh. All rights reserved.
//

#import "TBNavigationBarView.h"

@interface TBNavigationBarView ()

@end

@implementation TBNavigationBarView

+ (TBNavigationBarView *) newView{
    UIViewController *controller = [[UIViewController alloc] initWithNibName:[[self class] nibName] bundle:[NSBundle mainBundle]];
    TBNavigationBarView *barView = (TBNavigationBarView *)controller.view;
    [barView setFrame:CGRectMake(0, 0,[UIScreen mainScreen].bounds.size.width, 65)];
    return barView;
}

+(NSString *)nibName{
    return NSStringFromClass([self class]);
}
@end
