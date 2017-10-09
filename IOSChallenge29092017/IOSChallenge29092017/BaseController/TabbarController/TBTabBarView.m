//
//  TBTabBarView.m
//  IOSChallenge29092017
//
//  Created by Macbook  on 10/5/17.
//  Copyright © 2017 tuanbinh. All rights reserved.
//

#import "TBTabBarView.h"

@interface TBTabBarView ()

@end

@implementation TBTabBarView

+ (TBTabBarView*) newInstance{
    UIViewController *controller = [[UIViewController alloc] initWithNibName:[[self class] nibName] bundle:[NSBundle mainBundle]];
    TBTabBarView *newView = (TBTabBarView*)controller.view;
    [newView setFrame:CGRectMake(0, 0, [[UIScreen mainScreen] bounds].size.width, 50)];
    [newView initView];
    return newView;
}

- (void) initView{
    [_contentView setFrame:CGRectMake(0, 2, [[UIScreen mainScreen] bounds].size.width, 48)];
}

- (IBAction)selectedButton:(id)sender {
    UIButton *bt = (UIButton *)sender;
    if([self.delegate respondsToSelector:@selector(tabBar:selectTabIndex:)]){
        [self.delegate tabBar:sender selectTabIndex:(int)bt.tag];
        [self setSelectedButton:bt];
    }
}

+(NSString *)nibName{
    return NSStringFromClass([self class]);
}

- (void)setSelectedButton:(UIButton *)button{
    [self deselectedButton:selectedBtn];
    switch (button.tag) {
        case 0:{
            [_btnFeed setSelected:YES];
            [_imgFeed setImage:[UIImage imageNamed:@"icon-feed-hl.png"]];
            selectedBtn = _btnFeed;
            break;
        }
        case 1:{
            [_btnFriend setSelected:YES];
            [_imgFriend setImage:[UIImage imageNamed:@"icon-friend-hl.png"]];
            selectedBtn = _btnFriend;
            break;
        }
        case 2:{
            [_btnNotice setSelected:YES];
            [_imgNotice setImage:[UIImage imageNamed:@"icon-notice-hl.png"]];
            selectedBtn = _btnNotice;
            break;
        }
        case 3:{
            [_btnMore setSelected:YES];
            [_imgMore setImage:[UIImage imageNamed:@"icon-more-hl.png"]];
            selectedBtn = _btnMore;
            break;
        }
        default:
            break;
    }
}

- (void)deselectedButton:(UIButton *)button{
    switch (button.tag) {
        case 0:
            [_imgFeed setImage:[UIImage imageNamed:@"icon-feed.png"]];
            [_btnFeed setSelected:NO];
            break;
        case 1:
            [_imgFriend setImage:[UIImage imageNamed:@"icon-friend.png"]];
            [_btnFriend setSelected:NO];
            break;
        case 2:
            [_imgNotice setImage:[UIImage imageNamed:@"icon-notice.png"]];
            [_btnNotice setSelected:NO];
            break;
        case 3:
            [_imgMore setImage:[UIImage imageNamed:@"icon-more.png"]];
            [_btnMore setSelected:NO];
            break;
        default:
            break;
    }
}

- (void)setSelectedTaBar:(int)index{
    switch (index) {
        case 0:
            [self setSelectedButton:_btnFeed];
            break;
        case 1:
            [self setSelectedButton:_btnFriend];
            break;
        case 2:
            [self setSelectedButton:_btnNotice];
            break;
        case 3:
            [self setSelectedButton:_btnMore];
            break;
        default:
            break;
    }
}

- (void)deselectedTabBar{
    [self deselectedButton:selectedBtn];
}
@end
