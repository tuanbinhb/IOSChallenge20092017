//
//  TBTabBarView.h
//  IOSChallenge29092017
//
//  Created by Macbook  on 10/5/17.
//  Copyright © 2017 tuanbinh. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TBTabBarDelegate <NSObject>

- (void)tabBar:(id)sender selectTabIndex:(int)tabIndex;

@end


@interface TBTabBarView : UIView{
    UIButton *selectedBtn;
    __weak IBOutlet UIButton *_btnFeed;
    __weak IBOutlet UIButton *_btnFriend;
    __weak IBOutlet UIButton *_btnNotice;
    __weak IBOutlet UIButton *_btnMore;
    __weak IBOutlet UIButton *_btnNoticeBubble;
    __weak IBOutlet UIImageView *_imgFeed;
    __weak IBOutlet UIImageView *_imgFriend;
    __weak IBOutlet UIImageView *_imgNotice;
    __weak IBOutlet UIImageView *_imgMore;
    __weak IBOutlet UIView *_contentView;
}

@property (nonatomic, assign) id<TBTabBarDelegate> delegate;

+ (TBTabBarView *) newInstance;
- (void)initView;
- (void)setSelectedButton:(UIButton *)button;
- (void)deselectedButton:(UIButton *)button;
- (void)setSelectedTaBar:(int)index;
- (void)deselectedTabBar;
@end
