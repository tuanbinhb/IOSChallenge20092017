//
//  TBBaseViewController.h
//  IOSChallenge29092017
//
//  Created by Macbook  on 10/4/17.
//  Copyright © 2017 tuanbinh. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum{
    NavigationBarWithSeach,
    NavigationBarWithBack,
}NavigationBarType;

@interface TBBaseViewController : UIViewController

- (id)initUsingNib;
+ (NSString *)nibName;
+ (id)initialVCWithName:(NSString *)name identifier: (NSString *)storyboardId;
+ (UIStoryboard *)loginStoryboard;
+ (UIStoryboard *)mainStoryboard;
- (void)showAlertWithTitle:(NSString *)title withMessage:(NSString*)message;

- (void)initNavigationBarView;
- (void)initNavigationBarViewWithType:(NavigationBarType)type;
+ (id)initViewController;
@end
