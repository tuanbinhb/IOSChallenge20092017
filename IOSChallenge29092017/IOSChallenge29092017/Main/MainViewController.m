//
//  MainViewController.m
//  IOSChallenge29092017
//
//  Created by Macbook  on 10/4/17.
//  Copyright © 2017 tuanbinh. All rights reserved.
//

#import "MainViewController.h"
#import "FeedViewController.h"
#import "FriendViewController.h"
#import "NoticeViewController.h"
#import "MoreViewController.h"


@interface MainViewController ()

@end

@implementation MainViewController


+ (MainViewController *) shareInstance{
    static MainViewController *mainController = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        FeedViewController *feedController = [[FeedViewController alloc] initUsingNib];
        TBBaseNavigationController *navFeed = [[TBBaseNavigationController alloc] initWithRootViewController:feedController];
        
        FriendViewController *friendController = [[FriendViewController alloc] initUsingNib];
        TBBaseNavigationController *navFriend = [[TBBaseNavigationController alloc] initWithRootViewController:friendController];
        
        NoticeViewController *noticeController = [[NoticeViewController alloc] initUsingNib];
        TBBaseNavigationController *navnotice = [[TBBaseNavigationController alloc] initWithRootViewController:noticeController];
        
        MoreViewController *moreController = [[MoreViewController alloc] initUsingNib];
        TBBaseNavigationController *navMore = [[TBBaseNavigationController alloc] initWithRootViewController:moreController];
        
        TBBaseTabBarController *tabbar = [[TBBaseTabBarController alloc] init];
        tabbar.viewControllers = [[NSArray alloc] initWithObjects:navFeed, navFriend, navnotice, navMore, nil];
        mainController = [[MainViewController alloc] initWithRootViewController:tabbar];
        [mainController setNavigationBarHidden:TRUE];
    });
    return mainController;
}

+ (TBBaseNavigationController *) getRootNaviController{
    id rootNavi =  [[((TBBaseTabBarController *)[MainViewController shareInstance].viewControllers[0]) viewControllers] objectAtIndex:[((TBBaseTabBarController *)[MainViewController shareInstance].viewControllers[0]) selectedIndex]];
    if(rootNavi && [rootNavi isKindOfClass:[TBBaseNavigationController class]]){
        return rootNavi;
    }
    return nil;

}

- (TBTabBarView *) getTabbarView{
    TBBaseTabBarController *tabbar = (TBBaseTabBarController *)[[MainViewController shareInstance] topViewController];
    return tabbar.rootTab;
}

- (TBBaseTabBarController *) getRootTabbarController{
    return (TBBaseTabBarController *)[[MainViewController shareInstance] topViewController];
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
