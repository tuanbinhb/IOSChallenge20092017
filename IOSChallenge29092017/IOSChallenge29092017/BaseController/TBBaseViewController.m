//
//  TBBaseViewController.m
//  IOSChallenge29092017
//
//  Created by Macbook  on 10/4/17.
//  Copyright © 2017 tuanbinh. All rights reserved.
//

#import "TBBaseViewController.h"

@interface TBBaseViewController ()

@end

@implementation TBBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

-(id)initUsingNib {
    self = [super initWithNibName:[[self class] nibName] bundle:nil];
    if(self){
        
    }
    return self;
}

+ (NSString *)nibName {
    return NSStringFromClass([super class]);
}

+ (id)initialVCWithName:(NSString *)name identifier:(NSString *)storyboardId {
    UIStoryboard *storyboard = [UIStoryboard storyboardWithName:name bundle:nil];
    UIViewController *vc = nil;
    if(storyboardId == nil){
        vc = [storyboard instantiateViewControllerWithIdentifier:storyboardId];
    }else{
        vc = [storyboard instantiateInitialViewController];
    }
    return vc;
}

+ (UIStoryboard *)mainStoryboard {
    return [UIStoryboard storyboardWithName:@"Main" bundle:nil];
}

+ (UIStoryboard *)loginStoryboard {
    return [UIStoryboard storyboardWithName:@"Login" bundle:nil];
}

- (void)showAlertWithTitle:(NSString *)title withMessage:(NSString *)message {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:title message:message preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *okAction = [UIAlertAction
                               actionWithTitle:NSLocalizedString(@"OK", @"OK action")
                               style:UIAlertActionStyleDefault
                               handler:^(UIAlertAction *action)
                               {
                                   NSLog(@"OK action");
                               }];
    [alert addAction:okAction];
    
    [self presentViewController:alert animated:YES completion:nil];
}
- (void)initNavigationBarView {
    
}
- (void)initNavigationBarViewWithType:(NavigationBarType)type {
    
}

@end
